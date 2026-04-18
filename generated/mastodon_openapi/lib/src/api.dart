//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:mastodon_openapi/src/serializers.dart';
import 'package:mastodon_openapi/src/auth/api_key_auth.dart';
import 'package:mastodon_openapi/src/auth/basic_auth.dart';
import 'package:mastodon_openapi/src/auth/bearer_auth.dart';
import 'package:mastodon_openapi/src/auth/oauth.dart';
import 'package:mastodon_openapi/src/api/accounts_api.dart';
import 'package:mastodon_openapi/src/api/announcements_api.dart';
import 'package:mastodon_openapi/src/api/apps_api.dart';
import 'package:mastodon_openapi/src/api/async_refreshes_api.dart';
import 'package:mastodon_openapi/src/api/blocks_api.dart';
import 'package:mastodon_openapi/src/api/bookmarks_api.dart';
import 'package:mastodon_openapi/src/api/conversations_api.dart';
import 'package:mastodon_openapi/src/api/custom_emojis_api.dart';
import 'package:mastodon_openapi/src/api/directory_api.dart';
import 'package:mastodon_openapi/src/api/domain_blocks_api.dart';
import 'package:mastodon_openapi/src/api/emails_api.dart';
import 'package:mastodon_openapi/src/api/endorsements_api.dart';
import 'package:mastodon_openapi/src/api/favourites_api.dart';
import 'package:mastodon_openapi/src/api/featured_tags_api.dart';
import 'package:mastodon_openapi/src/api/filters_api.dart';
import 'package:mastodon_openapi/src/api/follow_requests_api.dart';
import 'package:mastodon_openapi/src/api/followed_tags_api.dart';
import 'package:mastodon_openapi/src/api/health_api.dart';
import 'package:mastodon_openapi/src/api/instance_api.dart';
import 'package:mastodon_openapi/src/api/lists_api.dart';
import 'package:mastodon_openapi/src/api/markers_api.dart';
import 'package:mastodon_openapi/src/api/media_api.dart';
import 'package:mastodon_openapi/src/api/mutes_api.dart';
import 'package:mastodon_openapi/src/api/notifications_api.dart';
import 'package:mastodon_openapi/src/api/oauth_api.dart';
import 'package:mastodon_openapi/src/api/oembed_api.dart';
import 'package:mastodon_openapi/src/api/polls_api.dart';
import 'package:mastodon_openapi/src/api/preferences_api.dart';
import 'package:mastodon_openapi/src/api/profile_api.dart';
import 'package:mastodon_openapi/src/api/push_api.dart';
import 'package:mastodon_openapi/src/api/reports_api.dart';
import 'package:mastodon_openapi/src/api/scheduled_statuses_api.dart';
import 'package:mastodon_openapi/src/api/search_api.dart';
import 'package:mastodon_openapi/src/api/statuses_api.dart';
import 'package:mastodon_openapi/src/api/streaming_api.dart';
import 'package:mastodon_openapi/src/api/suggestions_api.dart';
import 'package:mastodon_openapi/src/api/tags_api.dart';
import 'package:mastodon_openapi/src/api/timelines_api.dart';
import 'package:mastodon_openapi/src/api/trends_api.dart';
import 'package:mastodon_openapi/src/api/well_known_api.dart';

class MastodonOpenapi {
  static const String basePath = r'https://mastodon.example';

  final Dio dio;
  final Serializers serializers;

  MastodonOpenapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
              as OAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this
                  .dio
                  .interceptors
                  .firstWhere((element) => element is ApiKeyAuthInterceptor)
              as ApiKeyAuthInterceptor)
          .apiKeys[name] = apiKey;
    }
  }

  /// Get AccountsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountsApi getAccountsApi() {
    return AccountsApi(dio, serializers);
  }

  /// Get AnnouncementsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AnnouncementsApi getAnnouncementsApi() {
    return AnnouncementsApi(dio, serializers);
  }

  /// Get AppsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AppsApi getAppsApi() {
    return AppsApi(dio, serializers);
  }

  /// Get AsyncRefreshesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AsyncRefreshesApi getAsyncRefreshesApi() {
    return AsyncRefreshesApi(dio, serializers);
  }

  /// Get BlocksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BlocksApi getBlocksApi() {
    return BlocksApi(dio, serializers);
  }

  /// Get BookmarksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BookmarksApi getBookmarksApi() {
    return BookmarksApi(dio, serializers);
  }

  /// Get ConversationsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConversationsApi getConversationsApi() {
    return ConversationsApi(dio, serializers);
  }

  /// Get CustomEmojisApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomEmojisApi getCustomEmojisApi() {
    return CustomEmojisApi(dio, serializers);
  }

  /// Get DirectoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DirectoryApi getDirectoryApi() {
    return DirectoryApi(dio, serializers);
  }

  /// Get DomainBlocksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DomainBlocksApi getDomainBlocksApi() {
    return DomainBlocksApi(dio, serializers);
  }

  /// Get EmailsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EmailsApi getEmailsApi() {
    return EmailsApi(dio, serializers);
  }

  /// Get EndorsementsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EndorsementsApi getEndorsementsApi() {
    return EndorsementsApi(dio, serializers);
  }

  /// Get FavouritesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FavouritesApi getFavouritesApi() {
    return FavouritesApi(dio, serializers);
  }

  /// Get FeaturedTagsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FeaturedTagsApi getFeaturedTagsApi() {
    return FeaturedTagsApi(dio, serializers);
  }

  /// Get FiltersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FiltersApi getFiltersApi() {
    return FiltersApi(dio, serializers);
  }

  /// Get FollowRequestsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FollowRequestsApi getFollowRequestsApi() {
    return FollowRequestsApi(dio, serializers);
  }

  /// Get FollowedTagsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FollowedTagsApi getFollowedTagsApi() {
    return FollowedTagsApi(dio, serializers);
  }

  /// Get HealthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HealthApi getHealthApi() {
    return HealthApi(dio, serializers);
  }

  /// Get InstanceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InstanceApi getInstanceApi() {
    return InstanceApi(dio, serializers);
  }

  /// Get ListsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ListsApi getListsApi() {
    return ListsApi(dio, serializers);
  }

  /// Get MarkersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MarkersApi getMarkersApi() {
    return MarkersApi(dio, serializers);
  }

  /// Get MediaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MediaApi getMediaApi() {
    return MediaApi(dio, serializers);
  }

  /// Get MutesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MutesApi getMutesApi() {
    return MutesApi(dio, serializers);
  }

  /// Get NotificationsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationsApi getNotificationsApi() {
    return NotificationsApi(dio, serializers);
  }

  /// Get OauthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OauthApi getOauthApi() {
    return OauthApi(dio, serializers);
  }

  /// Get OembedApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OembedApi getOembedApi() {
    return OembedApi(dio, serializers);
  }

  /// Get PollsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PollsApi getPollsApi() {
    return PollsApi(dio, serializers);
  }

  /// Get PreferencesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PreferencesApi getPreferencesApi() {
    return PreferencesApi(dio, serializers);
  }

  /// Get ProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProfileApi getProfileApi() {
    return ProfileApi(dio, serializers);
  }

  /// Get PushApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PushApi getPushApi() {
    return PushApi(dio, serializers);
  }

  /// Get ReportsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReportsApi getReportsApi() {
    return ReportsApi(dio, serializers);
  }

  /// Get ScheduledStatusesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ScheduledStatusesApi getScheduledStatusesApi() {
    return ScheduledStatusesApi(dio, serializers);
  }

  /// Get SearchApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SearchApi getSearchApi() {
    return SearchApi(dio, serializers);
  }

  /// Get StatusesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StatusesApi getStatusesApi() {
    return StatusesApi(dio, serializers);
  }

  /// Get StreamingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StreamingApi getStreamingApi() {
    return StreamingApi(dio, serializers);
  }

  /// Get SuggestionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SuggestionsApi getSuggestionsApi() {
    return SuggestionsApi(dio, serializers);
  }

  /// Get TagsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TagsApi getTagsApi() {
    return TagsApi(dio, serializers);
  }

  /// Get TimelinesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TimelinesApi getTimelinesApi() {
    return TimelinesApi(dio, serializers);
  }

  /// Get TrendsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrendsApi getTrendsApi() {
    return TrendsApi(dio, serializers);
  }

  /// Get WellKnownApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WellKnownApi getWellKnownApi() {
    return WellKnownApi(dio, serializers);
  }
}
