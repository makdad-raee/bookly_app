import 'package:bookly_app/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/home/presentation/manger/search_cubit/search_state.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit <SearchState>{
   SearchCubit(this.apiService):super(SearchStateInitialStata());
     final ApiService apiService;

List <BooksModel> books=[];

 Future<Either<Failure, List<BooksModel>>> searchBooks(String value) async {
    emit(SearchStateLoadingStata());
    try {
  var data = await apiService.get(
      endPoint:
          'volumes?Filtering=free-ebooks&Sorting=newest&q=$value');
          books=[];
          for( var item in data['items']){
            books.add(BooksModel.fromJson(item));
            emit(SearchStateSuccessStata(books: books));
          }
          return right(books);
} on Exception catch (e) {
  if(e is DioException){
    emit(SearchStateErrorStata(errorMessage: e.toString()));
    return left(ServerFailure.fromDioException(e));
    
  }
  emit(SearchStateErrorStata(errorMessage: e.toString()));
  return left( ServerFailure(errorMessage: e.toString()));
}
  }}