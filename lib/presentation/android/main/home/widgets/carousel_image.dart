import 'package:amazon_mvvm_clone/constants/global_variables.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 6),
        viewportFraction: 1,
        height: 200
      ),
      items: GlobalVariables.carouselImages.map((image) {
        return Builder(
          builder: (BuildContext context) => Image.network(
            image,
            fit: BoxFit.cover,
            height: 200,
          ),
        );
      }).toList(),
    );
  }
}
