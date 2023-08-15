import 'package:flutter/material.dart';

class DealOfDay extends StatelessWidget {
  const DealOfDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 10,
            top: 15,
          ),
          child: const Text(
            "Deal of the day",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          "https://hips.hearstapps.com/hmg-prod/images/run-on-shoes-1637184473.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*",
          fit: BoxFit.fitHeight,
          height: 235,
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: const Text(
            "\$Price",
            maxLines: 1,
            style: TextStyle(
              fontSize: 18,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 15,
            top: 5,
            right: 40,
          ),
          child: const Text(
            "Pradeep",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "https://hips.hearstapps.com/hmg-prod/images/run-on-shoes-1637184473.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                "https://hips.hearstapps.com/hmg-prod/images/run-on-shoes-1637184473.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                "https://hips.hearstapps.com/hmg-prod/images/run-on-shoes-1637184473.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                "https://hips.hearstapps.com/hmg-prod/images/run-on-shoes-1637184473.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(left: 15),
          child: Text(
            "See all deals",
            style: TextStyle(
              color: Colors.cyan[800],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
