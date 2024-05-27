import '../models/meta_atleta_model.dart';
import '../utils/list_extension.dart';
import 'generic_service.dart';

class MetaAtletaService implements GenericService<MetaAtletaModel> {

  List<MetaAtletaModel> _fakeDB = [];

  @override
  bool delete(int id){

    _fakeDB.removeWhere((e) => e.id == id);
    return true;
  }

  @override
  List<MetaAtletaModel> findAll(){

    return _fakeDB;
  }

  @override
  MetaAtletaModel findOne(int id){

    return _fakeDB.firstWhere((e) => e.id == id);
  }

  @override
  bool save(MetaAtletaModel value){
    MetaAtletaModel? model = _fakeDB.firstWhereOrNull((e) => e.id == value.id);

    if(model == null){
      _fakeDB.add(value);
    }else{
      var index = _fakeDB.indexOf(model);
      _fakeDB[index] = value;
    }
    return true;
  }

}
