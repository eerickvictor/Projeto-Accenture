import 'package:shelf/shelf.dart';

import '../infra/dependency_injector/denpendency_injector.dart';
import '../infra/security/security_service.dart';

abstract class Api{
  Handler getHandler({List<Middleware>? middlewares, bool isSecurity = false});
  Handler createHandler({required Handler router, List<Middleware>? middlewares, bool isSecurity = false}){
      
      middlewares ??= [];

      if(isSecurity == true){
      var _securityService = DependencyInjector().get<SecurityService>();
      middlewares.addAll([
        _securityService.authorization,
        _securityService.verifyJWT,
      ]);
      }

      var pipeline = Pipeline();
      middlewares.forEach((m) => pipeline = pipeline.addMiddleware(m));

      return pipeline.addHandler(router); 
  }
}