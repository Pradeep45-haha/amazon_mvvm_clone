import 'package:amazon_mvvm_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/product_view.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    String url = "https://m.media-amazon.com/images/I/71TawoxTk6L._UY500_.jpg";
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                "Your Orders",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                "See all",
                style: TextStyle(
                    fontSize: 14,
                    color: GlobalVariables.selectedNavBarColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const  EdgeInsets.symmetric(horizontal:5.0),
                  child: ProductView(url: url),
                );
              }),
        ),
      ],
    );
  }
}
