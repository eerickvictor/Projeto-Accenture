import '../infra/db_conection/db_configuration.dart';
import '../models/usuario_model.dart';
import 'dao.dart';


class UsuarioDao implements Dao<Usuario>{

  final DbConfiguration _dbConfiguration;
  UsuarioDao(this._dbConfiguration);
  
  @override
  Future delete(int id)async{
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
 Future findAll() async {
  final String SQL = 'SELECT * FROM usuario';
  var connection = await _dbConfiguration.connection;
  var result = await connection.execute(SQL);
  for(final r in result.rows){
    print(r.assoc());
  } 
  return result;
}

  @override
Future findOne(int id) async {
  final String SQL = 'SELECT * FROM usuario WHERE id = ?'; 
  var connection = await _dbConfiguration.connection;
  var result = await connection.execute(SQL, [id]);
  return result;
}

  @override
  Future save(Usuario value) async{
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future update(Usuario value) {
    // TODO: implement update
    throw UnimplementedError();
  }


}