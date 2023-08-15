import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product(
      {required Name name,
      required Description description,
      required Price price,
      required Quantity quantity,
      required Catogery catogery,
      required Rating rating,
      required Reviews reviews,
      required Currency currency,
      required ImageUrls imageUrls,
     }) = _Product;
}

@freezed
abstract class ProductImage with _$ProductImage{
  const factory ProductImage({required Images images}) = _ProductImage;
}