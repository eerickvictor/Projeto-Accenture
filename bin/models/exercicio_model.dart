import 'meta_atleta_model.dart';

class ExercicioModel{
  final int? id;
  final double tempo;
  final double distancia;
  final DateTime data;
  final MetaAtletaModel metaAtleta;

  ExercicioModel(this.id, this.tempo, this.distancia, this.data, this.metaAtleta);

  @override
  String toString(){
    return 'ExercicioModel(id: $id, tempo: $tempo, distancia: $distancia, data: $data, metaAtleta: $metaAtleta)';
  }

  factory ExercicioModel.fromJson(Map map){
    return ExercicioModel(map['id'], map['tempo'], map['distancia'], map['data'], map['metaAtleta']);
  }

  Map toJson(){
    return {
      'id': id,
      'tempo': tempo,
      'distancia': distancia,
      'data': data,
      'metaAtleta': metaAtleta,
    };
  }
  
}