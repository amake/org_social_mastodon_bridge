# Rich Sync Plan

## Scope

Extend the current Org Social -> Mastodon bridge to support:

- media attachments derived from Org content
- smarter body rendering that preserves useful inline markup and URLs
- Mastodon poll creation from Org Social polls
- canonical post IDs that follow Org Social's documented timestamp rules

This plan is intentionally limited to these content/rendering features. It does
not revisit deployment, auth, or runtime packaging.

## Confirmed Source Rules

From the current Org Social docs:

- Post metadata:
  - the post ID is the timestamp
  - it can be specified in the headline after `**`
  - or in the `:ID:` property
  - if both are present, the headline value takes priority
- Polls:
  - use `:POLL_END:` in the properties drawer
  - use a checkbox list for options
- Rich formatting examples explicitly include:
  - multiple paragraphs
  - lists
  - `*bold*`
  - `/italic/`
  - `~code~`
  - Org links like `[[https://example.com][Example website]]`

Sources:

- https://github.com/tanrax/org-social#post-metadata
- https://github.com/tanrax/org-social#make-a-poll
- https://github.com/tanrax/org-social#make-a-new-post
- https://github.com/tanrax/org-social#create-a-multiline-post-with-rich-formatting

## Current Code Boundaries

Today the relevant implementation lives in:

- [lib/src/org_social/service.dart](/Users/amake/Code/org_social_mastodon_bridge/lib/src/org_social/service.dart)
  - parses the feed
  - derives `sourceId`
  - renders body text with `toPlainText()`
- [lib/src/org_social/post.dart](/Users/amake/Code/org_social_mastodon_bridge/lib/src/org_social/post.dart)
  - current flat post model
- [lib/src/mastodon/generated_client.dart](/Users/amake/Code/org_social_mastodon_bridge/lib/src/mastodon/generated_client.dart)
  - current text-only status creation
- [lib/src/sync/sync_service.dart](/Users/amake/Code/org_social_mastodon_bridge/lib/src/sync/sync_service.dart)
  - sync orchestration and idempotent state updates
- [test/org_social_service_test.dart](/Users/amake/Code/org_social_mastodon_bridge/test/org_social_service_test.dart)
  - parser and ID behavior
- [test/sync_service_test.dart](/Users/amake/Code/org_social_mastodon_bridge/test/sync_service_test.dart)
  - sync-level posting behavior

## Current Gaps

The bridge currently:

- renders post bodies with `toPlainText()`
  - this drops link URLs
  - this loses most inline formatting intent
- ignores media links completely
- ignores polls completely
- uses `:ID:` if present, otherwise falls back to a synthetic hash
  - this does not follow the documented headline-first timestamp rule

## Design

### 1. Canonical Post Extraction

Introduce a more explicit normalized post model with structured fields instead
of only `text` plus a few metadata properties.

Add fields such as:

- `sourceId`
- `publishedAt`
- `headlineId`
- `bodyText`
- `bodyPreview` if useful for debug logging
- `mediaCandidates`
- `poll`
- `visibility` if later needed
- `rawSection` should not survive in the final model; do the extraction work once
  in the Org layer and keep downstream code feed-agnostic

Canonical ID rule:

1. If the headline raw title is a non-empty RFC 3339 timestamp, use it.
2. Else if `:ID:` is present and non-empty, use it.
3. Else fail parsing for that post rather than synthesizing a hash.

Reason:

- Org Social docs say the ID is the timestamp and define the precedence.
- A synthetic fallback is convenient, but it weakens protocol compatibility and
  makes cross-client reasoning harder.

Open question for implementation:

- whether to reject malformed IDs hard, or skip malformed posts with a warning

Recommended behavior:

- skip malformed posts with a warning, continue syncing the rest

### 2. Rich Body Rendering

Replace the current `toPlainText()` body rendering with a custom Org renderer
for Mastodon text output.

Goals:

- preserve URLs for links
- preserve simple Mastodon-friendly inline emphasis where practical
- keep output readable even when Mastodon does not support a construct natively

Target rendering rules:

- paragraphs:
  - preserve paragraph breaks with blank lines
- unordered/ordered lists:
  - render as plain text list items
- bold:
  - preserve as `*bold*`
- italic:
  - preserve as `_italic_` or `/italic/`
  - implementation should choose one consistent form; `_italic_` is safer if
    we want Markdown-like output
- code:
  - preserve inline code with backticks
- ~verbatim~:
  - synonymous with `code` for Markdown purposes
- links with description:
  - render as `Description: https://example.com`
  - or `Description (https://example.com)`
- bare links:
  - render as the URL
- images/videos:
  - leave the link in the rendered text as requested
- unsupported/complex markup:
  - degrade to readable plain text

Non-goals for first pass:

- full Markdown conversion for every Org syntax feature
- HTML generation
- block-level syntax such as tables or source blocks with special Mastodon
  formatting beyond readable text

Implementation shape:

- add a dedicated renderer, likely under `lib/src/org_social/rendering/`
- walk the Org AST directly instead of relying on `toPlainText()`
- keep link discovery and text rendering coordinated so the same traversal can
  both render the body and identify candidate attachments in document order

### 3. Media Attachments

Detect attachable media from links in the Org body.

Initial media rule:

- inspect Org links in document order
- consider only HTTP(S) links
- determine candidate media type primarily from URL path extension
- optionally fall back to HEAD/GET content-type sniffing if needed later

Supported first-pass extensions:

- images: `.jpg`, `.jpeg`, `.png`, `.gif`, `.webp`
- video: `.mp4`, `.webm`, `.mov`, maybe `.m4v`

Posting limits:

- up to 4 images
- up to 1 video
- do not mix video with additional attachments

Selection policy:

- preserve source order
- attach the first valid compatible candidates that fit Mastodon limits
- keep all original links in body text even if attached

Upload flow:

1. collect candidate links during parse/render
2. download attachment bytes at post time
3. call Mastodon media upload endpoint
4. include returned media IDs in status creation

Practical implementation note:

- the Mastodon adapter should own remote fetch + upload behavior
- the Org layer should only identify ordered candidate URLs and their inferred
  kind when obvious
- this keeps feed parsing deterministic and makes upload failures easier to test

Open issues:

- some Mastodon instances may reject remote content types or large files
- alt text is not defined by Org Social docs

Recommended first pass:

- no alt text extraction yet
- log accepted/rejected media candidates clearly

### 4. Poll Support

Recognize Org Social polls and translate them to Mastodon polls when possible.

Detection rule:

- `:POLL_END:` property present
- body contains a checkbox list with at least 2 options

Extraction:

- poll question:
  - use the rendered non-list body text before the options
- poll options:
  - each unchecked checkbox item text
- expiry:
  - derive `expires_in` from `POLL_END - now`

Mastodon compatibility constraints to enforce:

- option count and text length must fit Mastodon limits
- poll end time must still be in the future
- polls cannot be combined with media attachments

Recommended fallback behavior:

- if the Org Social poll cannot be represented as a Mastodon poll, post as a
  normal text status and log why

Important implementation note:

- Org Social also documents voting with `:POLL_OPTION:`
- that is a different action from creating a poll
- this scope only covers creating Mastodon polls from source posts, not syncing
  votes back out

### 5. Mastodon Adapter Changes

The current adapter only creates text-only statuses.

Extend it to:

- upload media before status creation
- create polls when the normalized post has poll data
- reject invalid text+media+poll combinations before API submission

Adapter inputs should become structured enough that the sync layer does not need
to know Mastodon-specific limits.

Likely additions:

- a media upload helper
- poll request mapping
- a final request builder that chooses between:
  - text-only
  - text + media
  - text + poll

Likely code changes:

- expand [lib/src/mastodon/client.dart](/Users/amake/Code/org_social_mastodon_bridge/lib/src/mastodon/client.dart)
  only if the sync layer truly needs richer result types; otherwise keep the
  interface stable and change only the input post model
- extend [lib/src/mastodon/generated_client.dart](/Users/amake/Code/org_social_mastodon_bridge/lib/src/mastodon/generated_client.dart)
  to:
  - upload media through the generated media API
  - build `MediaStatus` or `PollStatus` requests
  - preserve the existing idempotency key behavior
- add adapter-level unit tests with mocked HTTP/Mastodon API behavior rather
  than only sync-level tests

### 6. Testing Strategy

Add fixture-driven tests before or alongside the implementation.

Priority tests:

- ID precedence:
  - headline timestamp wins over `:ID:`
  - `:ID:` works when headline is empty
- rich rendering:
  - links preserve URLs
  - emphasis renders predictably
  - paragraphs and lists remain readable
- media extraction:
  - image links are detected in order
  - max 4 image limit enforced
  - single-video rule enforced
  - links remain in text body
- poll extraction:
  - `:POLL_END:` + checkbox list recognized
  - question/options extracted correctly
  - invalid poll shapes rejected cleanly
- adapter behavior:
  - media upload then status creation
  - poll request constructed when appropriate
  - incompatible media+poll combinations handled as expected

Suggested fixture additions:

- a fixture with rich inline formatting and descriptive links
- a fixture with 5 image links to verify truncation to 4 attachments
- a fixture with mixed image + video links to verify the single-video rule wins
- a fixture with valid poll metadata and checkbox options
- a fixture with malformed or expired poll metadata

### 7. Logging

Use the new logger to make this work debuggable.

Add debug logging for:

- chosen canonical post ID
- rendered output preview or summary
- detected media candidates and which were accepted
- detected poll structure
- fallback decisions when a feature cannot be represented on Mastodon

## Phased Implementation Order

### Phase 1: Parsing and IDs

1. Replace synthetic ID fallback with documented timestamp extraction and tests.
2. Introduce a structured normalized post model for body, media, and poll data.
3. Keep the old text-only path compiling while the richer renderer is added.

### Phase 2: Rendering and Media Discovery

1. Implement custom Mastodon text rendering for paragraphs, lists, emphasis,
   code, and links.
2. During the same AST walk, collect ordered media candidates without removing
   links from the rendered text.
3. Add parser/renderer fixtures that lock down output before touching the
   Mastodon adapter.

### Phase 3: Mastodon Media Support

1. Extend the adapter with media upload support.
2. Enforce Mastodon attachment limits before the final create-status request.
3. Preserve current idempotency semantics and state recording.

### Phase 4: Poll Support

1. Detect and extract Org Social polls.
2. Map representable polls to Mastodon poll requests.
3. Fall back to text-only posts with a warning when a source poll is invalid,
   expired, or otherwise unsupported.

### Phase 5: End-to-End Validation

1. Expand tests across parser, renderer, extraction, and adapter layers.
2. Run local dry-run validation on a real Org Social sample.
3. Verify logging is detailed enough to diagnose attachment and poll decisions.

## Risks

- Mastodon formatting is not a full Org or Markdown renderer, so some markup
  choices will be subjective.
- Media detection by extension may miss some valid attachments or misclassify
  URLs without extensions.
- Poll question extraction may need refinement once tested against real feeds.
- Strict timestamp-ID enforcement may reveal malformed real-world posts that the
  current implementation silently tolerated.

## Immediate Next Files

The most likely first implementation pass will touch:

- [lib/src/org_social/post.dart](/Users/amake/Code/org_social_mastodon_bridge/lib/src/org_social/post.dart)
- [lib/src/org_social/service.dart](/Users/amake/Code/org_social_mastodon_bridge/lib/src/org_social/service.dart)
- new files under `lib/src/org_social/rendering/`
- [lib/src/mastodon/generated_client.dart](/Users/amake/Code/org_social_mastodon_bridge/lib/src/mastodon/generated_client.dart)
- [test/org_social_service_test.dart](/Users/amake/Code/org_social_mastodon_bridge/test/org_social_service_test.dart)
- new adapter-focused tests

## Deliverable

After this plan is implemented, the bridge should:

- preserve more of the source post structure in Mastodon text
- upload supported linked media attachments
- create Mastodon polls from Org Social polls when representable
- follow Org Social's documented timestamp ID rules
