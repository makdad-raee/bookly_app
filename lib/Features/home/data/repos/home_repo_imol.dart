import 'package:bookly_app/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewsBooks() async {
    
    try {
  var data = await apiService.get(
      endPoint:
          'volumes?Filtering=free-ebooks&Sorting=newest&q=subject: computer science');
          List <BooksModel> books=[];
          for( var item in data['items']){
            books.add(BooksModel.fromJson(item));
          }
          return right(books);
} on Exception catch (e) {
  if(e is DioException){
    return left(ServerFailure.fromDioException(e));
  }
  return left( ServerFailure(errorMessage: e.toString()));
}
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeautredBooks()async {
     try {
  var data = await apiService.get(
      endPoint:
          'volumes?Filtering=free-ebooks&q=subject: programing');
          List <BooksModel> books=[];
          for( var item in data['items']){
            books.add(BooksModel.fromJson(item));
          }
          return right(books);
} on Exception catch (e) {
  if(e is DioException){
    return left(ServerFailure.fromDioException(e));
  }
  return left( ServerFailure(errorMessage: e.toString()));
}
  }
  
  @override
  Future<Either<Failure, List<BooksModel>>> fetchSimilarBooks({required String category})async {
   try {
  var data = await apiService.get(
      endPoint:
          'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject: programing');
          List <BooksModel> books=[];
          for( var item in data['items']){
            books.add(BooksModel.fromJson(item));
          }
          return right(books);
} on Exception catch (e) {
  if(e is DioException){
    return left(ServerFailure.fromDioException(e));
  }
  return left( ServerFailure(errorMessage: e.toString()));
}
  }
}
