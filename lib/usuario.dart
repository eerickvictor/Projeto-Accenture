
class Usuario {
  static int _contador = 10; //contador para cada usuário cadastrado
  int _idUsuario = 0; //variável para armazenar o número do usuário
  String _nome;
  String? _sobrenome;
  String _cpf;
  DateTime _nascimento;
  String _contato;
  String _email;
  String _senha;
  

  Usuario(this._nome, this._cpf, this._nascimento, this._contato, this._email, this._senha) {
    _contador++; // Incrementa o contador ao criar um novo usuário
    _idUsuario = _contador; // Atribui o número do usuário baseado no contador
  }


  // Getters
  String get nome => _nome;

  String get sobrenome => _sobrenome = " ";

  String get cpf => _cpf;

  DateTime get dataNascimento => _nascimento;

  String get contato => _contato;

  String get email => _email;

  String get senha => _senha;

  int get numeroUsuario => _idUsuario;


  // Setters
  set nome(String nome) {
    _nome = nome;
  }

  set sobrenome(String sobrenome) {
    _sobrenome = sobrenome;
  }

  set cpf(String cpf) {
    _cpf = cpf;
  }

  set dataNascimento(DateTime dataNascimento) {
    _nascimento = dataNascimento;
  }

  set contato(String contato) {
    _contato = contato;
  }

  set email(String email) {
    _email = email;
  }

  set senha(String senha) {
    _senha = senha;
  }
}
