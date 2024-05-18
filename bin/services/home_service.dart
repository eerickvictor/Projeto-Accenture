
import '../utils/list_extension.dart';
import '../models/home_model.dart';
import 'generic_service.dart';

class HomeService implements GenericService<HomeModel> {

  List<HomeModel> _fakeDB = []; 

  @override
  bool delete(int id) {
    // TODO: implement delete
    _fakeDB.removeWhere((e) => e.id == id);
    return true;
  }

  @override
  List<HomeModel> findAll() {
    // TODO: implement finall
    return _fakeDB;
  }

  @override
  HomeModel findOne(int id) {
    // TODO: implement findOne
    return _fakeDB.firstWhere((e) => e.id == id);
  }

  @override
  bool save(HomeModel value) {
   HomeModel? model = _fakeDB.firstWhereOrNull((e) => e.id == value.id);

    if(model == null){
      _fakeDB.add(value);
    }else{
      var index = _fakeDB.indexOf(model);
      _fakeDB[index] = value;
    }
    return true;
 }

}
