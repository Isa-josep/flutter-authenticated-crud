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
    } on DioError catch(e){
      if(e.response?.statusCode==401) throw WrongCredencial();
      if(e.type==DioErrorType.connectionTimeout) throw ConnectionTimeOut();
      throw CustomErrror('Something wrong happed');
    }catch (e){
      throw CustomErrror('Error inesperado' );
    }
  }

  @override
  Future<User> register(String email, String password, String name) {
    // TODO: implement register
    throw UnimplementedError();
  }

}