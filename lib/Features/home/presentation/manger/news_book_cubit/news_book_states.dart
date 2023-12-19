import 'package:bookly_app/Features/home/data/models/books_model/books_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewsBooksStata extends Equatable{
  const NewsBooksStata();
    @override
  
  List<Object?> get props => [];
}
class NewsBooksInitialStata extends NewsBooksStata{
  
}

class NewsBooksLoadingStata extends NewsBooksStata{}

class NewsBooksSuccessStata extends NewsBooksStata{
 final  List <BooksModel> books;

  const NewsBooksSuccessStata({required this.books});
}

class NewsBooksErrorStata extends NewsBooksStata{
  final String errorMessage;

  const NewsBooksErrorStata({required this.errorMessage});
}

