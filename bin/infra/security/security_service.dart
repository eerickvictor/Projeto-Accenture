abstract class SecurityService<T>{
  Future<String> generateJWT(String userId);
 Future <T?> validationJWT(String token);

}