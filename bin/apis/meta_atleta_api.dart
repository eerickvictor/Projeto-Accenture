import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../models/meta_atleta_model.dart';
import '../services/generic_service.dart';
import 'api.dart';
import 'home_api.dart';

class MetaAtletaApi extends Api {
  final GenericService <MetaAtletaModel> _service;
  MetaAtletaApi(this._service);

  @override
  Handler getHandler({List<Middleware>? middlewares, bool isSecurity = false}) {
    Router router = Router();

    router.get('/MetaAtleta', (Request req){
      List<MetaAtletaModel> metaAtleta = _service.findAll();
      List<Map> metaAtletaMap = metaAtleta.map((e) => e.toJson()).toList();

      return Response.ok(jsonEncode(metaAtletaMap)); 
    });

    router.post("/MetaAlteta", (Request req) async{
      var body = await req.readAsString();
      _service.save(MetaAtletaModel.fromJson(jsonDecode(body)));
      return Response(201);
    });

    router.put("/MetaAtleta", (Request req){

      String? id = req.url.queryParameters["id"];
      return Response.ok("MetaAtleta");
    });

    router.delete("/MetaAtleta", (Request req){

      String? id = req.url.queryParameters["id"];
      return Response.ok("MetaAtleta");
    });
    return createHandler(router: router, isSecurity: isSecurity, middlewares: middlewares);
  }
}