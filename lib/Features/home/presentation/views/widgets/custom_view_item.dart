import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 150 / 224,
      child: Container(
        width: 150,
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          image:const DecorationImage(
            image: AssetImage(
              kTestImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}