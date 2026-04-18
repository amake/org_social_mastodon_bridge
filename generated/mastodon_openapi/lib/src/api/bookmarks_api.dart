//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/api_util.dart';
import 'package:mastodon_openapi/src/model/error.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:mastodon_openapi/src/model/validation_error.dart';

class BookmarksApi {
  final Dio _dio;

  final Serializers _serializers;

  const BookmarksApi(this._dio, this._serializers);

  /// View bookmarked statuses
  /// Statuses the user has bookmarked.  Version history:  3.1.0 - added\\ 3.3.0 - both &#x60;min_id&#x60; and &#x60;max_id&#x60; can be used at the same time now
  ///
  /// Parameters:
  /// * [limit] - Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses.
  /// * [maxId] - Internal parameter. Use HTTP `Link` header for pagination.
  /// * [minId] - Internal parameter. Use HTTP `Link` header for pagination.
  /// * [sinceId] - Internal parameter. Use HTTP `Link` header for pagination.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Status>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [View bookmarked statuses Documentation](https://docs.joinmastodon.org/methods/bookmarks/#get)
  Future<Response<BuiltList<Status>>> getBookmarks({
    int? limit = 20,
    String? maxId,
    String? minId,
    String? sinceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/bookmarks';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'OAuth2',
          },
          {
            'type': 'oauth2',
            'name': 'OAuth2',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (limit != null)
        r'limit':
            encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (maxId != null)
        r'max_id':
            encodeQueryParameter(_serializers, maxId, const FullType(String)),
      if (minId != null)
        r'min_id':
            encodeQueryParameter(_serializers, minId, const FullType(String)),
      if (sinceId != null)
        r'since_id':
            encodeQueryParameter(_serializers, sinceId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<Status>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [FullType(Status)]),
            ) as BuiltList<Status>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Status>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
