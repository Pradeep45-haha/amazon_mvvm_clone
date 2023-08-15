// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.shortPhoneNumber({
    required T failedValue,
  }) = ShortPhoneNumber<T>;
  const factory ValueFailure.longPhoneNumber({
    required T failedValue,
  }) = LongPhoneNumber<T>;
  const factory ValueFailure.noSuchPhoneCode({
    required T failedValue,
  }) = NoSuchPhoneCode<T>;
  const factory ValueFailure.invalidFullName({
    required T failedValue,
  }) = InvalidFullName<T>;
  const factory ValueFailure.noTokenKey({
    required T failedValue,
  }) = NoTokenKey<T>;
  const factory ValueFailure.weakPassword({
    required T failedValue,
  }) = WeakPassword<T>;
  const factory ValueFailure.notniquieId({
    required T failedValue,
  }) = NotniquieId<T>;
  const factory ValueFailure.noSuchCountryName({
    required T failedValue,
  }) = NoSuchCountryName<T>;
  const factory ValueFailure.noSuchCountryCode({
    required T failedValue,
  }) = NoSuchCountryCode<T>;
  const factory ValueFailure.noAddress({
    required T failedValue,
  }) = NoAddress<T>;
  const factory ValueFailure.noSuchUserType({
    required T failedValue,
  })= NoSuchUserType<T>;
}
