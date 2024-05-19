typedef T InstanceCreator<T>();

class DependencyInjector{
  DependencyInjector._();

  static final _singleton = DependencyInjector._();
  factory DependencyInjector() => _singleton;

  final _instanceMap = Map<Type, _IntanceGenerator<Object>>();

  void register<T extends Object>(
    InstanceCreator<T> instance, 
    {bool isSingleton = true}
  ){
      _instanceMap[T] = _IntanceGenerator(instance, isSingleton);
  }

  T get<T extends Object>(){
    final instance = _instanceMap[T]?.generateInstance();
    if(instance != null && instance is T){return instance;}else{
    throw Exception('(ERRO) -> instance ${T.toString()} not foud');}
    }

  //call<T extends Object>() => get<T>();

}


class _IntanceGenerator<T>{
  T? _instance;
  bool _isFirstGet = false;
  
  final InstanceCreator<T> _instanceCreator;
  _IntanceGenerator(this._instanceCreator, bool isSingleton): _isFirstGet = isSingleton;
  
  
  T? generateInstance(){
      if(_isFirstGet){
        _instance = _instanceCreator();
        _isFirstGet = false;
      }
      return _instance != null ? _instance : _instanceCreator();
  }
}