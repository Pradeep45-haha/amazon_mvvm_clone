import '../data_model/product.dart';

class ProductRepository {
  Product _product = Product(
    images: [],
    name: "",
    quantity: 0,
    id: "",
    description: "",
    category: "",
    price: 0,
    rating: 0,
    noOfReviews: 0,
  );

  get getProduct {
    return _product;
  }

  set setProduct(Product value) {
    _product = value;
  }
}
