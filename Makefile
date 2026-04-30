lambda_arch ?= arm64
config ?= config.json
payload := dist/lambda.zip
bootstrap := dist/bootstrap
run_log_level ?= debug

.PHONY: help
help: ## Show this help text
	$(info usage: make [target])
	$(info )
	$(info Available targets:)
	@awk -F ':.*?## *' '/^[^\t].+?:.*?##/ \
         {printf "  %-24s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: deps
deps: ## Install Dart dependencies
	dart pub get

.PHONY: generate
generate: ## Generate the Mastodon OpenAPI client
	dart run build_runner build --delete-conflicting-outputs
	dart run tool/fix_generated_client.dart
	dart format generated/mastodon_openapi/lib/src/model >/dev/null
	dart pub get

.PHONY: auth
auth: ## Obtain/update the Mastodon access token interactively
auth:
	dart run bin/auth_setup.dart $(config)

.PHONY: test
test: ## Run tests
	dart test

.PHONY: lint
lint: ## Run linting
lint: analyze
	dart format --set-exit-if-changed .

.PHONY: analyze
analyze: ## Run static analysis
	dart analyze

.PHONY: run
run: ## Run one local sync pass
	ORG_SOCIAL_MASTODON_BRIDGE_LOG_LEVEL=$(run_log_level) \
		dart run bin/org_social_mastodon_bridge.dart $(config)

.PHONY: provision
provision: ## Transition to Lambda: push state to S3 and config to envars
	dart run bin/provision.dart $(config)

dist:
	mkdir -p $@

$(bootstrap): | dist
	dart compile exe \
		--target-os linux \
		--target-arch $(lambda_arch) \
		bin/bootstrap.dart \
		-o $@

$(payload): $(bootstrap) | dist
	rm -f $@
	cd dist && zip -9 lambda.zip bootstrap

.PHONY: build
build: ## Build the Lambda ZIP payload
build: $(payload)

.PHONY: deploy
deploy: ## Update the Lambda function code from the ZIP payload
deploy: $(payload)
	aws lambda update-function-code \
		--function-name $$(jq -r '.lambda.function_name' $(config)) \
		--zip-file fileb://$$(pwd)/$(payload)

.PHONY: invoke
invoke: ## Invoke the Lambda function
invoke:
	aws lambda invoke \
		--function-name $$(jq -r '.lambda.function_name' $(config)) \
		--cli-binary-format raw-in-base64-out \
		--payload '{}' \
		/dev/null

.PHONY: clean
clean: ## Remove generated build artifacts
clean:
	rm -rf dist
