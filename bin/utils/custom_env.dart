import 'dart:io';
import 'package:test/expect.dart';

import 'parse_extension.dart';
class CustomEnv{
  static Map <String, String> _map = {};
  static String _file = '.env';

  CustomEnv._();

  factory CustomEnv.fromFile(String file){
    _file = file;
    return CustomEnv._();
  }
  
  static Future<T> get <T>({required String key}) async{
    if(_map.isEmpty) await _loadFile();
    return _map[key]!.toType(T);
  }
  static Future<void> _loadFile() async{
    List <String> linhas = (await _readField()).split('\n');
    if(linhas.isEmpty){
      List <String> linhas = (await _readField()).split('\n');
       _map = {for (var l in linhas) l.split('=')[0]: l.split('=')[1]};
    }
    _map = {for (var l in linhas) l.split('=')[0]: l.split('=')[1]};
  }
  
  static Future<String> _readField() async{
    return await File(_file).readAsString();
  }



}