import 'package:bookly_app/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly_app/core/utils/functions/url_luncher.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.booksModel});
  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
        const  Expanded(
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
                  onPressed: ()async {
                
                   lanchCustomUrl(context, booksModel.volumeInfo.previewLink!);
                },
            text: getText(booksModel),
            fontSize: 16,
            backgroundColor:const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius:const BorderRadius.only(
              bottomRight: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
          )),
        ],
      ),
    );
  }
  
  String getText(BooksModel booksModel) {
    if(booksModel.volumeInfo.previewLink==null){
      return 'Not Avaliable';
    }else {
      return 'Preview';
    }
  }
}
