import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: '19.99€',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              topLeft: Radius.circular(18),
            ),
          )),
          Expanded(
              child: CustomButton(
            text: 'Free preview',
            fontSize: 16,
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
          )),
        ],
      ),
    );
  }
}
