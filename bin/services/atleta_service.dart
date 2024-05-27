import '../models/atleta_model.dart';
import '../utils/list_extension.dart';
import 'generic_service.dart';

class AtletaService implements GenericService <AtletaModel> {

  List<AtletaModel> _fakeDB = [];

  @override
  bool delete(int id) {

    _fakeDB.removeWhere((e) => e.id == id);
    return true;
  }

  @override
  List<AtletaModel> findAll() {

    return _fakeDB;
  }

  @override
  AtletaModel findOne(int id) {

    return _fakeDB.firstWhere((e) => e.id == id);
  }

  @override
  bool save(AtletaModel value)
  {
    AtletaModel? model = _fakeDB.firstWhereOrNull((e) => e.id == value.id);

    if(model == null){
      _fakeDB.add(value);
    }else{
      var index = _fakeDB.indexOf(model);
      _fakeDB[index] = value;
    }
    return true;
  }

}