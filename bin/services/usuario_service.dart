// import '../models/usuario_model.dart';
// import '../utils/list_extension.dart';
// import 'generic_service.dart';

// class UsuarioService implements GenericService<UsuarioModel> {
  
//   List<UsuarioModel> _fakeDB = [];

//   @override
//   bool delete(int id) {
    
//     _fakeDB.removeWhere((e) => e.id == id);
//     return true;
//   }

//   @override
//   List<UsuarioModel> findAll() {

//     return _fakeDB;
//   }

//   @override
//   UsuarioModel findOne(int id) {

//     return _fakeDB.firstWhere((e) => e.id == id);
//   }

//   @override
//   bool save(UsuarioModel value)
//   {
//     UsuarioModel? model = _fakeDB.firstWhereOrNull((e) => e.id == value.id);

//     if(model == null) {
//       _fakeDB.add(value);
//     }else{
//       var index = _fakeDB.indexOf(model);
//       _fakeDB[index] = value;
//     }

//     return true;
//   }

// }