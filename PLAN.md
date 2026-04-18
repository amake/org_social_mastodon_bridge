# Org Social -> Mastodon Bridge Plan

## Goals

Build a Dart program that:

- fetches an Org Social feed over HTTP
- parses it with the `org_parser` package
- detects posts that have not yet been mirrored to Mastodon
- posts them to a configured Mastodon account
- records enough state to make repeated executions idempotent
- runs both locally and in AWS Lambda on a periodic schedule

The implementation should also include Makefile-based tooling similar to
`../video2pod` and `../succulents_reminders`.

## Constraints And Inputs

- This repo is currently an empty Dart CLI scaffold.
- The Org parser should come from the published package (https://pub.dev/packages/org_parser)
  - But source code is available locally at `../org_parser`. If changes are
    needed in the parser or AST then we can temporarily use the local package.
- Mastodon API access should be generated from the published Mastodon OpenAPI
  spec using `openapi_generator`.
- The runtime will be cron-like: each invocation should do one sync pass and
  exit cleanly.
- Secrets must live outside version control.

From the current docs:

- `openapi_generator` requires Java during code generation and downloads the
  generator jar on first use.
- The published Mastodon OpenAPI docs currently advertise API version `4.5.0`.

## Proposed Architecture

### 1. Package Structure

Replace the sample package layout with something like:

- `bin/org_social_mastodon_bridge.dart`
  CLI entrypoint for local/manual execution.
- `bin/generate_client.dart` or annotated config in `lib/`
  OpenAPI generation entrypoint/config.
- `lib/src/config/`
  config loading and validation.
- `lib/src/org_social/`
  feed fetching, parsing, and extraction of post records.
- `lib/src/mastodon/`
  wrapper around the generated Mastodon client.
- `lib/src/state/`
  sync state model and persistence abstraction.
- `lib/src/sync/`
  orchestration logic for one sync run.
- `lib/src/lambda/`
  Lambda handler adapter if a dedicated runtime entrypoint is needed.
- `test/`
  parser, selection, idempotency, and API wrapper tests.
- `tool/` or generated package directory
  generated Mastodon API client and generation config.

### 2. Config Model

Use a secret local config file, likely `config.json` or `config.yaml`.

Planned config fields:

- Org Social source
  - `feed_url`
- Mastodon target
  - `base_url`
  - `access_token`
  - optional `visibility`
  - optional `language`
- Sync behavior
  - `dry_run`
  - `max_posts_per_run`
  - optional `since_lookback`
- State backend
  - local file path for development
  - S3 bucket/key for Lambda deployment
- Lambda/deployment settings
  - function name
  - ECR image tag or ZIP deployment settings

Plan:

- commit a redacted `config.*.example`
- ignore real config/state files in `.gitignore`
- allow env vars to override secret fields for Lambda if that ends up cleaner

### 3. Org Social Parsing

Implement an internal normalized post model rather than coupling the sync logic
directly to raw Org AST nodes.

The parser layer should:

- download the configured Org Social file
- parse it with `org_parser`
- identify top-level post entries under the posts section
- extract a stable source identifier for each post
- render post body text into Mastodon-safe plain text
- preserve source metadata needed for links, timestamps, and dedupe

Open question to resolve during implementation:

- which Org Social field is the best stable ID for mirrored posts

Preferred rule:

- use an explicit Org Social post identifier if the format defines one
- otherwise derive a deterministic source ID from feed URL + headline timestamp
  or canonical post content metadata

That source ID becomes the bridge's idempotency key.

### 4. Idempotency And State

Idempotency is the core requirement, so state should be explicit and simple.

State record shape:

- source post ID
- source timestamp if available
- Mastodon status ID
- bridge version or checksum if useful
- posted-at timestamp

Persistence strategy:

- local mode: JSON state file in the repo or a configurable writable path
- Lambda mode: state file stored in S3

Sync algorithm:

1. Load config.
2. Load prior state.
3. Fetch and parse source feed.
4. Determine candidate posts in chronological order.
5. Filter out any source post IDs already present in state.
6. Post remaining items to Mastodon.
7. Persist updated state only after each successful post or in an atomic batch.

Preferred implementation:

- update state incrementally after each successful post to reduce duplicate posts
  if the run aborts midway

### 5. Mastodon Client Generation

Use `openapi_generator` against the published Mastodon spec.

Plan:

- add `openapi_generator_annotations` as a runtime dependency
- add `openapi_generator`, `build_runner`, and any generator requirements as dev
  dependencies
- define a checked-in generator config class using `RemoteSpec(...)`
- generate the client into a dedicated directory committed to the repo
- wrap the generated code behind a thin handwritten adapter so the rest of the
  app is insulated from generator churn

Expected Mastodon operations needed initially:

- create status
- optionally verify account credentials for startup validation

If the generated client proves awkward for multipart or auth handling:

- keep the generated package as required by the design
- contain any fixes or handwritten shims inside the adapter layer
- preserve generator reproducibility with `.openapi-generator-ignore` if manual
  patches are required

### 6. Posting Behavior

First version should target plain-text status mirroring only.

Posting rules:

- post source items oldest-first to preserve ordering
- map Org content to readable Mastodon text
- append a source URL only if the feed format exposes one and the text budget
  allows it
- truncate safely to Mastodon limits if needed
- default to `public` visibility unless config says otherwise

Defer for later unless required by the source format:

- media attachments
- replies/thread reconstruction
- polls
- boosts/reposts
- edits/deletes reconciliation

### 7. AWS Lambda Packaging

Follow the existing Makefile-driven style from the sibling projects.

Two viable deployment shapes:

- ZIP-based Lambda using AWS's OS-only runtime and a custom `bootstrap`
- container-image Lambda

Recommended first implementation: ZIP-based Lambda on `provided.al2023`.

Reason:

- avoids needing ECR or another image registry
- matches the preferred AWS deployment model for this project
- AWS currently supports ZIP deployment for OS-only runtimes such as
  `provided.al2023`
- if we can ship a self-contained executable or a small launcher, the operational
  model is simpler than containers

Planned deployment files:

- root-level `bootstrap` in the ZIP payload
- Lambda entrypoint script or Dart handler launcher
- `Makefile`
- `config.example.*`

The Lambda function should:

- read config from a mounted/packaged secret file or environment
- read/write sync state from S3
- invoke the same sync logic used by the CLI

Implementation note:

- first validate whether Dart can be packaged cleanly for `provided.al2023`
- if ZIP packaging becomes impractical, container-image Lambda remains the
  fallback, but it is no longer the primary plan

### 8. Makefile Tooling

Add Make targets modeled after the other repos:

- `make help`
- `make deps`
- `make generate`
- `make test`
- `make run`
- `make build`
- `make deploy`
- `make invoke`
- `make clean`

Likely behavior:

- `generate`
  runs `build_runner` to refresh the generated Mastodon client
- `run`
  executes one local sync pass against local config/state
- `build`
  builds the Lambda ZIP payload
- `deploy`
  updates the Lambda function code with the ZIP payload
- `invoke`
  triggers a manual Lambda run for testing

### 9. Testing Strategy

Add tests before or alongside implementation for the risky parts.

Priority test areas:

- config parsing and validation
- Org Social entry extraction from representative sample feeds
- source ID derivation stability
- dedupe behavior across repeated runs
- ordering of multiple new posts
- Mastodon request construction
- state persistence and recovery after partial failure

Testing approach:

- use fixture Org files that mimic realistic Org Social posts
- mock feed fetches and Mastodon API calls
- keep the sync engine pure enough that most behavior can be covered without
  network access

### 10. Documentation

Replace the scaffold README with:

- project purpose
- local setup
- config format
- local run instructions
- OpenAPI generation instructions
- Lambda deployment workflow
- operational notes about idempotency and state storage

## Implementation Order

1. Replace scaffold metadata and add dependency on published `org_parser`.
2. Add config example, `.gitignore` rules, and README skeleton.
3. Set up OpenAPI generation and commit the generated Mastodon client.
4. Implement config loading and validation.
5. Implement Org Social fetch + parse + normalized post extraction.
6. Implement state storage abstraction with local-file backend first.
7. Implement Mastodon adapter and posting flow.
8. Implement sync orchestration and CLI entrypoint.
9. Add tests for parsing, dedupe, and sync flow.
10. Add S3-backed state storage for Lambda operation.
11. Add ZIP-based Lambda packaging around `provided.al2023`, including
    `bootstrap` and Makefile deployment targets.
12. Validate locally, then validate a Lambda invocation path.

## Assumptions To Confirm During Review

- ZIP-based Lambda on `provided.al2023` is the primary AWS deployment target.
- First version only needs to mirror new top-level posts as plain Mastodon
  statuses.
- A checked-in generated API client is acceptable.
- S3 is an acceptable state store for Lambda idempotency.
- Secret config can be file-based locally, with optional env overrides in AWS.

## Risks

- The published Mastodon OpenAPI spec may generate imperfect Dart code for some
  endpoints; the wrapper layer is intended to contain that risk.
- Org Social post identity rules may need refinement once we inspect real feed
  samples.
- Dart-on-Lambda custom runtime details may still force a container fallback if
  ZIP packaging is awkward in practice.
- If the source feed format includes edits/deletes/replies that should be
  mirrored semantically, the initial scope will need to expand.

## Deliverable After Plan Approval

After review, implementation should produce:

- a working Dart sync CLI
- generated Mastodon API client code
- secret config example and state handling
- tests for core sync logic
- Makefile and ZIP-based Lambda deployment tooling
- updated README
