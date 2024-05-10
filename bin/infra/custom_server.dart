import 'package:shelf/shelf.dart';

import 'package:shelf/shelf_io.dart' as shelf_io;

class CustomServer{
  Future<void> initialize({
    required Handler handler,
    required String url,
    required int port,

  }) async{
      shelf_io.serve(handler, url, port);
    print("Servidor inicializado -> http://$url:$port");
  }
}