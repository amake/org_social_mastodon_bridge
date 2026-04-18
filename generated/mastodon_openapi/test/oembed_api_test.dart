import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

/// tests for OembedApi
void main() {
  final instance = MastodonOpenapi().getOembedApi();

  group(OembedApi, () {
    // Get OEmbed info as JSON
    //
    // Version history:  1.0.0 - added
    //
    //Future<OEmbedResponse> getOembed(String url, { int maxheight, int maxwidth }) async
    test('test getOembed', () async {
      // TODO
    });
  });
}
