
class Athlete{
  String? nome;
  String? cpf;
  String? email;
  String? senha;

  Athlete(
    {
      this.nome,
      this.cpf,
      this.email,
      this.senha
    }
  );

  Map toJson() => {"nome": nome, "cpf": cpf, "email": email, "senha": senha};
  
}
