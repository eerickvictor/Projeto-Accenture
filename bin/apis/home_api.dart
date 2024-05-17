import 'dart:convert';
import 'dart:developer';
import '../models/home_model.dart';
import '../services/generic_service.dart';
import '../services/home_service.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class HomeApi {
    final GenericService <HomeModel> _service;
    HomeApi(this._service);

  
   Handler get handler{
      Router router = Router();


      router.get('/homePage', (Request req){
        List<HomeModel> home = _service.findAll();
        List<Map> homeMap = home.map((e) => e.toJson()).toList();
        
        return Response.ok(jsonEncode(homeMap));
      });

      router.post("/homePage", (Request req) async{
          var body = await req.readAsString();
          _service.save(HomeModel.fromJson(jsonDecode(body)));
          return Response(201);
      });

      router.put("/homePage", (Request req){
       // _service.save('');
        String? id = req.url.queryParameters["id"];
        return Response.ok("Home page");
      });

      router.delete("/homePage", (Request req){
        //_service.delete(1)
          String? id = req.url.queryParameters["id"];
          return Response.ok("Home page");
      });
      return router;
    }
}