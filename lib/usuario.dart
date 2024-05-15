
class Usuario {
  String nomeUsuario;
  String emailUsuario;
  String cpfUsuario;
  String senhaUsuario;
  DateTime? dataNascimentoUsuario;
  double? kmLocalUsuario;
  double? kmTotalUsuario;
  int? idUsuario;

  Usuario(this.nomeUsuario, this.emailUsuario, this.cpfUsuario, this.senhaUsuario,
      {this.dataNascimentoUsuario, this.kmLocalUsuario, this.kmTotalUsuario, this.idUsuario});

  // Getters
  String getNomeUsuario() {
    return this.nomeUsuario;
  }

  String getEmailUsuario() {
    return this.emailUsuario;
  }

  String getCpfUsuario() {
    return this.cpfUsuario;
  }

  String getSenhaUsuario() {
    return this.senhaUsuario;
  }

  DateTime? getDataNascimentoUsuario() {
    return this.dataNascimentoUsuario;
  }

  double? getKmLocalUsuario() {
    return this.kmLocalUsuario;
  }

  double? getKmTotalUsuario() {
    return this.kmTotalUsuario;
  }

  int? getIdUsuario() {
    return this.idUsuario;
  }

  // Setters
  void setNomeUsuario(String nome) {
    this.nomeUsuario = nome;
  }

  void setEmailUsuario(String email) {
    this.emailUsuario = email;
  }

  void setCpfUsuario(String cpf) {
    this.cpfUsuario = cpf;
  }

  void setSenhaUsuario(String senha) {
    this.senhaUsuario = senha;
  }

  void setDataNascimentoUsuario(DateTime dataNascimento) {
    this.dataNascimentoUsuario = dataNascimento;
  }

  void setKmLocalUsuarion(double kmLocal) {
   this.kmLocalUsuario = kmLocal;
  }

   void setKmTotalUsuarion(double kmTotal) {
    this.kmTotalUsuario = kmTotal;
   }

   void setIdUsuarion(int id) {
     this.idUsuario = id; 
     
   }
}
