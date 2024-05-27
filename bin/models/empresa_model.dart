import 'usuario_model.dart';

class EmpresaModel extends UsuarioModel{
  final int? id;
  final String razaoSocial;
  final String cnpj;
  final String endereco;
  final String imagem;

  EmpresaModel(String nome, String email, String senha, String contato, this.id, this.cnpj, this.razaoSocial, this.endereco, this.imagem) :super(nome, email, senha, contato);

  @override
  String toString(){
    return 'AtletaModel(nome: $nome, email: $email, senha: $senha, contato: $contato, id: $id, cpnj: $cnpj, razaoSocial: $razaoSocial, endereco: $endereco, imagem: $imagem)';
  }

  @override
  factory EmpresaModel.fromJson(Map map){
    return EmpresaModel(map['nome'], map['email'], map['senha'], map['contato'], map['id'], map['cnpj'], map['razaoSocial'], map['endereco'], map['imagem']);
  }

  Map toJson() {
    return {
      'id': id,
      'nome': nome,
      'razaoSocial': razaoSocial,
      'email': email,
      'senha': senha,
      'contato': contato,
      'endereco:': endereco,
      'imagem': imagem,
    };
  }
  
}