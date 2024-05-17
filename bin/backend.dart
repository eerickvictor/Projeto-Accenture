import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'apis/home_api.dart';
import 'apis/loginApi.dart';
import 'infra/custom_server.dart';
import 'infra/middleware_incerption.dart';
import 'infra/security/security_service.dart';
import 'infra/security/security_service_imp.dart';
import 'models/home_model.dart';
import 'services/generic_service.dart';
import 'services/home_service.dart';
import 'utils/custom_env.dart';


void main() async{
  
  var cascadeHandler = 
  Cascade()
  .add(
    LoginApi(SecurityServiceImp()).handler
  )
  .add(
      HomeApi(HomeService()).handler
    )
    .handler;

    var handler = 
    Pipeline().addMiddleware(logRequests()).addMiddleware((MiddlewareIntecerption().middleware)).addHandler(cascadeHandler);

  await CustomServer().initialize(
    handler: handler,
    url: await CustomEnv.get<String>(key:'url'),
    port: await CustomEnv.get<int>(key:'port'),
  );
}
