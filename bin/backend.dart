import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'api/home_api.dart';
import 'api/loginApi.dart';
import 'infra/custom_server.dart';
import 'utils/custom_env.dart';


void main() async{
  var cascadeHandler = 
  Cascade()
  .add(
    LoginApi().handler
  )
  .add(
      HomeApi().handler
    )
    .handler;

    var handler = 
    Pipeline().addMiddleware(logRequests()).addHandler(cascadeHandler);

  await CustomServer().initialize(
    handler: handler,
    url: await CustomEnv.get<String>(key:'server_url'),
    port: await CustomEnv.get<int>(key:'server_port'),
  );
}
