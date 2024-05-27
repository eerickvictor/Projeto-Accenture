import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../models/empresa_model.dart';
import '../services/generic_service.dart';
import 'api.dart';
// import 'atleta_api.dart';

class EmpresaApi extends Api {
  final GenericService <EmpresaModel> _service;
  EmpresaApi(this._service);

  @override
  Handler getHandler({List<Middleware>? middlewares, bool isSecurity = false}) {
    Router router = Router();

    router.get('/Empresa', (Request req){
      List<EmpresaModel> empresa = _service.findAll();
      List<Map> empresaMap = empresa.map((e) => e.toJson()).toList();

      return Response.ok(jsonEncode(empresaMap));
    });

    router.post("/Empresa", (Request req) async{
      var body = await req.readAsString();
      _service.save(EmpresaModel.fromJson(jsonDecode(body)));
      return Response(201);
    });

    router.put("/Empresa", (Request req){

      String? id = req.url.queryParameters["id"];
      return Response.ok("Atleta");
    });

    router.delete("Empresa", (Request req){

      String? id = req.url.queryParameters["id"];
      return Response.ok("Empresa");
    });

    return createHandler(router: router, isSecurity: isSecurity, middlewares: middlewares);
  }
}