import 'package:teslo_shop/features/auth/domain/datasources/auth_datasource.dart';
import 'package:teslo_shop/features/auth/domain/entities/user.dart';

class AuthDataSourceImpl implements AuthDataSource{
  @override
  Future<User> checkAuthSta(String token) {
    // TODO: implement checkAuthSta
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<User> register(String email, String password, String name) {
    // TODO: implement register
    throw UnimplementedError();
  }

}