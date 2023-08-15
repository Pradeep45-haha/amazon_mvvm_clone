import 'package:amazon_mvvm_clone/domain/repository/cart_repository.dart';
import 'package:amazon_mvvm_clone/domain/repository/product_repository.dart';
import 'package:amazon_mvvm_clone/domain/repository/user_repository.dart';

class AppRepository {
  UserRepository userRepository;
  CartRepository cartRepository;
  ProductRepository productRepository;
  AppRepository({
    required this.userRepository,
    required this.cartRepository,
    required this.productRepository,
  });
  
}
