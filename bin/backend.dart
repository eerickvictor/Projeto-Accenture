import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'servidor.dart';

void main() async{
  
  var _servidor = Servidor();
  
  final servidor = await shelf_io.serve(_servidor.handler, "localhost", 8080);

  print('Nosso servidor foi iniciado http://localhost:8080');

  
}
