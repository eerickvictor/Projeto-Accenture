import 'package:mysql1/mysql1.dart';
import 'db_configuration.dart';

class Dbconnection implements DbConfiguration{
 
 MySqlConnection? _connection;
  
 
  @override
  // TODO: implement connection
  Future<MySqlConnection> get connection async{
    try {
      if(_connection == null){
      _connection = await createConnection();
    }}catch(e) {
      throw Exception("Erro ao criar conexão com o banco $e");
    }
    return _connection!;
  }

  @override
  Future <MySqlConnection> createConnection() async {
   return await MySqlConnection.connect(ConnectionSettings(
    host: "127.0.0.1",
    port: 3306,
    user: "bancoteste_user",
    password: "bancoteste_pass",
    db: "bancoteste"
   ));
   }
}