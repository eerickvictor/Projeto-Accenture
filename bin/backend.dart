import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'api/home_api.dart';
import 'api/loginApi.dart';
import 'infra/custom_server.dart';


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

  CustomServer().initialize(handler);
}
