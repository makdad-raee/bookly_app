import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 150 / 224,
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(16),
          image:  DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
