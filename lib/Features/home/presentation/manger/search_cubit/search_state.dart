import 'package:bookly_app/Features/home/data/models/books_model/books_model.dart';
import 'package:equatable/equatable.dart';

abstract class SearchState extends Equatable{
  const SearchState();
    @override
  
  List<Object?> get props => [];
}
class SearchStateInitialStata extends SearchState{
  
}

class SearchStateLoadingStata extends SearchState{}

class SearchStateSuccessStata extends SearchState{
 final  List <BooksModel> books;

  const SearchStateSuccessStata({required this.books});
}

class SearchStateErrorStata extends SearchState{
  final String errorMessage;

  const SearchStateErrorStata({required this.errorMessage});
}