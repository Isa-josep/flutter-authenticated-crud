
class WrongCredencial implements Exception {

} 

class InvalidToken implements Exception {

} 

class ConnectionTimeOut implements Exception{}

class CustomErrror implements Exception{
  final String message;
  // final int erroCode;
  CustomErrror(this.message);
}