# org_social_mastodon_bridge

Sync an [Org Social](https://org-social.org/) feed to a Mastodon account.

This project:

- fetches a configured `social.org` feed
- parses it with the published [`org_parser`](https://pub.dev/packages/org_parser)
- posts unseen items to Mastodon oldest-first
- persists sync state so repeated runs are idempotent
- supports local execution and AWS Lambda ZIP deployment on `provided.al2023`

The Mastodon client is generated from the published
[`mastodon-openapi`](https://github.com/abraham/mastodon-openapi) schema using
[`openapi_generator`](https://pub.dev/packages/openapi_generator).
`make generate` also reapplies a small deterministic compatibility patch set to
the generated package.

## Config

Copy `config.example.json` to `config.json` and fill in the secret values.

The important sections are:

- `source.feed_url`: URL of the Org Social feed to mirror
- `mastodon.base_url`: base URL of the target instance
- `mastodon.access_token`: posting token for the target account
- `sync.dry_run`: local safety switch
- `state`: either a local JSON file or an S3 object for Lambda runs

## Common Commands

- `make deps`
- `make generate`
- `make analyze`
- `make test`
- `make run`
- `make build`
- `make deploy`
- `make invoke`

`make run` executes one sync pass against `config.json`.
`make build` packages that same config into the Lambda ZIP as root-level
`config.json`.

## State And Idempotency

Each mirrored source post is recorded by source ID in the state store together
with the created Mastodon status ID. The bridge also sends the source ID as the
Mastodon `Idempotency-Key` header, which reduces duplicate posts if a run fails
midway and is retried quickly.

## AWS Notes

The Lambda deployment target is a ZIP package for the AWS OS-only runtime
`provided.al2023`, using a root-level `bootstrap`.

`make build` compiles `bin/bootstrap.dart` to a Linux executable and zips it as
`dist/lambda.zip`, including `config.json` inside the ZIP. `make deploy`
updates the configured Lambda function using the function name from
`config.json`.

If you want to package a different config file, use `make build
config=/path/to/secret-config.json`. It will still be stored in the ZIP as
`config.json`.

Requirements for deployment tooling:

- Dart SDK with cross-compilation artifacts available
- `aws` CLI
- `jq`
