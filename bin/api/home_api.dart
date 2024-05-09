import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class HomeApi {
    Handler get handler{
      Router router = Router();
      router.get("/homePage", (Request req){
        
        return Response.ok("Home Page");
      });
      return router;
    }
}