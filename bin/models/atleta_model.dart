// import 'dart:html';

import 'usuario_model.dart';

class AtletaModel extends UsuarioModel{
  final int? id;
  final String cpf;
  final String sexo;
  final int idade;
  final double quiloWatts;

  AtletaModel(String nome, String email, String senha, String contato, this.id, this.cpf, this.sexo, this.idade, this.quiloWatts) : super(nome, email, senha, contato);

  @override
  String toString(){
    return 'HomeModel(nome: $nome, email: $email, senha: $senha, contato: $contato, id: $id, cpf: $cpf, sexo: $sexo, idade: $idade, quiloWatts: $quiloWatts)';
  }

  factory AtletaModel.fromJson(Map map){
    return AtletaModel(map['nome'], map['email'], map['senha'], map['contato'], map['id'], map['cpf'], map['sexo'], map['idade'], map['quiloWatts']);
  }

  Map toJson() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'senha': senha,
      'cpf': cpf,
      'contato': contato,
      'sexo': sexo,
      'idade': idade,
      'quiloWatts': quiloWatts,
    };
  }
}