import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppbarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}