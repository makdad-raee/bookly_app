import 'dart:ffi';

import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_cubit/featured_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedCubit extends Cubit<FeaturedState>{
  FeaturedCubit(this.homeRepo):super(FeaturedInitialState());

  final HomeRepo homeRepo;


    Future<void> fetchFeautredBooks () async {
    emit(FeaturedLoadingState());
    var result=await homeRepo.fetchFeautredBooks();
     result.fold((failure) {
      emit(FeaturedErrorState(errorMessage: failure.errorMessage));
     }, (books) {
       emit(FeaturedSuccessState(books: books));
       
     });
  }
}
