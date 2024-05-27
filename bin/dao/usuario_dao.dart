import '../infra/db_conection/db_configuration.dart';
import '../models/usuario_model.dart';
import 'dao.dart';


class UsuarioDao implements Dao<Usuario>{

  final DbConfiguration _dbConfiguration;
  UsuarioDao(this._dbConfiguration);
  
  @override
  Future<Usuario> delete(int id)async{
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
 Future<List<Usuario>> findAll() async {
  final String SQL = 'SELECT * FROM usuario';
  var connection = await _dbConfiguration.connection;
  var result = await connection.query(SQL);
  List<Usuario> _usuario = [];
  for(final r in result.fields){
   _usuario.add(Usuario.fromMap(r.fields));
  } 
  return _usuario;
}

  @override
Future<Usuario> findOne(int id) async {
  final String SQL = 'SELECT * FROM usuario WHERE id = ?'; 
  var connection = await _dbConfiguration.connection;
  var result = await connection.query(SQL, [id]);
  return Usuario.fromMap(result.single.fields);
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