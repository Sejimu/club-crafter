import 'package:clubcrafter/src/core/utils/constants/network_constants.dart';
import 'package:clubcrafter/src/core/utils/failure/dio_failure.dart';
import 'package:dio/dio.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = _handleError(error);
    } else {
      failure = DataSource.defaultError.getFailure();
    }
  }
}

Failure _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectionTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.receiveTimeout.getFailure();
    case DioExceptionType.badResponse:

      ///test todo 400, 401, 404
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return Failure(
          error.response?.statusCode ?? 0,
          error.response.toString(),
        );
      } else {
        return DataSource.defaultError.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.cancel.getFailure();
    default:
      return DataSource.defaultError.getFailure();
  }
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.success:
        return const Failure(ResponseCode.SUCCESS, success);
      case DataSource.noContent:
        return const Failure(ResponseCode.NO_CONTENT, success);
      case DataSource.badRequest:
        return const Failure(
          ResponseCode.BAD_REQUEST,
          strBadRequestError,
        );
      case DataSource.forbidden:
        return const Failure(
          ResponseCode.FORBIDDEN,
          strForbiddenError,
        );
      case DataSource.unauthorised:
        return const Failure(
          ResponseCode.UNAUTORISED,
          strUnauthorizedError,
        );
      case DataSource.notFound:
        return const Failure(ResponseCode.NOT_FOUND, strNotFoundError);
      case DataSource.internalServerError:
        return const Failure(
          ResponseCode.INTERNAL_SERVER_ERROR,
          strInternalServerError,
        );
      case DataSource.connectionTimeout:
        return const Failure(
          ResponseCode.CONNECT_TIMEOUT,
          strTimeoutError,
        );
      case DataSource.cancel:
        return const Failure(ResponseCode.CANCEL, strDefaultError);
      case DataSource.receiveTimeout:
        return const Failure(
          ResponseCode.RECIEVE_TIMEOUT,
          strTimeoutError,
        );
      case DataSource.sendTimeout:
        return const Failure(
          ResponseCode.SEND_TIMEOUT,
          strTimeoutError,
        );
      case DataSource.cacheError:
        return const Failure(ResponseCode.CACHE_ERROR, strCacheError);
      case DataSource.noInternetConnection:
        return const Failure(
          ResponseCode.NO_INTERNET_CONNECTION,
          strNoInternetError,
        );
      case DataSource.defaultError:
        return const Failure(ResponseCode.DEFAULT, strDefaultError);
    }
  }
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; // failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorised,
  notFound,
  internalServerError,
  connectionTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultError
}
