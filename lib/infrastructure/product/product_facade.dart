import 'package:amazon_mvvm_clone/domain/auth/value_object.dart';
import 'package:amazon_mvvm_clone/domain/product/i_product_facade.dart';
import 'package:amazon_mvvm_clone/domain/product/product.dart';
import 'package:amazon_mvvm_clone/domain/product/product_failure.dart';
import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
import 'package:amazon_mvvm_clone/infrastructure/data_trasnfer_object/product_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../constants/global_variables.dart';

class ProductFacade implements IProductFacade {
  @override
  Future<Either<ProductFailure, http.StreamedResponse>> addProduct({
    required Product product,
    required TokenKey loginToken,
    required ProductImage productImage,
  }) async {
    try {
      // print(
      //   " product value from product facade ${product.imageUrls.value.toString()}",
      // );
      ProductDto productDto = ProductDto.fromDomain(product);
      print(
          "product dto from product facade ${productDto.toJson().toString()}");
      http.MultipartRequest multipartRequest = http.MultipartRequest(
        "POST",
        Uri.parse("$uri/admin/add/product"),
      );
      multipartRequest.headers.addAll(
        {
          
          "loginToken": loginToken.getOrCrash(),
          "contentType":'multipart/form-data',
        },
      );
      List<PImage> productImages = productImage.images.getOrCrash();
      int length = productImages.length;
      for (int i = 0; i < length; i++) {
        String fileName = productImages[i].getOrCrash().path.split('/').last;
        multipartRequest.files.add(await http.MultipartFile.fromPath(
          "image",
          productImages[i].getOrCrash().path,
          filename: fileName,
        ));
      }
      multipartRequest.fields["product"] = productDto.toJson();

      http.StreamedResponse response = await multipartRequest.send();
      // await http.post(
      //   Uri.parse("$uri/admin/add/product"),
      //   headers: <String, String>{
      //     'Content-Type': 'application/json; charset=UTF-8',
      //     "loginToken": loginToken.getOrCrash(),
      //   },
      //   body: productDto.toJson(),
      // );

      if (response.statusCode == 200) {
        return right(response);
      }
      debugPrint(response.statusCode.toString());
      return left(
        const ProductFailure.serverError(),
      );
    } catch (e) {
      debugPrint("from product facade ${e.toString()}");
      return left(
        const ProductFailure.serverError(),
      );
    }
  }

  @override
  Future<Either<ProductFailure, http.Response>> deleteProduct(
      {required String id}) async {
    try {
      http.Response response = await http
          .delete(Uri.parse("$uri/delete/Product"), headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }, body: {
        "id": id,
      });
      if (response.statusCode == 200) {
        return right(response);
      }
      //to implement if product not found
      return left(
        const ProductFailure.serverError(),
      );
    } catch (e) {
      debugPrint(e.toString());
      return left(
        const ProductFailure.serverError(),
      );
    }
  }

  @override
  Future<Either<ProductFailure, http.Response>> getProduct({
    required TokenKey loginToken,
    required String? id,
    required String? category,
    required double? price,
    required String? productName,
  }) async {
    try {
      http.Response response = await http.get(
        Uri.parse("$uri/admin/get/Product"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "loginToken": loginToken.getOrCrash(),
          "id": id ?? "",
          "category": category ?? "",
          "price": price.toString(),
        },
      );

      if (response.statusCode == 200) {
        return right(response);
      }

      //to implement if product not found
      return left(
        const ProductFailure.serverError(),
      );
    } catch (e) {
      debugPrint(e.toString());
      return left(
        const ProductFailure.serverError(),
      );
    }
  }

  @override
  Future<Either<ProductFailure, http.Response>> updateProduct(
      {required String id, required Product product}) async {
    try {
      http.Response response = await http.patch(
        Uri.parse("$uri/get/Product"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "id": id,
          "product": {
            "name": product.name.getOrCrash(),
            "description": product.description.getOrCrash(),
            "category": product.catogery.getOrCrash(),
            "quantity": product.quantity.getOrCrash(),
            "reviews": product.reviews.getOrCrash(),
            "rating": product.rating.getOrCrash(),
            "price": product.price.getOrCrash(),
            "currency": product.currency.getOrCrash(),
          }.toString(),
        },
      );
      if (response.statusCode == 200) {
        return right(response);
      }
      //to implement if product not found
      return left(
        const ProductFailure.serverError(),
      );
    } catch (e) {
      debugPrint(e.toString());
      return left(
        const ProductFailure.serverError(),
      );
    }
  }
}
