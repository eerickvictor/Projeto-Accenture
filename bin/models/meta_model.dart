import 'empresa_model.dart';

class MetaModel{
  final int? id;
  final String distancia;
  final String recompensa;
  final EmpresaModel empresa;

  MetaModel(this.id, this.distancia, this.recompensa, this.empresa);

  @override
  String toString(){
    return 'MetaModel(id: $id, distancia: $distancia, recompensa: $recompensa, empresa: ${empresa.id})';
  }

  factory MetaModel.fromJson(Map map){
    return MetaModel(map['id'], map['distancia'], map['recompensa'], map['empresa']);
  }

  Map toJson(){
    return {
      'id': id,
      'distancia': distancia,
      'recompensa': recompensa,
      'empresa': empresa.id,
    };
  }
}