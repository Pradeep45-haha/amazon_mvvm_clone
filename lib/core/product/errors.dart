import 'failure.dart';

class UnexpectedValueError extends Error {
  final ProductValueFailure valueFailure;
  UnexpectedValueError({required this.valueFailure});

  @override
  String toString() {
    return Error.safeToString("Unexpected value error: $valueFailure");
  }
}
