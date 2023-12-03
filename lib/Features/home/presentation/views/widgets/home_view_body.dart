import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/features_books_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(),
          FeaturesBooksListView(),
           SizedBox(height: 48,),
          Text('Best Seller',style:Styles.textStyle18),
          BestSelleListViewItem(),
        ],
      ),
    );
  }
}
class BestSelleListViewItem extends StatelessWidget {
  const BestSelleListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 105,
      child: Row(
        children: [
          AspectRatio(
        aspectRatio: 70 / 105,
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
          Column(
            children: [
    
            ],
          )
        ],
      ),
    );
  }
}
