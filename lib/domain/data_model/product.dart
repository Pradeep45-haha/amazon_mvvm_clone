import 'dart:convert';

class Product {
  final String? id;
  //final String? userId;
  final String name;
  final double quantity;
  final List<String> images;
  final String description;
  final String category;
  final double price;
  final double rating;
  final int noOfReviews;

  Product({
    //this.userId,
    this.id,
    required this.name,
    required this.quantity,
    required this.images,
    required this.description,
    required this.category,
    required this.price,
    required this.rating,
    required this.noOfReviews,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'quantity': quantity,
      'images': images,
      'description': description,
      'category': category,
      'price': price,
      'rating': rating,
      'noOfReviews': noOfReviews,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      description: map['description'] as String,
      category: map['category'] as String,
      price: map['price'] as double,
      rating: map['rating'] as double,
      noOfReviews: map['noOfReviews'] as int,
      id: map['_id'] != null ? map['_id'] as String : null,
      name: map['name'] as String,
      quantity: map['quantity'] as double,
      images: List<String>.from((map['images'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
