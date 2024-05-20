import 'package:shelf/shelf.dart';
import 'apis/home_api.dart';
import 'apis/loginApi.dart';
import 'infra/custom_server.dart';
import 'infra/dependency_injector/injector.dart';
import 'infra/middleware_incerption.dart';
import 'utils/custom_env.dart';
import 'package:mysql_client/mysql_client.dart';



void main() async{
  
  var conexao =  await MySQLConnection.createConnection(host: '127.0.0.1'
  , port: 3306, userName: 'bancoteste_user', password: 'bancoteste_pass', databaseName: 'bancoteste');

 await conexao.connect();
//  var res = await conexao.execute('INSERT INTO usuario (id, cpf, nome, email, senha, is_ativo, data_criacao)' + 'VALUES(2, "88888888888", "Teste", "Teste@teste2.com", "Senha2", 1, "2024-05-19");');
 
 var result = await conexao.execute('select * from usuario');


  for (final row in result.rows) {
    // print(row.colAt(0));
    // print(row.colByName("title"));

    // print all; rows as Map<String, String>;
    print(row.assoc());
  }





  final _dependencyInjector = Injector.initialize();
  
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
