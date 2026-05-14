sealed class OrgSocialSource {
  const OrgSocialSource();
}

final class UrlSource extends OrgSocialSource {
  const UrlSource(this.url);
  final Uri url;

  @override
  String toString() => url.toString();
}

final class FileSource extends OrgSocialSource {
  const FileSource(this.path);
  final String path;

  @override
  String toString() => path;
}
