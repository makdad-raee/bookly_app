import 'package:bookly_app/Features/home/presentation/manger/news_book_cubit/news_book_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsBooksCubit extends Cubit<NewsBooksStata>{
  NewsBooksCubit():super(NewsBooksInitialStata());
  
}