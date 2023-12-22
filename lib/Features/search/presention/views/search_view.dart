import 'package:bookly_app/Features/home/presentation/manger/search_cubit/search_cubit.dart';
import 'package:bookly_app/Features/search/presention/views/widgets/search_view_body.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/services_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (context) =>SearchCubit(getIt.get<ApiService>()) ,
      child: const Scaffold(
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}
