// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_failure.freezed.dart';

@freezed
abstract class ProductFailure with _$ProductFailure {
  const factory ProductFailure.cancelledByUser() = CancelledByUser;
  const factory ProductFailure.serverError() = ServerError;
  const factory ProductFailure.noSuchProduct() = NoSuchProduct;
  
}
