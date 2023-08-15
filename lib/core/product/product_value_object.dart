// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:dartz/dartz.dart';
import 'errors.dart';
import 'failure.dart';

// part 'value_objects.freezed.dart';

@immutable
abstract class ProductValueObject<T> {
  const ProductValueObject();
  Either<ProductValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold(
        (l) => throw UnexpectedValueError(valueFailure: l), (r) => r);
  }

  bool isValid() {
    return value.isRight();
  }
  

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}
