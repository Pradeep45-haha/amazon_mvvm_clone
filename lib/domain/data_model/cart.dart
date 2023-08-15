import 'package:amazon_mvvm_clone/domain/data_model/product.dart';

class Cart {
  List<Product> listProduct = [];

  Cart();

  add(Product value) {
    listProduct.add(value);
  }

  remove(Product value) {
    listProduct.remove(value);
  }

  getListOfProduct() {
    return listProduct;
  }

  isEmpty() {
    if (listProduct.isEmpty) {
      return true;
    }
    return false;
  }
}
