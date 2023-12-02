import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
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
      ),
    );
  }
}