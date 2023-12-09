import 'package:bookly_app/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
Future <Either<Failure ,List <BooksModel>>> fetchNewsBooks();
Future <Either<Failure ,List <BooksModel>>>fetchFeautredBooks();

}