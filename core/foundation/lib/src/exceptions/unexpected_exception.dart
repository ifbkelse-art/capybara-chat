import 'package:foundation/foundation.dart';

final class UnexpectedException extends AppException {
  const UnexpectedException({required super.message, super.stackTrace});
}
