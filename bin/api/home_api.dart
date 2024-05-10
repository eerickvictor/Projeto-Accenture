import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class HomeApi {
    Handler get handler{
      Router router = Router();
      router.get("/homePage", (Request req){
        return Response.ok("Home Page");
      });

      router.post("/homePage", (Request req){
          return Response.ok("Home page");
      });

      router.put("/homePage", (Request req){
        String? id = req.url.queryParameters["id"];
        return Response.ok("Home page");
      });

      router.delete("/homePage", (Request req){
          String? id = req.url.queryParameters["id"];
          return Response.ok("Home page");
      });
      return router;
    }
}