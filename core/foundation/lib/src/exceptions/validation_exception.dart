import 'package:foundation/foundation.dart';

final class ValidationException extends AppException {
  const ValidationException({required super.message, super.stackTrace});
}
