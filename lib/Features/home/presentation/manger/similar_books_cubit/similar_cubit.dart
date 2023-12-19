import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/manger/similar_books_cubit/similar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState>{
  SimilarBooksCubit(this.homeRepo):super(SimilarBooksInitialStata());
  final HomeRepo homeRepo;
  
  
    Future<void> fetchSimilarBooks ({required String category}) async {
      
    emit(SimilarBooksLoadingStata());
    var result=await homeRepo.fetchSimilarBooks(category: category);
     result.fold((failure) {
      emit(SimilarBooksErrorStata(errorMessage: failure.errorMessage));
     }, (books) {
       emit(SimilarBooksSuccessStata(books: books));
       
     });
  }
}