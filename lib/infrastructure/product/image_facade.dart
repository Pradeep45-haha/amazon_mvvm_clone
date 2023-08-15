// import 'package:amazon_mvvm_clone/domain/product/i_image_facade.dart';
// import 'package:amazon_mvvm_clone/domain/product/product_failure.dart';
// import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
// import 'package:cloudinary_public/cloudinary_public.dart';
// import 'package:dartz/dartz.dart';

// class ImageFacade implements IImageFacade {
//   @override
//   Future<Either<ProductFailure, List<CloudinaryResponse>>> postImage(
//       {required Name name, required Images images}) async {
//     final cloudinary = CloudinaryPublic("dvdlf5fmk", "v3brzvge");
//     List<CloudinaryResponse> listResponse = [];
//     try {
//      //int imageCount = images.length;
//       print("from image facade ${images.value}");
//       print("from image facade image count is ${images.length}");
//       for (int i = 0; i < images.length; i++) {
//         print("from image facade ${images.getOrCrash()[i].getOrCrash().path}");
//         CloudinaryResponse response = await cloudinary.uploadFile(
//           CloudinaryFile.fromFile(
//             images.getOrCrash()[i].getOrCrash().path,
//             folder: name.getOrCrash(),
//           ),
//         );
//         listResponse.add(response);
//       }
//       return right(listResponse);
//     } catch (e) {
//       print("erro from image facade ${e.toString()}");
//       return left(const ProductFailure.serverError());
//     }
//   }

//   @override
//   Future<Either<ProductFailure, List<CloudinaryResponse>>> updateImage(
//       {required Name name, required Images images}) async {
//     throw UnimplementedError();
//   }
  
//   @override
//   Future<Either<ProductFailure, List<CloudinaryResponse>>> deleteImage({required Name name, required Images images}) {
//     // TODO: implement deleteImage
//     throw UnimplementedError();
//   }
// }
