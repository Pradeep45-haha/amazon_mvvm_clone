import 'package:amazon_mvvm_clone/application/bloc/admin/product/bloc/product_bloc.dart';
import 'package:amazon_mvvm_clone/constants/country_currency.dart';
import 'package:amazon_mvvm_clone/domain/product/product.dart';
import 'package:amazon_mvvm_clone/domain/product/value_object.dart';
import 'package:amazon_mvvm_clone/presentation/common_widgets/text_input.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants/global_variables.dart';

class AddProductsPage extends StatefulWidget {
  const AddProductsPage({super.key});

  @override
  State<AddProductsPage> createState() => _AddProductsPageState();
}

class _AddProductsPageState extends State<AddProductsPage> {
  late ProductBloc productBloc;

  @override
  void initState() {
    productBloc = BlocProvider.of<ProductBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return state.productFailureOrSuccess.fold(() {
          return AddProduct(productBloc: productBloc);
        }, (a) {
          return a.fold((l) {
            return AddProduct(productBloc: productBloc);
          }, (r) {
            // productBloc.add(
            //   ProductEvent.getProduct(
            //     category: null,
            //     id: null,
            //     loginToken: productBloc.gtokenKey,
            //     productName: null,
            //     price: null,
            //   ),
            // );
            // WidgetsBinding.instance.addPostFrameCallback((_) {
            //   Navigator.pushNamedAndRemoveUntil(context, RoutesName.addProductPage, (route) => false);
            // });

            return AddProduct(
              productBloc: productBloc,
            );
          });
        });
      },
    );
  }
}

class AddProduct extends StatelessWidget {
  const AddProduct({
    super.key,
    required this.productBloc,
  });

  final ProductBloc productBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: const Text(
            "Add Product",
            style: TextStyle(color: Colors.black),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: productBloc.formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    if (productBloc.images.isNotEmpty) {
                      return GestureDetector(
                        onTap: () {
                          productBloc.add(
                            ProductEvent.selectProductImages(),
                          );
                        },
                        child: SizedBox(
                          height: 400,
                          child: CarouselSlider(
                            items: productBloc.images.map(
                              (i) {
                                debugPrint(
                                    "from add product images ${productBloc.images.length.toString()}");
                                return Builder(
                                  builder: ((context) => Image.file(
                                        i,
                                      )),
                                );
                              },
                            ).toList(),
                            options: CarouselOptions(
                                height: 500, viewportFraction: 1),
                          ),
                        ),
                      );
                    }
                    return GestureDetector(
                      onTap: () {
                        productBloc.add(
                          ProductEvent.selectProductImages(),
                        );
                      },
                      child: DottedBorder(
                        strokeCap: StrokeCap.round,
                        dashPattern: const [10, 4],
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.folder_open,
                                size: 40,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Select Product Images",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  onChanged: (value) {
                    if (value != null) {
                      productBloc.add(
                        ProductEvent.productNameChanged(value: value),
                      );
                    }
                  },
                  validator: (value) {
                    return productBloc.state.productName.value.fold((l) {
                      return l.maybeMap(longName: (value) {
                        return "Please enter short name";
                      }, noName: (value) {
                        return "Please enter name";
                      }, orElse: () {
                        return null;
                      });
                    }, (r) => null);
                  },
                  controller: productBloc.productNameController,
                  hintText: "Product Name",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (value) {
                    if (value != null) {
                      productBloc.add(
                        ProductEvent.productDescriptionChanged(
                          value: value,
                        ),
                      );
                    }
                  },
                  validator: (value) {
                    return productBloc.state.productDescription.value.fold((l) {
                      return l.maybeMap(
                        orElse: () {
                          return null;
                        },
                        shortDescription: (value) {
                          return "PLease enter more description";
                        },
                        longDescription: (value) {
                          return "Please enter short description";
                        },
                      );
                    }, (r) {
                      return null;
                    });
                  },
                  maxLine: 7,
                  controller: productBloc.productDescriptionController,
                  hintText: "Description",
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        onChanged: (value) {
                          if (value != null) {
                            productBloc.add(
                              ProductEvent.productPriceChanged(
                                value: double.parse(value),
                              ),
                            );
                          }
                        },
                        validator: (value) {
                          return productBloc.state.productPrice.value.fold((l) {
                            return l.maybeMap(
                              orElse: () {
                                return null;
                              },
                              priceIsNegative: (value) {
                                return "Please enter positive price";
                              },
                              veryHighPrice: (value) {
                                return "Please enter low price";
                              },
                            );
                          }, (r) {
                            return null;
                          });
                        },
                        controller: productBloc.productPriceController,
                        hintText: "Price",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    DropdownMenu(
                      controller: productBloc.currencyController,
                      onSelected: (value) {
                        print("from currency dropdownmenu $value");
                        if (value != null) {
                          productBloc.add(
                            ProductEvent.productCurrencyChanged(
                              value: value,
                            ),
                          );
                        }
                      },
                      width: MediaQuery.of(context).size.width / 2,
                      enableSearch: true,
                      hintText: "Select Currency",
                      dropdownMenuEntries: currencies.map((e) {
                        return DropdownMenuEntry(
                          label:
                              "${e.country} | ${e.currencyCode} | ${e.symbol}",
                          value: e.currencyCode,
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (value) {
                    if (value != null) {
                      productBloc.add(
                        ProductEvent.productQuantityChanged(
                          value: double.parse(value),
                        ),
                      );
                    }
                  },
                  validator: (value) {
                    return productBloc.state.productQuantity.value.fold((l) {
                      return l.maybeMap(
                        orElse: () {
                          return null;
                        },
                        quantityIsNegative: (value) {
                          return "Please enter positive qunatity";
                        },
                        quantityIsZero: (value) {
                          return "Please enter quantity of 1 or more";
                        },
                        veryHighQuantity: (value) {
                          return "Please enter low quantity";
                        },
                      );
                    }, (r) {
                      return null;
                    });
                  },
                  controller: productBloc.productQuantityController,
                  hintText: "Quantity",
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return SizedBox(
                      width: double.infinity,
                      child: DropdownButton(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        value: productBloc.categoryValue,
                        items: const [
                          DropdownMenuItem(
                            value: "Mobile",
                            child: Text("Mobile"),
                          ),
                          DropdownMenuItem(
                            value: "Essentials",
                            child: Text("Essentials"),
                          ),
                          DropdownMenuItem(
                            value: "Appliances",
                            child: Text("Appliances"),
                          ),
                          DropdownMenuItem(
                            value: "Books",
                            child: Text("Books"),
                          ),
                          DropdownMenuItem(
                            value: "Fashion",
                            child: Text("Fashion"),
                          ),
                        ],
                        onChanged: (String? value) {
                          if (value != null) {
                            productBloc.add(
                              ProductEvent.productCategoryChanged(
                                value: value,
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  color: GlobalVariables.secondaryColor,
                  child: TextButton(
                    onPressed: () {
                      Images images = Images(
                        productBloc.images.map((e) {
                          return PImage(e);
                        }).toList(),
                      );
                      print("image count from sell is ${images.value}");
                      productBloc.add(
                        ProductEvent.addProduct(
                          productImage: ProductImage(
                            images: Images(
                              productBloc.images.map((e) {
                                return PImage(e);
                              }).toList(),
                            ),
                          ),
                          product: Product(
                            name: productBloc.state.productName,
                            price: productBloc.state.productPrice,
                            quantity: productBloc.state.productQuantity,
                            rating: productBloc.state.productRating,
                            catogery: productBloc.state.productCategory,
                            currency: productBloc.state.productCurrency,
                            description: productBloc.state.productDescription,
                            imageUrls: ImageUrls([]),
                            reviews: productBloc.state.productReview,
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      "Sell",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
