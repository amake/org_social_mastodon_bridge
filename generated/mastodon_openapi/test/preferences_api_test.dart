import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

/// tests for PreferencesApi
void main() {
  final instance = MastodonOpenapi().getPreferencesApi();

  group(PreferencesApi, () {
    // View user preferences
    //
    // Preferences defined by the user in their account settings.  Version history:  2.8.0 - added\\ 4.5.0 (`mastodon` [API version] 7) - added `posting:default:quoted_policy`
    //
    //Future getPreferences() async
    test('test getPreferences', () async {
      // TODO
    });
  });
}
