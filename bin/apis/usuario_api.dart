// import 'dart:convert';

// import 'package:shelf/shelf.dart';
// import 'package:shelf_router/shelf_router.dart';
// // import 'package:test/test.dart';

// import '../models/usuario_model.dart';
// import '../services/generic_service.dart';
// import 'api.dart';


// class UsuarioApi extends Api {
//   final GenericService <UsuarioModel> _service;
//   UsuarioApi(this._service);

//   @override
//   Handler getHandler({List<Middleware>? middlewares, bool isSecurity = false})
//   {
//     Router router = Router();

//     router.get('/usuarios', (Request req){
//       List<UsuarioModel> usuarios = _service.findAll();
//       List<Map> usuariosMap = usuarios.map((e) => e.toJson()).toList();

//       return Response.ok(jsonEncode(usuariosMap));
//     });

//     router.post('/usuarios', (Request req) async {
//       var body = await req.readAsString();
//       _service.save(UsuarioModel.fromJson(jsonDecode(body)));
//       return Response(201);
//     });

//     router.put("/usuarios", (Request req){

//       String? id = req.url.queryParameters['id'];
//       return Response.ok("Usuarios");
//     });

//     router.delete("/usuarios", (Request req){

//       String? id = req.url.queryParameters["id"];
//       return Response.ok("Usuarios");
//     });

//     return createHandler(router: router, isSecurity: isSecurity, middlewares: middlewares);
//   }
// }