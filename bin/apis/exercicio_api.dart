import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../models/exercicio_model.dart';
import '../services/generic_service.dart';
import 'api.dart';

class ExercicioApi extends Api {
  final GenericService <ExercicioModel> _service;
  ExercicioApi(this._service);

    @override
    Handler getHandler({List<Middleware>? middlewares, bool isSecurity = false}) {
      Router router = Router();


      router.get("/Exercicio", (Request req){
        List<ExercicioModel> exercicio = _service.findAll();
        List<Map> exercicioMap = exercicio.map((e) => e.toJson()).toList();

        return Response.ok(jsonEncode(exercicioMap));
      });

      router.post("/Exercicio", (Request req) async {
        var body = await req.readAsString();
        _service.save(ExercicioModel.fromJson(jsonDecode(body)));
      });

      router.put("/Exercicio", (Request req){

        String? id = req.url.queryParameters['id'];
        return Response.ok('Exercicio');
      });

      router.delete("/Exercicio", (Request req){

        String? id = req.url.queryParameters['id'];
        return Response.ok("Exercicio");
      });
      return createHandler(router: router, isSecurity: isSecurity, middlewares: middlewares);
    }
}