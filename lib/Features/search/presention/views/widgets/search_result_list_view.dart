
import 'package:bookly_app/Features/home/presentation/manger/search_cubit/search_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/search_cubit/search_state.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_List_view_item.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchState>(
      builder:(context, state) {
        if (BlocProvider.of<SearchCubit>(context).books.isNotEmpty) {
  return ListView.builder(
  //shrinkWrap: true,
  //physics: const NeverScrollableScrollPhysics(),
  padding: EdgeInsets.zero,
  itemCount: 10,
  itemBuilder: (context, index) {
    return  Padding(
      padding:const EdgeInsets.symmetric(vertical: 10),
     child: BookListViewItem(booksModel:BlocProvider.of<SearchCubit>(context).books[index] ),
     //child: Text("later i handle it"),
    );
  },
        );
}else {return const CustomLoadingIndicator();}
      },
    );
  }
}
