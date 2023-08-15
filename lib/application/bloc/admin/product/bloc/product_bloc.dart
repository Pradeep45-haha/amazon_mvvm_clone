import 'dart:convert';
import 'dart:io';
import 'package:amazon_mvvm_clone/domain/auth/value_object.dart';
import 'package:amazon_mvvm_clone/domain/product/i_product_facade.dart';
import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
import 'package:amazon_mvvm_clone/infrastructure/data_trasnfer_object/product_dto.dart';
import 'package:amazon_mvvm_clone/infrastructure/local_storage/state_persistance/state_persistance.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter/material.dart' as material;
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../constants/utils.dart';
import '../../../../../domain/product/product.dart';
import '../../../../../domain/product/product_failure.dart';
import '../../../../../domain/repository/app_repository.dart';
import 'package:http/http.dart' as http;

part "product_bloc.freezed.dart";
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  List<File> images = [];
  List<Product> gproducts = [];
  material.GlobalKey formKey = material.GlobalKey();
  material.ScrollController productScrollController =
      material.ScrollController();
  material.TextEditingController productNameController =
      material.TextEditingController();

  material.TextEditingController productDescriptionController =
      material.TextEditingController();
  material.TextEditingController productPriceController =
      material.TextEditingController();
  material.TextEditingController productQuantityController =
      material.TextEditingController();
  material.TextEditingController currencyController =
      material.TextEditingController();
  String categoryValue = "Mobile";
  TokenKey gtokenKey = TokenKey("");

  ProductBloc({
    required AppRepository appRepository,
    // required IImageFacade iImageFacade,
    required IProductFacade iProductFacade,
  }) : super(ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.map(
        addProduct: (e) async {
          // print(
          //     "from product bloc images length is ${e.productImage.images.length}");
          //some problem may occure
          // Either<ProductFailure, List<CloudinaryResponse>> response =
          //     await iImageFacade.postImage(
          //         name: e.product.name, images: e.productImage.images);
          // response.fold((l) {
          //   emit(
          //     state.copyWith(
          //       productFailureOrSuccess: some(
          //         left(l),
          //       ),
          //     ),
          //   );
          // }, (r) {
          //   for (int i = 0; i < r.length; i++) {
          //     print("from product bloc add product image count is ${r.length}");
          //     e.product.imageUrls.add(
          //       ImageUrl(r[i].secureUrl),
          //     );
          //   }
          // });
          StatePersistance statePersistance = StatePersistance();
          String? loginToken =
              await statePersistance.getUserLoginKey(key: "loginKey");

          TokenKey tokenKey;
          if (loginToken != null) {
            gtokenKey = TokenKey(loginToken);
            tokenKey = TokenKey(loginToken);
            Either<ProductFailure, http.StreamedResponse> response1 =
                await iProductFacade.addProduct(
                    productImage: e.productImage,
                    product: e.product,
                    loginToken: tokenKey);

            response1.fold((l) {
              print(l.toString());
            }, (r) {
              print(r.toString());
            });
          }
        },
        deleteProduct: (e) async {},
        updateProduct: (e) async {},
        getProduct: (e) async {
          print("get product event called");
          if (e.loginToken == null) {
            StatePersistance statePersistance = StatePersistance();
            String? loginToken =
                await statePersistance.getUserLoginKey(key: "loginKey");

            TokenKey tokenKey;
            if (loginToken != null) {
              tokenKey = TokenKey(loginToken);
              Either<ProductFailure, http.Response> response =
                  await iProductFacade.getProduct(
                loginToken: tokenKey,
                id: e.id,
                category: e.category,
                price: e.price,
                productName: e.productName,
              );
              response.fold((l) {
                emit(state.copyWith(productFailureOrSuccess: some(left(l))));
              }, (r) {
                Map<String, dynamic> products = jsonDecode(r.body);
                List<dynamic> productList = products["products"];
                List<ProductDto> productMapList = [];
                for (int i = 0; i < productList.length; i++) {
                  productMapList.add(
                    ProductDto.fromMap(productList[i]),
                  );
                }
                int i = 0;
                print("product map list ${productMapList.toString()}");
                print("productmaplist length is ${productMapList.length}");
                List<Product> listProducts = productMapList.map((e) {
                  print("product map list ${e.toString()}");

                  print("from product count i is $i");
                  gproducts.add(
                    ProductDto.toDomain(e),
                  );
                  i++;
                  return ProductDto.toDomain(e);
                }).toList();
                print("from product bloc get product ${gproducts.toString()}");

                emit(state.copyWith(
                    productFailureOrSuccess: some(right(listProducts))));
              });
            }
          }
        },
        selectProductImages: (e) async {
          List<File> imageFile = await CustmFilesPicker.getFiles();
          images.addAll(imageFile);
          emit(
            state.copyWith(
              selectedImageFile: some(
                right(
                  Images(
                    images.map((e) {
                      return PImage(e);
                    }).toList(),
                  ),
                ),
              ),
            ),
          );
          return;
        },
        productCategoryChanged: (e) {
          emit(
            state.copyWith(
              productCategory: Catogery(e.value),
            ),
          );
        },
        productDescriptionChanged: (e) {
          emit(
            state.copyWith(
              productDescription: Description(e.value),
            ),
          );
        },
        productNameChanged: (e) {
          emit(
            state.copyWith(
              productName: Name(e.value),
            ),
          );
        },
        productPriceChanged: (e) {
          emit(
            state.copyWith(
              productPrice: Price(e.value),
            ),
          );
        },
        productQuantityChanged: (e) {
          emit(
            state.copyWith(
              productQuantity: Quantity(e.value),
            ),
          );
        },
        productCurrencyChanged: (e) {
          emit(
            state.copyWith(
              productCurrency: Currency(e.value),
            ),
          );
        },
        productRatingChanged: (e) {
          emit(
            state.copyWith(),
          );
        },
      );
    });
  }
}
