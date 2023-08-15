// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
abstract class ProductValueFailure<T> with _$ProductValueFailure<T> {
  const factory ProductValueFailure.longName({
    required T failedValue,
  }) = LongName<T>;
  const factory ProductValueFailure.noName({
    required T failedValue,
  }) = NoName<T>;
  const factory ProductValueFailure.longDescription({
    required T failedValue,
  }) = LongDescription<T>;
  const factory ProductValueFailure.shortDescription({
    required T failedValue,
  }) = ShortDescription<T>;
  const factory ProductValueFailure.priceIsNegative({
    required T failedValue,
  }) = PriceIsNegative<T>;
  const factory ProductValueFailure.veryHighPrice({
    required T failedValue,
  }) = VeryHighPrice<T>;
  const factory ProductValueFailure.noSuchCurrency({
    required T failedValue,
  }) = NoSuchCurrency<T>;
  const factory ProductValueFailure.veryHighQuantity({
    required T failedValue,
  }) = VeryHighQuantity<T>;
  const factory ProductValueFailure.quantityIsNegative({
    required T failedValue,
  }) = QuantityIsNegative<T>;
  const factory ProductValueFailure.quantityIsZero({
    required T failedValue,
  }) = QuantityIsZero<T>;
  const factory ProductValueFailure.invalidCatogery({
    required T failedValue,
  }) = InvalidCatogery<T>;
  const factory ProductValueFailure.longReview({
    required T failedValue,
  }) = LongReview<T>;
  const factory ProductValueFailure.invalidRating({
    required T failedValue,
  }) = InvalidRating<T>;
  const factory ProductValueFailure.ratingIsNegative({
    required T failedValue,
  }) = RatingIsNegative<T>;
  const factory ProductValueFailure.tooHighRating({
    required T failedValue,
  }) = TooHighRating<T>;
  const factory ProductValueFailure.noImageUrl({
    required T failedValue,
  }) = NoImageUrl<T>;
  const factory ProductValueFailure.invalidImageFile({
    required T failedValue,
  }) = InvalidImageFile<T>;
}
