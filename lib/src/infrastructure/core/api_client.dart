import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pet_assg/src/infrastructure/core/failure/failure.dart';

/// Custom Client for API calls with prefix Headers, URI
/// and Failures
class DioClient {
  static final Dio _dio = Dio();

  ///* GET Request
  static Future<Response> get(
    String url,
  ) async {
    try {
      final response = await _dio
          .get(
            url,
          )
          .timeout(timeLimit);

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Failure.serverError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw Failure.serverError(
          code: e.response?.statusCode,
          message: e.response?.statusMessage,
        );
      } else {
        throw Failure.unexpected(
          message: e.toString(),
        );
      }
    } on SocketException catch (_) {
      throw const Failure.connection();
    } on ServerError catch (e) {
      throw Failure.serverError(
        code: e.code,
        message: e.message,
      );
    } catch (e) {
      throw Failure.unexpected(
        message: e.toString(),
      );
    }
  }

  ///* POST Request
  static Future<Response> post(
    String url, {
    Object? body,
  }) async {
    try {
      final response = await _dio
          .post(
            url,
            data: body,
          )
          .timeout(timeLimit);

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Failure.serverError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw Failure.serverError(
          code: e.response?.statusCode,
          message: e.response?.statusMessage,
        );
      } else {
        throw Failure.value(
          message: e.toString(),
        );
      }
    } on SocketException catch (_) {
      throw const Failure.connection();
    } on ServerError catch (e) {
      throw Failure.serverError(
        code: e.code,
        message: e.message,
      );
    } catch (e) {
      throw Failure.unexpected(
        message: e.toString(),
      );
    }
  }

  ///* DELETE Request
  static Future<Response> delete(
    String url, {
    Object? body,
  }) async {
    try {
      final response = await _dio
          .delete(
            url,
            data: body,
          )
          .timeout(timeLimit);

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Failure.serverError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw Failure.serverError(
          code: e.response?.statusCode,
          message: e.response?.statusMessage,
        );
      } else {
        throw Failure.value(
          message: e.toString(),
        );
      }
    } on SocketException catch (_) {
      throw const Failure.connection();
    } on ServerError catch (e) {
      throw Failure.serverError(
        code: e.code,
        message: e.message,
      );
    } catch (e) {
      throw Failure.unexpected(
        message: e.toString(),
      );
    }
  }
}

/// API request timeout duration
const timeLimit = Duration(milliseconds: 30000);
