
abstract class Dao<T> {
  Future save(T value);
  Future delete(int id);
  Future update(T value);
  Future findOne (int id);
  Future  findAll();
}