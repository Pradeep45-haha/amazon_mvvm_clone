// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
import '../../domain/product/product.dart';

class ProductDto {
  final String name;
  final String description;
  final double price;
  final double quantity;
  final List<String> reviews;
  final double rating;
  final List<String> imageUrls;

  final String category;
  final String currency;
  final String version;
  final String id;

  ProductDto({
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.reviews,
    required this.rating,
    required this.imageUrls,
    required this.category,
    required this.currency,
    required this.id,
    required this.version,
  });

  factory ProductDto.fromDomain(Product product) {
    List<Review> lisofReview = product.reviews.getOrCrash();
    int listReLen = lisofReview.length;
    List<String> reviews = [];
    for (int i = 0; i < listReLen; i++) {
      reviews.add(lisofReview[i].getOrCrash());
    }
    List<ImageUrl> lisofImageUrls = product.imageUrls.getOrCrash();
    int listImgUrlLen = lisofImageUrls.length;
    List<String> imageUrls = [];
    for (int i = 0; i < listImgUrlLen; i++) {
      imageUrls.add(lisofImageUrls[i].getOrCrash());
    }

    return ProductDto(
      name: product.name.getOrCrash(),
      description: product.description.getOrCrash(),
      price: product.price.getOrCrash(),
      quantity: product.quantity.getOrCrash(),
      reviews: reviews,
      rating: product.rating.getOrCrash(),
      imageUrls: imageUrls,
      category: product.catogery.getOrCrash(),
      currency: product.currency.getOrCrash(),
      version: "",
      id: "",
    );
  }

  static Product toDomain(ProductDto productDto) {
    return Product(
      name: Name(productDto.name),
      description: Description(productDto.description),
      price: Price(productDto.price),
      quantity: Quantity(productDto.quantity),
      catogery: Catogery(productDto.category),
      rating: Rating(productDto.rating),
      reviews: Reviews(
        productDto.reviews
            .map(
              (e) => Review(e),
            )
            .toList(),
      ),
      currency: Currency(productDto.currency),
      imageUrls: ImageUrls(
        productDto.imageUrls
            .map(
              (e) => ImageUrl(e),
            )
            .toList(),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'quantity': quantity,
      'reviews': reviews,
      'rating': rating,
      'imageUrls': imageUrls,
      'category': category,
      'currency': currency,
    };
  }

  factory ProductDto.fromMap(Map<String, dynamic> map) {
    List<dynamic> tempImageUrls = map["imageUrls"];
    List<String> strTempImgUrls = [];
    for (int i = 0; i < tempImageUrls.length; i++) {
      strTempImgUrls.add(tempImageUrls[i].toString());
    }
    List<dynamic> tempReviews = map["reviews"];
    List<String> strTempReviews = [];
    for (int i = 0; i < tempReviews.length; i++) {
      strTempReviews.add(tempReviews[i].toString());
    }
    return ProductDto(
      name: map['name'] as String,
      description: map['description'] as String,
      price: double.parse(map['price'].toString()),
      quantity: double.parse(map['quantity'].toString()),
      reviews: strTempReviews,
      rating: double.parse(map['rating'].toString()),
      imageUrls: strTempImgUrls,
      category: map['category'] as String,
      currency: map['currency'] as String,
      id: map["_id"].toString(),
      version: map["__v"].toString(),
    );
  }

  String toJson() => json.encode(
        toMap(),
      );

  factory ProductDto.fromJson(String source) =>
      ProductDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductDto(name: $name, description: $description, price: $price, quantity: $quantity, reviews: $reviews, rating: $rating, imageUrls: $imageUrls, category: $category, currency: $currency, version: $version, id: $id)';
  }
}
