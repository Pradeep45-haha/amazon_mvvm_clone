import 'package:amazon_mvvm_clone/application/bloc/admin/product/bloc/product_bloc.dart';
import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/product_view.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductBloc productBloc = BlocProvider.of<ProductBloc>(context);
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            tooltip: "Add a product",
            onPressed: () {
              Navigator.pushNamed(
                context,
                "add-product-page",
              );
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          body: productBloc.gproducts.isEmpty
              ? const Center(
                  child: Text("No Products"),
                )
              : GridView.builder(
                  scrollDirection: Axis.vertical,
                  controller: productBloc.productScrollController,
                  itemCount: productBloc.gproducts.isEmpty
                      ? null
                      : productBloc.gproducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    print("from product page index is $index");
                    List<ImageUrl> imagerUrls =
                        productBloc.gproducts[index].imageUrls.getOrCrash();
                    return getProduct(
                      productBloc: productBloc,
                      index: index,
                      imageUrl: imagerUrls[0].getOrCrash(),
                    );
                  },
                ),
        );
      },
    );
  }
}

Widget? getProduct(
    {required String? imageUrl,
    required int index,
    required ProductBloc productBloc}) {
  if (imageUrl == null) {
    return null;
  }

  return GestureDetector(
    onLongPress: () {
      productBloc.add(
        ProductEvent.deleteProduct(
          products: [
            productBloc.gproducts[index],
          ],
        ),
      );
    },
    child: ProductView(
      url: imageUrl,
    ),
  );
}
