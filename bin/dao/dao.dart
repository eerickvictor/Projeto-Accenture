
abstract class Dao<T> {
  Future save(T value);
  Future<T> delete(int id);
  Future update(T value);
  Future <T>findOne (int id);
  Future <List<T>> findAll();
}