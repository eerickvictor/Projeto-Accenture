import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class Servidor {
  Handler get handler{
      final router = Router();
      
      router.post('/login',(Request req) async{
        var result = await req.readAsString();
        Map json = jsonDecode(result);

        var usuario = json['usuario'];
        var senha = json ['senha'];

        if(usuario=="admin" && senha=="enercicio"){
          return Response.ok("Bem-vindo $usuario");
        }
        else{
          return Response.forbidden("Não autorizado");
        }
        
        
        
      });
    return router;
  }
}