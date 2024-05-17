import '../apis/home_api.dart';

class HomeModel{
  final int? id;
  final String titulo;
  final String descricao;
  final String imagem;
  final DateTime? data;

  HomeModel(this.id,
    this.titulo,
    this.descricao,
    this.imagem,
    this.data,
    );
    @override
    String toString(){
      return 'HomeModel(id: $id, titutlo: $titulo, descricao: $descricao, imagem: $imagem, data: $data)';
    }

    factory HomeModel.fromJson(Map map){
      return HomeModel(map['id'] ?? '', map ['titulo'], map ['descricao'], map ['imagem'], map ['data'] != null ? DateTime.fromMicrosecondsSinceEpoch((map['data'])): null,
      );
    }

    Map toJson(){
      return {
        'id': id,
        'titulo': titulo,
        'descricao': descricao,
        'imagem': imagem,
       // 'data': data
      };
    }
}