class UsuarioModel
{
  // final int? id;
  final String nome;
  final String email;
  final String senha;
  final String contato;

  UsuarioModel(this.nome, this.email, this.senha, this.contato);
  
  @override
  String toString()
  {
    return 'UsuarioModel(nome: $nome, email: $email, senha: $senha, contato: $contato)';
  }

  factory UsuarioModel.fromJson(Map map)
  {
    return UsuarioModel(map['nome'], map['email'], map['senha'], map['contato']);
  }

  Map toJson() {
    return {
      'nome': nome,
      'email': email,
      'senha': senha,
      'contato': contato
    };
    
  }
}