class AppException implements Exception {
  final String message;
  final int? statusCode;

  const AppException(this.message, {this.statusCode});

  @override
  String toString() => 'AppException($statusCode): $message';
}

class NetworkException extends AppException {
  const NetworkException(super.message);
}

class UnauthorizedException extends AppException {
  const UnauthorizedException()
      : super('Sesi habis, silakan login kembali', statusCode: 401);
}

class ServerException extends AppException {
  const ServerException(super.message, {super.statusCode});
}
