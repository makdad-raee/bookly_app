import 'package:bookly_app/Features/home/data/repos/home_repo_imol.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_cubit/featured_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/news_book_cubit/news_book_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/services_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupGetIt();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeautredBooks(),
        ),
         BlocProvider(
          create: (context) => NewsBooksCubit(
           getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        //themeMode: ThemeMode.dark,

        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        //home:const SplashView(),
      ),
    );
  }
}
