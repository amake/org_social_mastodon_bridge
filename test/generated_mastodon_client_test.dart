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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
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
        orgMarkup: '',
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
    expect(interceptor.uploadedFilenames, [
      '1.jpg',
      '2.png',
      '3.webp',
      '4.gif',
    ]);
    expect(interceptor.statusBodies.single['media_ids'], [
      'media-1',
      'media-2',
      'media-3',
      'media-4',
    ]);
    expect(interceptor.statusBodies.single['status'], 'hello world');
  });

  test(
    'keeps only the first video attachment and ignores later media',
    () async {
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
        dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
          ..interceptors.add(interceptor),
        mediaPollDelay: Duration.zero,
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
          text: 'test post',
          publishedAt: DateTime.utc(2025, 4, 28, 11),
          headline: '2025-04-28T12:00:00+0100',
          orgMarkup: '',
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
    },
  );

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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
    );

    final endsAt = DateTime.now().add(const Duration(hours: 1));
    await client.postStatus(
      OrgSocialPost(
        sourceId: '2025-04-28T12:00:00+0100',
        text: 'poll post',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: '2025-04-28T12:00:00+0100',
        orgMarkup: '',
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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
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
        orgMarkup: '',
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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: 'mention',
        text: 'private',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: 'mention',
        orgMarkup: '',
        visibility: 'mention',
      ),
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: 'public-override',
        text: 'public',
        publishedAt: DateTime.utc(2025, 4, 28, 12),
        headline: 'public',
        orgMarkup: '',
        visibility: 'public',
      ),
    );

    expect(interceptor.statusBodies.first['visibility'], 'direct');
    expect(interceptor.statusBodies[1]['visibility'], 'public');
  });

  test('posts a status with media and empty text', () async {
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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
      httpClient: _StubHttpClient({
        Uri.parse('https://cdn.example/image.jpg'): _StubHttpResponse(
          body: [1, 2, 3],
          headers: {'content-type': 'image/jpeg'},
        ),
      }),
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: 'empty-text',
        text: '',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: 'empty-text',
        orgMarkup: '',
        mediaCandidates: [
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/image.jpg'),
            kind: OrgSocialMediaKind.image,
          ),
        ],
      ),
    );

    final statusBody = interceptor.statusBodies.single;
    expect(statusBody['status'], '');
    expect(statusBody['media_ids'], ['media-1']);
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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: 'tags-mood',
        text: 'Content',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: 'tags-mood',
        orgMarkup: '',
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

  test('pins and unpins status via API', () async {
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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
    );

    await client.pinStatus('status123');
    expect(interceptor.pinnedStatusIds, ['status123']);

    await client.unpinStatus('status123');
    expect(interceptor.unpinnedStatusIds, ['status123']);
  });

  test('reuploads media on update when selected media changed', () async {
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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
      httpClient: _StubHttpClient({
        Uri.parse('https://cdn.example/new.jpg'): _StubHttpResponse(
          body: [1, 2, 3],
          headers: {'content-type': 'image/jpeg'},
        ),
      }),
    );

    final result = await client.updateStatus(
      'status-1',
      OrgSocialPost(
        sourceId: 'source-1',
        text: 'updated',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: 'source-1',
        orgMarkup: '',
        mediaCandidates: [
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/new.jpg'),
            kind: OrgSocialMediaKind.image,
            altText: 'New',
          ),
        ],
      ),
      existingMediaIds: const ['media-old'],
      existingSelectedMedia: const ['image:https://cdn.example/old.jpg:Old'],
    );

    expect(interceptor.uploadedFilenames, ['new.jpg']);
    expect(interceptor.updatedStatusBodies.single['media_ids'], ['media-1']);
    expect(result.mediaIds, ['media-1']);
  });

  test('reuses media on update only when selected media matches', () async {
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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
    );

    final result = await client.updateStatus(
      'status-1',
      OrgSocialPost(
        sourceId: 'source-1',
        text: 'updated',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: 'source-1',
        orgMarkup: '',
        mediaCandidates: [
          OrgSocialMediaCandidate(
            url: Uri.parse('https://cdn.example/same.jpg'),
            kind: OrgSocialMediaKind.image,
            altText: 'Same',
          ),
        ],
      ),
      existingMediaIds: const ['media-existing'],
      existingSelectedMedia: const ['image:https://cdn.example/same.jpg:Same'],
    );

    expect(interceptor.uploadedFilenames, isEmpty);
    expect(interceptor.updatedStatusBodies.single['media_ids'], [
      'media-existing',
    ]);
    expect(result.mediaIds, ['media-existing']);
  });

  test('posts a quote status', () async {
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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
    );

    await client.postStatus(
      OrgSocialPost(
        sourceId: 'quote-post',
        text: 'Checking this out',
        publishedAt: DateTime.now(),
        headline: 'quote-post',
        orgMarkup: '',
      ),
      quoteId: '12345',
    );

    final statusBody = interceptor.statusBodies.single;
    expect(statusBody['status'], 'Checking this out');
    expect(statusBody['quoted_status_id'], '12345');
  });

  test('boosts a status', () async {
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
      dio: Dio(BaseOptions(baseUrl: 'https://mastodon.example'))
        ..interceptors.add(interceptor),
      mediaPollDelay: Duration.zero,
    );

    final result = await client.boostStatus(
      OrgSocialPost(
        sourceId: 'boost-post',
        text: '',
        publishedAt: DateTime.now(),
        headline: 'boost-post',
        orgMarkup: '',
      ),
      statusId: '12345',
    );

    expect(interceptor.rebloggedStatusIds, ['12345']);
    expect(result.statusId, '12345');
  });
}

final class _StubMastodonInterceptor extends Interceptor {
  final List<String> uploadedFilenames = [];
  final List<String?> uploadedDescriptions = [];
  final List<String?> uploadedContentTypes = [];
  final List<Map<String, dynamic>> statusBodies = [];
  final List<Map<String, dynamic>> updatedStatusBodies = [];
  final List<String> pinnedStatusIds = [];
  final List<String> unpinnedStatusIds = [];
  final List<String> rebloggedStatusIds = [];
  int _mediaCounter = 0;
  int _statusCounter = 0;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.path.startsWith('/api/v1/media/')) {
      final id = options.path.split('/').last;
      handler.resolve(
        Response(
          requestOptions: options,
          statusCode: 200,
          data: {
            'id': id,
            'type': 'image',
            'url': 'https://cdn.example/processed/$id.jpg',
          },
        ),
      );
      return;
    }

    if (options.path == '/api/v1/statuses') {
      final body = options.data as Map<String, dynamic>;
      statusBodies.add(body);
      _statusCounter += 1;
      handler.resolve(
        Response(
          requestOptions: options,
          statusCode: 200,
          data: {
            'id': 'scheduled-$_statusCounter',
            'created_at': '2026-04-27T00:00:00.000Z',
            'content': '',
            'visibility': body['visibility'] ?? 'public',
            'media_attachments':
                (body['media_ids'] as List<dynamic>?)
                    ?.map((id) => {'id': id, 'type': 'image', 'url': null})
                    .toList() ??
                [],
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

    final updateMatch = RegExp(
      r'^/api/v1/statuses/([^/]+)$',
    ).firstMatch(options.path);
    if (updateMatch != null && options.method == 'PUT') {
      final body = options.data as Map<String, dynamic>;
      updatedStatusBodies.add(body);
      handler.resolve(
        Response(
          requestOptions: options,
          statusCode: 200,
          data: _minimalStatusJson(
            updateMatch.group(1)!,
            mediaIds: (body['media_ids'] as List<dynamic>?)?.cast<String>(),
          ),
        ),
      );
      return;
    }

    final pinMatch = RegExp(
      r'^/api/v1/statuses/([^/]+)/pin$',
    ).firstMatch(options.path);
    if (pinMatch != null) {
      pinnedStatusIds.add(pinMatch.group(1)!);
      handler.resolve(
        Response(
          requestOptions: options,
          statusCode: 200,
          data: _minimalStatusJson(pinMatch.group(1)!),
        ),
      );
      return;
    }

    final reblogMatch = RegExp(
      r'^/api/v1/statuses/([^/]+)/reblog$',
    ).firstMatch(options.path);
    if (reblogMatch != null) {
      rebloggedStatusIds.add(reblogMatch.group(1)!);
      handler.resolve(
        Response(
          requestOptions: options,
          statusCode: 200,
          data: _minimalStatusJson(reblogMatch.group(1)!),
        ),
      );
      return;
    }

    final unpinMatch = RegExp(
      r'^/api/v1/statuses/([^/]+)/unpin$',
    ).firstMatch(options.path);
    if (unpinMatch != null) {
      unpinnedStatusIds.add(unpinMatch.group(1)!);
      handler.resolve(
        Response(
          requestOptions: options,
          statusCode: 200,
          data: _minimalStatusJson(unpinMatch.group(1)!),
        ),
      );
      return;
    }

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
    }

    handler.next(options);
  }

  Map<String, dynamic> _minimalStatusJson(
    String id, {
    List<String>? mediaIds,
  }) => {
    'id': id,
    'created_at': '2026-04-27T00:00:00.000Z',
    'sensitive': false,
    'spoiler_text': '',
    'visibility': 'public',
    'uri': 'https://mastodon.example/statuses/$id',
    'url': 'https://mastodon.example/@user/$id',
    'replies_count': 0,
    'reblogs_count': 0,
    'favourites_count': 0,
    'content': '',
    'account': {
      'id': 'user-id',
      'username': 'user',
      'acct': 'user',
      'display_name': 'User',
      'locked': false,
      'bot': false,
      'group': false,
      'created_at': '2026-04-27T00:00:00.000Z',
      'note': '',
      'url': 'https://mastodon.example/@user',
      'uri': 'https://mastodon.example/users/user',
      'avatar': 'https://mastodon.example/avatar.png',
      'avatar_static': 'https://mastodon.example/avatar.png',
      'header': 'https://mastodon.example/header.png',
      'header_static': 'https://mastodon.example/header.png',
      'followers_count': 0,
      'following_count': 0,
      'statuses_count': 0,
      'emojis': [],
      'fields': [],
    },
    'media_attachments':
        mediaIds?.map((mediaId) => {'id': mediaId, 'type': 'image'}).toList() ??
        [],
    'mentions': [],
    'tags': [],
    'emojis': [],
  };

  String _mediaTypeFor(String filename) {
    if (filename.endsWith('.mp4')) return 'video';
    return 'image';
  }
}

final class _StubHttpClient implements http.Client {
  _StubHttpClient(this.responses);

  final Map<Uri, _StubHttpResponse> responses;

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {
    final response = responses[url];
    if (response == null) {
      return http.Response('', 404);
    }
    return http.Response.bytes(response.body, 200, headers: response.headers);
  }

  @override
  void close() {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

final class _StubHttpResponse {
  const _StubHttpResponse({required this.body, required this.headers});

  final List<int> body;
  final Map<String, String> headers;
  final int statusCode = 200;
}
