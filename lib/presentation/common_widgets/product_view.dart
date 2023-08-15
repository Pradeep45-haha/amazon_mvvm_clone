import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black12,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          child: Image(
            width: 180,
            fit: BoxFit.fitHeight,
            image: NetworkImage(url),
          ),
        ),
      ),
    );
  }
}
