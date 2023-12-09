import 'package:bookly_app/Features/home/data/models/books_model/books_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedState extends Equatable{
  const FeaturedState();
    @override
  
  List<Object?> get props => [];
}
class FeaturedInitialState extends FeaturedState{}


class FeaturedLoadingState extends FeaturedState{}
class FeaturedSuccessState extends FeaturedState{
  final List <BooksModel> books;

  const FeaturedSuccessState({required this.books});
}
class FeaturedErrorState extends FeaturedState{
  final String errorMessage;

  const FeaturedErrorState({required this.errorMessage});
}

