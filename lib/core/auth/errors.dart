import 'failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError({required this.valueFailure});

  @override
  String toString() {
    return Error.safeToString("Unexpected value error: $valueFailure");
  }
}
