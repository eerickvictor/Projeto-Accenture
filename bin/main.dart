import 'package:shelf/shelf.dart';
import 'apis/home_api.dart';
import 'apis/loginApi.dart';
import 'dao/usuario_dao.dart';
import 'infra/custom_server.dart';
import 'infra/db_conection/db_configuration.dart';
import 'infra/dependency_injector/injector.dart';
import 'infra/middleware_incerption.dart';
import 'utils/custom_env.dart';




void main() async{
  final _dependencyInjector = Injector.initialize();
  
  UsuarioDao _usuarioDao = UsuarioDao(_dependencyInjector.get<DbConfiguration>());
  print(await _usuarioDao.findOne(1));

  var cascadeHandler = Cascade()
    .add(_dependencyInjector.get<LoginApi>().getHandler())
    .add(_dependencyInjector.get<HomeApi>().getHandler(isSecurity: true)
    ).handler;

  var handler = Pipeline()
    .addMiddleware(logRequests())
    .addMiddleware(MiddlewareIntecerption().middleware)
    
    .addHandler(cascadeHandler);

  await CustomServer().initialize(
    handler: handler,
    url: await CustomEnv.get<String>(key:'url'),
    port: await CustomEnv.get<int>(key:'port'),
  );
}
