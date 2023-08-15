import 'dart:io';

import 'package:amazon_mvvm_clone/core/product/value_validator.dart';
import 'package:dartz/dartz.dart';
import '../../core/product/failure.dart';
import '../../core/product/product_value_object.dart';

class Name extends ProductValueObject<String> {
  @override
  final Either<ProductValueFailure<String>, String> value;
  factory Name(String input) {
    return Name._(ProductValidator.validateName(input));
  }
  const Name._(this.value);
}

class Description extends ProductValueObject<String> {
  @override
  final Either<ProductValueFailure<String>, String> value;
  factory Description(String input) {
    return Description._(ProductValidator.validateDescription(input));
  }
  const Description._(this.value);
}

class Price extends ProductValueObject<double> {
  @override
  final Either<ProductValueFailure<double>, double> value;
  factory Price(double input) {
    return Price._(ProductValidator.validatePrice(input));
  }
  const Price._(this.value);
}

class Currency extends ProductValueObject<String> {
  @override
  final Either<ProductValueFailure<String>, String> value;
  factory Currency(String input) {
    return Currency._(ProductValidator.validateCurrency(input));
  }
  const Currency._(this.value);
}

class Quantity extends ProductValueObject<double> {
  @override
  final Either<ProductValueFailure<double>, double> value;
  factory Quantity(double input) {
    return Quantity._(ProductValidator.validateQuantity(input));
  }

  const Quantity._(this.value);
}

class Catogery extends ProductValueObject<String> {
  @override
  final Either<ProductValueFailure<String>, String> value;
  factory Catogery(String input) {
    return Catogery._(ProductValidator.validateCategory(input));
  }
  const Catogery._(this.value);
}

class Reviews extends ProductValueObject<List<Review>> {
  @override
  final Either<ProductValueFailure<List<Review>>, List<Review>> value;
  factory Reviews(List<Review> input) {
    return Reviews._(ProductValidator.validateReviews(input));
  }
  const Reviews._(this.value);
}

class Review extends ProductValueObject<String> {
  @override
  final Either<ProductValueFailure<String>, String> value;
  factory Review(String input) {
    return Review._(ProductValidator.validateReview(input));
  }
  const Review._(this.value);
}

class Rating extends ProductValueObject<double> {
  @override
  final Either<ProductValueFailure<double>, double> value;
  factory Rating(double input) {
    return Rating._(ProductValidator.validateRating(input));
  }
  const Rating._(this.value);
}

class ImageUrl extends ProductValueObject<String> {
  @override
  final Either<ProductValueFailure<String>, String> value;
  factory ImageUrl(String input) {
    return ImageUrl._(ProductValidator.validateImageUrl(input));
  }
  const ImageUrl._(this.value);
}

class ImageUrls extends ProductValueObject<List<ImageUrl>> {
  @override
  final Either<ProductValueFailure<List<ImageUrl>>, List<ImageUrl>> value;

  factory ImageUrls(List<ImageUrl> input) {
    return ImageUrls._(ProductValidator.validateImageUrls(input));
  }

  void add(ImageUrl input) {
    value.fold((l) {
      l.failedValue.add(input);
    }, (r) {
      r.add(input);
    });
  }

  const ImageUrls._(this.value);
}

class PImage extends ProductValueObject<File> {
  @override
  final Either<ProductValueFailure<File>, File> value;
  factory PImage(File input) {
    return PImage._(ProductValidator.validateImageFile(input));
  }
  const PImage._(this.value);
}

class Images extends ProductValueObject<List<PImage>> {
  @override
  final Either<ProductValueFailure<List<PImage>>, List<PImage>> value;
  get length {
   return value.fold((l) {
     // print("form images value object left value");
      return null;
    }, (r) {
    //  print("from images value object right value image count is ${r.length}");
    return  r.length;
    });
  }

  factory Images(List<PImage> input) {
    return Images._(ProductValidator.validateImageFiles(input));
  }
  const Images._(this.value);
}
