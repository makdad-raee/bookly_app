import 'package:bookly_app/Features/home/presentation/manger/search_cubit/search_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/search_cubit/search_state.dart';
import 'package:bookly_app/Features/search/presention/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/core/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 30),
      child: BlocBuilder<SearchCubit,SearchState>(
        builder: (context, state) => 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(onChanged: (value) {
              BlocProvider.of<SearchCubit>(context).searchBooks(value);
            },),
           const SizedBox(
              height: 16,
            ),
            const Text('Search Result', style: Styles.textStyle18),
           const SizedBox(
              height: 16,
            ),
           const Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}
