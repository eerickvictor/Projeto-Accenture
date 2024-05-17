abstract class SecurityService<T>{
  Future<String> generateJWT(String userId);
  T? validationJWT(String token);

}