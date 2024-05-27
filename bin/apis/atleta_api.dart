import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
// import 'package:test/test.dart';

import '../models/atleta_model.dart';
import '../services/generic_service.dart';
import 'api.dart';

class AtletaApi extends Api {
  final GenericService <AtletaModel> _service;
  AtletaApi(this._service);

    @override
    Handler getHandler({List<Middleware>? middlewares, bool isSecurity = false}) {
      Router router = Router();

      router.get('/Atletas', (Request req){
        List<AtletaModel> atleta = _service.findAll();
        List<Map> atletaMap = atleta.map((e) => e.toJson()).toList();

        return Response.ok(jsonEncode(atletaMap));
      });

      router.post('/Atletas', (Request req){

        String? id = req.url.queryParameters['id'];
        return Response.ok("Atleta");
      });

      router.delete('/Atletas', (Request req){

        String? id = req.url.queryParameters['id'];
        return Response.ok("Atletas");
      });
      return createHandler(router: router, isSecurity: isSecurity, middlewares:  middlewares);
    }
}