import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        return ServerFailure('Request to the server was cancelled.');

      case DioErrorType.connectTimeout:
        return ServerFailure('Connection timed out.');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Receiving timeout occurred.');

      case DioErrorType.sendTimeout:
        return ServerFailure('Request send timeout.');

      case DioErrorType.response:
        return ServerFailure(_handleStatusCode(dioError.response?.statusCode));

      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return ServerFailure('No Internet.');
        }
        return ServerFailure('Unexpected error occurred.');

      default:
        return ServerFailure('Something went wrong');
    }
  }

  static String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request.';
      case 401:
        return 'Authentication failed.';
      case 403:
        return 'The authenticated user is not allowed to access the specified API endpoint.';
      case 404:
        return '404 Not Found';
      case 405:
        return 'Method not allowed. Please check the Allow header for the allowed HTTP methods.';
      case 415:
        return 'Unsupported media type. The requested content type or version number is invalid.';
      case 422:
        return 'Data validation failed.';
      case 429:
        return 'Too many requests.';
      case 500:
        return 'Internal server error.';
      default:
        return 'Oops something went wrong!';
    }
  }
}
