import 'dart:io';

import 'package:amazon_mvvm_clone/constants/category.dart';
import 'package:amazon_mvvm_clone/constants/country_currency.dart';
import 'package:amazon_mvvm_clone/core/product/failure.dart';
import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
import 'package:dartz/dartz.dart';

const maxNameLength = 100;
const maxDescriptionLength = 750;
const minDescriptionLength = 2;
const maxPriceLimit = 1000000;
const maxQuantity = 10000;
const maxReviewLength = 500;
const maxRating = 5;

class ProductValidator {
  static Either<ProductValueFailure<String>, String> validateName(
      String input) {
    if (input.isEmpty) {
      return left(ProductValueFailure.noName(failedValue: input));
    }
    if (input.length >= maxNameLength) {
      return left(ProductValueFailure.longName(failedValue: input));
    }
    return right(input);
  }

  static Either<ProductValueFailure<String>, String> validateDescription(
      String input) {
    if (input.isEmpty) {
      return left(ProductValueFailure.shortDescription(failedValue: input));
    }
    if (input.length >= maxDescriptionLength) {
      return left(ProductValueFailure.longDescription(failedValue: input));
    }
    if (input.length <= minDescriptionLength) {
      return left(ProductValueFailure.shortDescription(failedValue: input));
    }
    return right(input);
  }

  static Either<ProductValueFailure<double>, double> validatePrice(
      double input) {
    if (input.isNegative) {
      return left(ProductValueFailure.priceIsNegative(failedValue: input));
    }
    if (input >= maxPriceLimit) {
      return left(ProductValueFailure.veryHighPrice(failedValue: input));
    }
    return right(input);
  }

  static Either<ProductValueFailure<String>, String> validateCurrency(
      String input) {
    for (int i = 0; i < currencies.length; i++) {
      print("from currency validator  currency is $input");
      if (input.contains(currencies[i].currencyCode)) {
        print("currency is validated");
        return right(input);
      }
    }

    return left(ProductValueFailure.noSuchCurrency(failedValue: input));
  }

  static Either<ProductValueFailure<double>, double> validateQuantity(
      double input) {
    if (input.isNegative) {
      return left(ProductValueFailure.quantityIsNegative(failedValue: input));
    }
    if (input == 0) {
      return left(ProductValueFailure.quantityIsZero(failedValue: input));
    }
    if (input >= maxQuantity) {
      return left(ProductValueFailure.tooHighRating(failedValue: input));
    }
    return right(input);
  }

  static Either<ProductValueFailure<String>, String> validateCategory(
      String input) {
    for (int i = 0; i < productCategories.length; i++) {
      if (input.contains(productCategories[i])) {
        print("from validate category user input is: $input and:${productCategories[i]}");
        return right(input);
      }
    }
    return left(ProductValueFailure.invalidCatogery(failedValue: input));
  }

  static Either<ProductValueFailure<String>, String> validateReview(
      String input) {
    if (input.isEmpty) {
      return right(input);
    }
    if (input.length >= maxReviewLength) {
      return left(ProductValueFailure.longReview(failedValue: input));
    }
    return right(input);
  }

  static Either<ProductValueFailure<double>, double> validateRating(
      double input) {
    if (input == 0) {
      return right(input);
    }
    if (input >= maxRating) {
      return left(ProductValueFailure.tooHighRating(failedValue: input));
    }
    if (input.isNegative) {
      return left(ProductValueFailure.ratingIsNegative(failedValue: input));
    }
    return right(input);
  }

  static Either<ProductValueFailure<String>, String> validateImageUrl(
      String input) {
    if (input.isEmpty) {
      return left(ProductValueFailure.noImageUrl(failedValue: input));
    }
    return right(input);
  }

  static Either<ProductValueFailure<List<ImageUrl>>, List<ImageUrl>>
      validateImageUrls(List<ImageUrl> input) {
    return right(input);
  }

  static Either<ProductValueFailure<List<Review>>, List<Review>>
      validateReviews(List<Review> input) {
    return right(input);
  }

  static Either<ProductValueFailure<File>, File> validateImageFile(File input) {
    return right(input);
    
  }

  static Either<ProductValueFailure<List<PImage>>, List<PImage>> validateImageFiles(
      List<PImage> input) {
    return right(input);
  }
}
