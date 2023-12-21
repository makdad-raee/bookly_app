import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
      return ServerFailure(errorMessage: 'Connection timeout with Apiserver');
      case DioExceptionType.sendTimeout:
            return ServerFailure(errorMessage: 'Sending timeout with Apiserver');

      case DioExceptionType.receiveTimeout:
       return ServerFailure(errorMessage: 'Receive timeout with Apiserver');

      case DioExceptionType.badCertificate:
      return ServerFailure(errorMessage: 'bad Certificate !!!! with Apiserver');
      case DioExceptionType.badResponse:
      return ServerFailure.fromDioResponce(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
       return ServerFailure(errorMessage: 'Requedt from Api was canceld ');
      case DioExceptionType.connectionError:
      
       return ServerFailure(errorMessage: 'Connection error plese check your internet ');
      case DioExceptionType.unknown:
      if(dioException.message!.contains('SocketException')){
       return ServerFailure(errorMessage: 'No internet connection ');}
       return ServerFailure(errorMessage: 'Unexpected error please try again ');
       default :
        return ServerFailure(errorMessage: 'Ooops there was an error please try again ');
       
       

      
    }
  }
  factory ServerFailure.fromDioResponce(int statusCode,dynamic response){
    if(statusCode==400||statusCode==401||statusCode==403){
      return ServerFailure(errorMessage: response['error']['message']);
    }else if(statusCode==404){
      return ServerFailure(errorMessage: 'Your request not found please try again later!');
    }else if(statusCode==500 ){
      return ServerFailure(errorMessage: 'internal server error please try again later ');
    }
    else {
      return ServerFailure(errorMessage: 'Ooops there was an error please try again ');
    }
  }
}
