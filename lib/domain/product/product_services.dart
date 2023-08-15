import 'dart:io';
import 'package:amazon_mvvm_clone/constants/error_handling.dart';
import 'package:amazon_mvvm_clone/constants/global_variables.dart';
import 'package:amazon_mvvm_clone/domain/data_model/error_model/error.dart';
import 'package:amazon_mvvm_clone/domain/product/product_failure.dart';
import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:amazon_mvvm_clone/domain/data_model/product.dart';
import 'package:cloudinary_public/cloudinary_public.dart';

class AdminServices {
  Future<Either<ProductFailure, List<CloudinaryResponse>>> postImage({
    required Name name,
    required Images images,
  }) async {
    final cloudinary = CloudinaryPublic("dvdlf5fmk", "v3brzvge");
    List<CloudinaryResponse> listResponse = [];
    try {
      for (int i = 0; i < images.getOrCrash().length; i++) {
        CloudinaryResponse response = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images.getOrCrash()[i].getOrCrash().path,
              folder: name.getOrCrash()),
        );
        listResponse.add(response);
      }
      return right(listResponse);
    } catch (e) {
      return left(const ProductFailure.serverError());
    }
  }

  Future<HttpResponseData> sellProduct({
    required String name,
    required String description,
    required double price,
    required double quantity,
    required String category,
    required List<File> images,
    required String loginToken,
  }) async {
    try {
      final cloudinary = CloudinaryPublic("dvdlf5fmk", "v3brzvge");
      List<String> imageUrls = [];
      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse response = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: name),
        );
        imageUrls.add(response.secureUrl);
      }
      Product product = Product(
        name: name,
        quantity: quantity,
        images: imageUrls,
        description: description,
        category: category,
        price: price,
        rating: 0,
        noOfReviews: 0,
      );
      debugPrint("from product services ${product.toJson().toString()}");
      http.Response response =
          await http.post(Uri.parse("$uri/admin/add-product"),
              headers: {
                "Content-Type": "application/json; charset = UTF-8",
                "loginToken": loginToken,
              },
              body: product.toJson());
      return httpErrorHandle(response: response);
    } catch (e) {
      http.Response response = http.Response("", 500);
      return HttpResponseData(
          code: 500.toString(),
          message: e.toString(),
          isError: true,
          response: response);
    }
  }
}
