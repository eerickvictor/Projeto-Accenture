import 'atleta_model.dart';
import 'meta_model.dart';

class MetaAtletaModel{
  final int? id;
  final double distancia;
  final bool finalizada;
  final MetaModel metaEmpresa;
  final AtletaModel atleta;

  MetaAtletaModel(this.id, this.distancia, this.finalizada, this.atleta, this.metaEmpresa);

  @override
  String toString(){
    return 'MetaAtletaModel(id: $id, distancia: $distancia, status: $finalizada, metaEmpresa: ${metaEmpresa.id}, atleta: ${atleta.id})';
  }

  factory MetaAtletaModel.fromJson(Map map){
    return MetaAtletaModel(map['id'], map['distancia'], map['finalizada'], map['metaEmpresa'], map['atleta']);
  }

  Map toJson(){
    return {
      'id': id,
      'distancia': distancia,
      'finalizada': finalizada,
      'metaEmpresa': metaEmpresa,
      'atleta': atleta,
    };
  }
}
