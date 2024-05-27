import '../models/exercicio_model.dart';
import '../models/home_model.dart';
import '../utils/list_extension.dart';
import 'generic_service.dart';

class ExercicioService implements GenericService<ExercicioModel> {

  List<ExercicioModel> _fakeDB = [];

  @override
  bool delete(int id){

    _fakeDB.removeWhere((e) => e.id == id);
    return true;
  }

  @override
  List<ExercicioModel> findAll() {

    return _fakeDB;
  }

  @override
  ExercicioModel findOne(int id) {

    return _fakeDB.firstWhere((e) => e.id == id);
  }

  @override
  bool save(ExercicioModel value){
    ExercicioModel? model = _fakeDB.firstWhereOrNull((e) => e.id == value.id);

    if(model == null){
      _fakeDB.add(value);
    }else{
      var index = _fakeDB.indexOf(model);
      _fakeDB[index] = value;
    }
    return true;
  }
}