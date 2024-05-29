
abstract class Dao<T> {
  Future save(int id, String cpf, String nome, String email, String senha, int is_ativo, String data_criacao);
  Future delete(int id);
  Future update(T value);
  Future findOne (int id);
  Future  findAll();
}