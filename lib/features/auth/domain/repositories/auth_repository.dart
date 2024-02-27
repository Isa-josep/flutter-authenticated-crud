import 'package:teslo_shop/features/auth/domain/domain.dart';

abstract class AuthRepository{
  
  Future<User> login(String email, String password);
  Future<User> register(String email, String password, String name);
  Future<User> checkAuthSta(String token);

}