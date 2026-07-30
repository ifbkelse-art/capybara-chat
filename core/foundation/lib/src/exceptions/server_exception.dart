import 'package:foundation/foundation.dart';

final class ServerException extends AppException {
  const ServerException({required super.message, super.stackTrace});
}
