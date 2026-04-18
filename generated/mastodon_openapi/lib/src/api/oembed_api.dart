//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:mastodon_openapi/src/api_util.dart';
import 'package:mastodon_openapi/src/model/error.dart';
import 'package:mastodon_openapi/src/model/o_embed_response.dart';
import 'package:mastodon_openapi/src/model/validation_error.dart';

class OembedApi {
  final Dio _dio;

  final Serializers _serializers;

  const OembedApi(this._dio, this._serializers);

  /// Get OEmbed info as JSON
  /// Version history:  1.0.0 - added
  ///
  /// Parameters:
  /// * [url] - URL of a status.
  /// * [maxheight] - Height of the iframe. Defaults to null
  /// * [maxwidth] - Width of the iframe. Defaults to 400
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OEmbedResponse] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get OEmbed info as JSON Documentation](https://docs.joinmastodon.org/methods/oembed/#get)
  Future<Response<OEmbedResponse>> getOembed({
    required String url,
    int? maxheight = null,
    int? maxwidth = 400,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/oembed';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'url': encodeQueryParameter(_serializers, url, const FullType(String)),
      if (maxheight != null)
        r'maxheight':
            encodeQueryParameter(_serializers, maxheight, const FullType(int)),
      if (maxwidth != null)
        r'maxwidth':
            encodeQueryParameter(_serializers, maxwidth, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    OEmbedResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OEmbedResponse),
            ) as OEmbedResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OEmbedResponse>(
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
