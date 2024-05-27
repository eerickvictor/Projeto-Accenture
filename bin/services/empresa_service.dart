// import 'package:test/test.dart';

// import '../models/atleta_model.dart';
import '../models/empresa_model.dart';
import '../utils/list_extension.dart';
import 'generic_service.dart';

class EmpresaService implements GenericService<EmpresaModel> {

  List<EmpresaModel> _fakeDB = [];

  @override
  bool delete(int id) {

    _fakeDB.removeWhere((e) => e.id == id);
    return true;
  }

  @override
  List<EmpresaModel> findAll() {

    return _fakeDB;
  }

  @override
  EmpresaModel findOne(int id){

    return _fakeDB.firstWhere((e) => e.id == id);
  }

  @override
  bool save(EmpresaModel value) {
    EmpresaModel? model = _fakeDB.firstWhereOrNull((e) => e.id == value.id);

    if(model == null){
      _fakeDB.add(value);
    }else{
      var index = _fakeDB.indexOf(model);
      _fakeDB[index] = value;
    }
    return true;

  }


}