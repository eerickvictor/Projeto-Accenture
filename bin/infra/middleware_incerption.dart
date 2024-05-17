import 'package:shelf/shelf.dart';
class MiddlewareIntecerption{
  Middleware get middleware{
    return createMiddleware(responseHandler: (Response res){
      return res.change(headers: {
        'content-type': 'application/json'
          }
        );
      }
    );
  }
}