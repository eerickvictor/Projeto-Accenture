import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../models/meta_model.dart';
import '../services/generic_service.dart';
import 'api.dart';

class MetaApi extends Api {
  final GenericService <MetaModel> _service;
  MetaApi(this._service);

  @override
  Handler getHandler({List<Middleware>? middlewares, bool isSecurity = false}){
    Router router = Router();

    router.get('/Meta', (Request req){
      List<MetaModel> meta = _service.findAll();
      List<Map> metaMap = meta.map((e) => e.toJson()).toList();

      return Response.ok(jsonEncode(metaMap));
    });

    router.post("/Meta", (Request req) async {
      var body = await req.readAsString();
      _service.save(MetaModel.fromJson(jsonDecode(body)));
      return Response(201);
    });

    router.put("/Meta", (Request req){

      String? id = req.url.queryParameters["id"];
      return Response.ok("Meta");
    });

    router.delete("/Meta", (Request req){

      String? id = req.url.queryParameters["id"];
      return Response.ok("Meta");
    });
    return createHandler(router: router, isSecurity: isSecurity, middlewares: middlewares);

  }
}