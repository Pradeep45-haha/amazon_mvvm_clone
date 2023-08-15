part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required Option<Either<ProductFailure, List<Product>>> productFailureOrSuccess,
    required Option<Either<ProductFailure, Images>> selectedImageFile,
    required Name productName,
    required Description productDescription,
    required Price productPrice,
    required Quantity productQuantity,
    required Catogery productCategory,
    required Currency productCurrency,
    required Rating productRating,
    required Reviews productReview,
  }) = _ProductState;
  factory ProductState.initial() {
    return ProductState(
      productFailureOrSuccess: none(),
      selectedImageFile: none(),
      productCategory: Catogery("Mobile"),
      productDescription: Description(""),
      productName: Name(""),
      productPrice: Price(0.0),
      productQuantity: Quantity(0.0),
      productCurrency: Currency(""),
      productRating: Rating(0.0),
      productReview: Reviews(
        [
          Review(""),
        ],
      ),
    );
  }
}
