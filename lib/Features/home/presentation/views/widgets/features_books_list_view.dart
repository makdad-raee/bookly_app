import 'package:bookly_app/Features/home/presentation/manger/featured_cubit/featured_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_cubit/featured_states.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubit, FeaturedState>(
      builder: (context, state) {
        if (state is FeaturedSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>  Padding(
                padding:const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                     GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: state.books[index]);
                  },
                  child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',)),
              ),
            ),
          );
        } else if (state is FeaturedErrorState) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
