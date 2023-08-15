import 'dart:io';

import 'package:amazon_mvvm_clone/domain/product/value_object.dart';

import '../../domain/product/product.dart';

class ProductImageDto {
  List<File> images;
  ProductImageDto({required this.images});
  factory ProductImageDto.fromDomain(ProductImage productImage) {
    List<File> tempImages = [];
    List<PImage> images = productImage.images.getOrCrash();
    for (int i = 0; i < images.length; i++) {
      tempImages.add(
        images[i].getOrCrash(),
      );
    }
    return ProductImageDto(
      images: tempImages,
    );
  }
  ProductImage toDomain() {
    List<PImage> productImages = [];
    for (int i = 0; i < images.length; i++) {
      productImages.add(
        PImage(images[i]),
      );
    }
    ProductImage productImage = ProductImage(
      images: Images(productImages),
    );
    return productImage;
  }
}
