import '../infra/db_conection/db_configuration.dart';
import '../models/usuario_model.dart';
import 'dao.dart';


class UsuarioDao implements Dao<Usuario>{

  final DbConfiguration _dbConfiguration;
  UsuarioDao(this._dbConfiguration);
  
  @override
  Future delete(int id)async{
    var connection = await _dbConfiguration.connection;
    var result = await connection.execute("DELETE FROM usuario WHERE id = :id", {"id": id}); 
    for (final row in result.rows) {
      print(row.affectedRows());
    }
    return result.row.affectedRows;
}

  @override
 Future findAll() async {
  final String SQL = 'SELECT * FROM usuario';
  var connection = await _dbConfiguration.connection;
  var result = await connection.execute(SQL);
  for(final r in result.rows){
    print(r.assoc());
  } 
}

  @override
Future findOne(int id) async {
 var connection = await _dbConfiguration.connection;
 var result = await connection.execute("SELECT * FROM usuario WHERE id = :id", {"id": id}); 
 for (final row in result.rows) {
    print(row.assoc());
  }
}

  @override
  Future save(int id, String cpf, String nome, String email, String senha, int is_ativo, String data_criacao) async{
    var connection = await _dbConfiguration.connection;
    var stmt = await connection.prepare(
  "INSERT INTO usuario (id, cpf, nome, email, senha, is_ativo, data_criacao ) VALUES (?, ?, ?, ?, ?, ?, ?)",);
  await stmt.execute([id, cpf, nome, email, senha, is_ativo, data_criacao]);
  
}

  @override
  Future update(Usuario value) {
    // TODO: implement update
    throw UnimplementedError();
  }


}