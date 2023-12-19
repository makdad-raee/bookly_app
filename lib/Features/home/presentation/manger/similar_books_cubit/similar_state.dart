import 'package:bookly_app/Features/home/data/models/books_model/books_model.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBooksState extends Equatable{
  const SimilarBooksState();
    @override
  
  List<Object?> get props => [];
}
class SimilarBooksInitialStata extends SimilarBooksState{
  
}

class SimilarBooksLoadingStata extends SimilarBooksState{}

class SimilarBooksSuccessStata extends SimilarBooksState{
 final  List <BooksModel> books;

  const SimilarBooksSuccessStata({required this.books});
}

class SimilarBooksErrorStata extends SimilarBooksState{
  final String errorMessage;

  const SimilarBooksErrorStata({required this.errorMessage});
}