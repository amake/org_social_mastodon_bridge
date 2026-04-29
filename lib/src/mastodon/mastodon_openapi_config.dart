import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: DioProperties(
    pubName: 'mastodon_openapi',
    pubDescription:
        'Generated Mastodon OpenAPI client for org_social_mastodon_bridge.',
    pubAuthor: 'amake',
    pubVersion: '0.1.0',
  ),
  inputSpec: RemoteSpec(
    path:
        'https://raw.githubusercontent.com/abraham/mastodon-openapi/main/dist/schema.json',
  ),
  nameMappings: {'update': 'updateValue'},
  generatorName: Generator.dio,
  outputDirectory: 'generated/mastodon_openapi',
  fetchDependencies: true,
  runSourceGenOnOutput: true,
  forceAlwaysRun: false,
  skipIfSpecIsUnchanged: true,
  cachePath: '.dart_tool/openapi/mastodon-schema.json',
)
class MastodonOpenapiConfig {}
