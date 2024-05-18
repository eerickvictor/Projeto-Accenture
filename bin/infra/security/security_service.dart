import 'package:shelf/shelf.dart';

abstract class SecurityService<T>{
  Future<String> generateJWT(String userId);
  Future <T?> validationJWT(String token);

  Middleware get verifyJWT;
  Middleware get authorization;
}