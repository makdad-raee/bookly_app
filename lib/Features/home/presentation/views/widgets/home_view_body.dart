import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/features_books_list_view.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(),
          FeaturesBooksListView(),
          SizedBox(
            height: 48,
          ),
          Text('Best Seller', style: Styles.textStyle18),
          SizedBox(
            height: 20,
          ),
          BestSelleListViewItem(),
        ],
      ),
    );
  }
}

