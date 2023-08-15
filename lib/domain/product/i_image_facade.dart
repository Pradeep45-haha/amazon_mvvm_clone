import 'package:amazon_mvvm_clone/domain/product/product_failure.dart';
import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:dartz/dartz.dart';

abstract class IImageFacade {
  Future<Either<ProductFailure, List<CloudinaryResponse>>> postImage({
    required Name name,
    required Images images,
  });
  Future<Either<ProductFailure, List<CloudinaryResponse>>> updateImage({
    required Name name,
    required Images images,
  });
   Future<Either<ProductFailure, List<CloudinaryResponse>>> deleteImage({
    required Name name,
    required Images images,
  });
}

