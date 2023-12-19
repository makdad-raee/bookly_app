import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/manger/news_book_cubit/news_book_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsBooksCubit extends Cubit<NewsBooksStata>{
  NewsBooksCubit(this.homeRepo):super(NewsBooksInitialStata());
  final HomeRepo homeRepo;
  
  
    Future<void> fetchNewsBooks () async {
      
    emit(NewsBooksLoadingStata());
    var result=await homeRepo.fetchNewsBooks();
     result.fold((failure) {
      emit(NewsBooksErrorStata(errorMessage: failure.errorMessage));
     }, (books) {
       emit(NewsBooksSuccessStata(books: books));
       
     });
  }
}