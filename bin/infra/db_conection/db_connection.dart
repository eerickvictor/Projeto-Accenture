import 'package:mysql_client/mysql_client.dart';

import 'db_configuration.dart';

class Dbconnection implements DbConfiguration{
 
 MySQLConnection? _connection;
 
  @override
  // TODO: implement connection
  Future<MySQLConnection> get connection async{
    try {
      if(_connection == null){
      _connection = await createConnection();
    }
    return _connection!;
    } catch (e) {
      throw Exception("Erro ao criar conexão com o banco $e");
    }
  }

  @override
  Future createConnection() async {
    await MySQLConnection.createConnection(host: '127.0.0.1'
  , port: 3306, userName: 'bancoteste_user', password: 'bancoteste_pass', databaseName: 'bancoteste');
  }

}