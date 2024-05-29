import 'package:shelf/shelf.dart';
import 'apis/home_api.dart';
import 'apis/loginApi.dart';
import 'dao/usuario_dao.dart';
import 'infra/custom_server.dart';
import 'infra/db_conection/db_configuration.dart';
import 'infra/dependency_injector/injector.dart';
import 'infra/middleware_incerption.dart';




void main() async{
  final _dependencyInjector = Injector.initialize();
  
  UsuarioDao _usuarioDao = UsuarioDao(_dependencyInjector.get<DbConfiguration>());
  // print(await _usuarioDao.save(2, "22222222222", "Bruno", "Teste2@gmail.com", "123admin", 1, "2024-05-28"));
  // print(await _usuarioDao.findAll());
  // print(await _usuarioDao.findOne(1));
  // print(await _usuarioDao.delete(2));
  
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
    url: "localhost",
    port: 8080,
  );
}
