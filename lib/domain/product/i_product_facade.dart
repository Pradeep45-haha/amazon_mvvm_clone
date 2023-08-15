import 'package:amazon_mvvm_clone/domain/product/product.dart';
import 'package:amazon_mvvm_clone/domain/product/product_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../auth/value_object.dart';

abstract class IProductFacade {
  Future<Either<ProductFailure, http.StreamedResponse>> addProduct({
    required Product product,
    required TokenKey loginToken,
    required ProductImage productImage,
  });
  Future<Either<ProductFailure, http.Response>> deleteProduct({
    required String id,
  });
  Future<Either<ProductFailure, http.Response>> getProduct({
     required TokenKey loginToken,
    required String? id,
    required String? category,
    required double? price,
    required String? productName,
  });
  Future<Either<ProductFailure, http.Response>> updateProduct({
    required String id,
    required Product product,
  });
}
