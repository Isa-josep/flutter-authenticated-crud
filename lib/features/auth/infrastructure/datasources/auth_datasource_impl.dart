import 'package:dio/dio.dart';
import 'package:teslo_shop/config/config.dart';
import 'package:teslo_shop/features/auth/domain/domain.dart';
import 'package:teslo_shop/features/auth/infrastructure/infrastructure.dart';


class AuthDataSourceImpl implements AuthDataSource{

  final dio=Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
    )
  );

  @override
  Future<User> checkAuthSta(String token) {
    
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) async{
    try{
      final response=await dio.post('/auth/login',data: {
        'email':email,
        'password':password,
      });
      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    }
    catch(e){
      throw WrongCredencial ();
    }
  }

  @override
  Future<User> register(String email, String password, String name) {
    // TODO: implement register
    throw UnimplementedError();
  }

}