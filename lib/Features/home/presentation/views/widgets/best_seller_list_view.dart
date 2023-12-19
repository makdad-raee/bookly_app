import 'package:bookly_app/Features/home/presentation/manger/news_book_cubit/news_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/news_book_cubit/news_book_states.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_List_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBooksCubit,NewsBooksStata>(
      builder: (context, state) {
        if (state is NewsBooksSuccessStata) {
  return ListView.builder(
  //shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  padding: EdgeInsets.zero,
  itemCount: state.books.length,
  itemBuilder: (context, index) {
    return  Padding(
      padding:const EdgeInsets.symmetric(vertical: 10),
      child: BookListViewItem(booksModel:state.books[index]),
    );
  },
        );
}else if(state is NewsBooksErrorStata){
  return CustomErrorMessage(errorMessage: state.errorMessage);
}else {
  return const CustomLoadingIndicator(); 
}
      },
    );
  }
}
