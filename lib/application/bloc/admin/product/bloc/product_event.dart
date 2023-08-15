part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  factory ProductEvent.selectProductImages() = SelectProductImages;
  
  factory ProductEvent.productNameChanged({
    required String value,
  }) = ProductNameChanged;
  factory ProductEvent.productDescriptionChanged({
    required String value,
  }) = ProductDescriptionChanged;
  factory ProductEvent.productQuantityChanged({
    required double value,
  }) = ProductQuantityChanged;
  factory ProductEvent.productPriceChanged({
    required double value,
  }) = ProductPriceChanged;
  factory ProductEvent.productCategoryChanged({
    required String value,
  }) = ProductCategoryChanged;
  factory ProductEvent.productCurrencyChanged({
    required String value,
  }) = ProductCurrencyChanged;
  factory ProductEvent.productRatingChanged({
    required double value,
  }) = ProductRatingChanged;
  factory ProductEvent.addProduct({
    required ProductImage productImage,
    required Product product,
  }) = AddProduct;
  factory ProductEvent.deleteProduct({
    required List<Product> products,
  }) = DeleteProduct;
  factory ProductEvent.updateProduct({
    required Product product,
  }) = UpdateProduct;
  factory ProductEvent.getProduct({
    TokenKey? loginToken,
    String? id,
    String? category,
    double? price,
    String? productName,
  }) = GetProduct;
}
