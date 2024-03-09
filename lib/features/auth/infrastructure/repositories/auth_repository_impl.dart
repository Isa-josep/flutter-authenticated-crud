import 'package:teslo_shop/features/auth/domain/domain.dart';
import '../infrastructure.dart';

class AuthRepositoryImpl extends AuthRepository{

  final AuthDataSource dataSource;

  AuthRepositoryImpl({
    AuthDataSource? dataSource
  }) :dataSource = dataSource ?? AuthDataSourceImpl();

  @override
  Future<User> checkAuthSta(String token) {
    return dataSource.checkAuthSta(token);
  }

  @override
  Future<User> login(String email, String password) {
    return dataSource.login(email, password);
  }

  @override
  Future<User> register(String email, String password, String name) {
    return dataSource.register(email, password, name);
  }

}