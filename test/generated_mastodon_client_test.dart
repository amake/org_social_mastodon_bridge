import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';
import 'package:test/test.dart';

void main() {
  test('uploads up to four images and posts a media status', () async {
    final interceptor = _StubMastodonInterceptor();
    final client = GeneratedMastodonClient(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.example',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }).mastodon,
      dio: Dio(
        BaseOptions(baseUrl: 'https://mastodon.example'),
      )..interceptors.add(interceptor),
      httpClient: _StubHttpClient({
        Uri.parse('https://cdn.example/1.jpg'): _StubHttpResponse(
          body: [1, 2, 3],
          headers: {'content-type': 'image/jpeg'},
        ),
        Uri.parse('https://cdn.example/2.png'): _StubHttpResponse(
          body: [1, 2, 3, 4],
          headers: {'content-type': 'image/png'},
        ),
        Uri.parse('https://cdn.example/3.webp'): _StubHttpResponse(
          body: [5, 6, 7],
          headers: {'content-type': 'image/webp'},
        ),
        Uri.parse('https://cdn.example/4.gif'): _StubHttpResponse(
          body: [8, 9],
          headers: {'content-type': 'image/gif'},
        ),
        Uri.parse('https://cdn.example/5.jpg'): _StubHttpResponse(
          body: [10],
          headers: {'content-type': 'image/jpeg'},
        ),
      }),
    );

    final result = await client.postStatus(
      OrgSocialPost(
        sourceId: '2025-04-28T12:00:00+0100',
        text: 'hello world',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: '2025-04-28T12:00:00+0100',
        mediaCandidates: [
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/1.jpg'),
            kind: OrgSocialMediaKind.image,
          ),
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/2.png'),
            kind: OrgSocialMediaKind.image,
          ),
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/3.webp'),
            kind: OrgSocialMediaKind.image,
          ),
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/4.gif'),
            kind: OrgSocialMediaKind.image,
          ),
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/5.jpg'),
            kind: OrgSocialMediaKind.image,
          ),
        ],
      ),
    );

    expect(result.statusId, 'scheduled-1');
    expect(interceptor.uploadedFilenames, ['1.jpg', '2.png', '3.webp', '4.gif']);
    expect(interceptor.statusBodies.single['media_ids'], [
      'media-1',
      'media-2',
      'media-3',
      'media-4',
    ]);
    expect(interceptor.statusBodies.single['status'], 'hello world');
  });

  test('keeps only the first video attachment and ignores later media', () async {
    final interceptor = _StubMastodonInterceptor();
    final client = GeneratedMastodonClient(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.example',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }).mastodon,
      dio: Dio(
        BaseOptions(baseUrl: 'https://mastodon.example'),
      )..interceptors.add(interceptor),
      httpClient: _StubHttpClient({
        Uri.parse('https://cdn.example/movie.mp4'): _StubHttpResponse(
          body: [1, 2, 3],
          headers: {'content-type': 'video/mp4'},
        ),
      }),
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: '2025-04-28T12:00:00+0100',
        text: 'video post',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: '2025-04-28T12:00:00+0100',
        mediaCandidates: [
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/movie.mp4'),
            kind: OrgSocialMediaKind.video,
          ),
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/after.jpg'),
            kind: OrgSocialMediaKind.image,
          ),
        ],
      ),
    );

    expect(interceptor.uploadedFilenames, ['movie.mp4']);
    expect(interceptor.statusBodies.single['media_ids'], ['media-1']);
  });

  test('posts a poll status and ignores media when both present', () async {
    final interceptor = _StubMastodonInterceptor();
    final client = GeneratedMastodonClient(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.example',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }).mastodon,
      dio: Dio(
        BaseOptions(baseUrl: 'https://mastodon.example'),
      )..interceptors.add(interceptor),
    );

    final endsAt = DateTime.now().add(const Duration(hours: 1));
    await client.postStatus(
      OrgSocialPost(
        sourceId: '2025-04-28T12:00:00+0100',
        text: 'poll post',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: '2025-04-28T12:00:00+0100',
        poll: OrgSocialPoll(endsAt: endsAt, options: ['A', 'B', 'C']),
        mediaCandidates: [
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/ignored.jpg'),
            kind: OrgSocialMediaKind.image,
          ),
        ],
      ),
    );

    expect(interceptor.uploadedFilenames, isEmpty);
    final statusBody = interceptor.statusBodies.single;
    expect(statusBody['status'], 'poll post');
    expect(statusBody['poll'], isNotNull);
    expect(statusBody['poll']['options'], ['A', 'B', 'C']);
    expect(statusBody['poll']['expires_in'], isPositive);
  });

  test('passes alt text to mastodon and sniffs content-type', () async {
    final interceptor = _StubMastodonInterceptor();
    final client = GeneratedMastodonClient(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.example',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }).mastodon,
      dio: Dio(
        BaseOptions(baseUrl: 'https://mastodon.example'),
      )..interceptors.add(interceptor),
      httpClient: _StubHttpClient({
        Uri.parse('https://cdn.example/mystery'): _StubHttpResponse(
          body: [0x89, 0x50, 0x4E, 0x47, 0, 0, 0, 0], // PNG magic bytes
          headers: {'content-type': 'application/octet-stream'},
        ),
      }),
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: '2025-04-28T12:00:00+0100',
        text: 'alt text post',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: '2025-04-28T12:00:00+0100',
        mediaCandidates: [
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/mystery'),
            kind: OrgSocialMediaKind.image,
            altText: 'A mysterious image',
          ),
        ],
      ),
    );

    expect(interceptor.uploadedDescriptions.single, 'A mysterious image');
    expect(interceptor.uploadedContentTypes.single, 'image/png');
  });

  test('respects per-post visibility', () async {
    final interceptor = _StubMastodonInterceptor();
    final client = GeneratedMastodonClient(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.example',
          'access_token': 'token',
          'visibility': 'public',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }).mastodon,
      dio: Dio(
        BaseOptions(baseUrl: 'https://mastodon.example'),
      )..interceptors.add(interceptor),
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: 'mention',
        text: 'private',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: 'mention',
        visibility: 'mention',
      ),
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: 'public-override',
        text: 'public',
        publishedAt: DateTime.utc(2025, 4, 28, 12),
        headline: 'public',
        visibility: 'public',
      ),
    );

    expect(interceptor.statusBodies[0]['visibility'], 'direct');
    expect(interceptor.statusBodies[1]['visibility'], 'public');
  });

  test('appends tags and mood to status text', () async {
    final interceptor = _StubMastodonInterceptor();
    final client = GeneratedMastodonClient(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.example',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }).mastodon,
      dio: Dio(
        BaseOptions(baseUrl: 'https://mastodon.example'),
      )..interceptors.add(interceptor),
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: 'tags-mood',
        text: 'Content',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: 'tags-mood',
        tags: ['tag1', 'tag2'],
        mood: 'Excited',
      ),
    );

    final statusText = interceptor.statusBodies.single['status'];
    expect(statusText, contains('Content'));
    expect(statusText, contains('Mood: Excited'));
    expect(statusText, contains('#tag1 #tag2'));
    expect(statusText, endsWith('#tag1 #tag2'));
  });
}

final class _StubMastodonInterceptor extends Interceptor {
  final List<String> uploadedFilenames = [];
  final List<String?> uploadedDescriptions = [];
  final List<String?> uploadedContentTypes = [];
  final List<Map<String, dynamic>> statusBodies = [];
  int _mediaCounter = 0;
  int _statusCounter = 0;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    switch (options.path) {
      case '/api/v2/media':
        final formData = options.data as FormData;
        final file = formData.files.single.value;
        uploadedFilenames.add(file.filename!);
        uploadedContentTypes.add(file.contentType?.toString());
        uploadedDescriptions.add(
          formData.fields
              .where((f) => f.key == 'description')
              .map((f) => f.value)
              .firstOrNull,
        );
        _mediaCounter += 1;
        handler.resolve(
          Response(
            requestOptions: options,
            statusCode: 202,
            data: {
              'id': 'media-$_mediaCounter',
              'type': _mediaTypeFor(file.filename!),
              'url': null,
            },
          ),
        );
        return;
      case '/api/v1/statuses':
        final body = Map<String, dynamic>.from(options.data as Map);
        statusBodies.add(body);
        _statusCounter += 1;
        handler.resolve(
          Response(
            requestOptions: options,
            statusCode: 200,
            data: {
              'id': 'scheduled-$_statusCounter',
              'media_attachments': const [],
              'params': {
                'application_id': 0,
                'text': body['status'] ?? '',
                'visibility': body['visibility'] ?? 'public',
                'with_rate_limit': false,
                if (body['media_ids'] case final List<dynamic> mediaIds)
                  'media_ids': mediaIds,
              },
              'scheduled_at': '2026-04-27T00:00:00.000Z',
            },
          ),
        );
        return;
    }
    handler.next(options);
  }

  String _mediaTypeFor(String filename) {
    final lower = filename.toLowerCase();
    if (lower.endsWith('.mp4')) {
      return 'video';
    }
    return 'image';
  }
}

final class _StubHttpClient extends http.BaseClient {
  _StubHttpClient(this.responses);

  final Map<Uri, _StubHttpResponse> responses;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final response = responses[request.url];
    if (response == null) {
      throw StateError('Unexpected HTTP request for ${request.url}');
    }
    return http.StreamedResponse(
      Stream<Uint8List>.value(Uint8List.fromList(response.body)),
      response.statusCode,
      headers: response.headers,
      request: request,
    );
  }
}

final class _StubHttpResponse {
  const _StubHttpResponse({
    required this.body,
    required this.headers,
  });

  final List<int> body;
  final Map<String, String> headers;
  final int statusCode = 200;
}
