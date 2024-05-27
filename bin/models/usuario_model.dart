
class Usuario{
  final int id;
  final String cpf;
  final String nome;
  final String email;
  final String is_ativo;
  final DateTime data_criacao;

  Usuario(
    this.id, 
    this.cpf, 
    this.nome, 
    this.email, 
    this.is_ativo, 
    this.data_criacao
    );

    factory Usuario.fromMap(Map<String, dynamic> map){
      return Usuario(
        map['id']?.toInt() ?? 0,
        map['cpf'] ?? '',
        map['nome'] ?? '',
        map['email'] ?? '',
        map['is_ativo'] ?? false,
        DateTime.fromMillisecondsSinceEpoch(map['data_criacao']),
      );
    }
    
    @override
    String toString(){
      return 'Usuario(id: $id, cpf: $cpf, nome: $nome, email: $email, is_ativo: $is_ativo, data_criacao: $data_criacao)'; 
    }
    

}