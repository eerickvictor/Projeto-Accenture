import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class CompanyEditPerfilPage extends StatefulWidget {
  const CompanyEditPerfilPage({super.key});

  @override
  State<CompanyEditPerfilPage> createState() => _CompanyEditPerfilPageState();
}

class _CompanyEditPerfilPageState extends State<CompanyEditPerfilPage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Editar Perfil',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey.shade900,
            height: 1.0,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              spacing(0, 30),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Nome Fantasia", false, true, "Enercicio"),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o Nome fantasia não pode ser vazio";
                  }
                  if(value!.length < 2) {
                    return "O valor informado é muito curto";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Razao Social", false, true, "Enercicio S.A"),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe a Razao social não pode ser vazio";
                  }
                  if(value!.length < 5) {
                    return "O valor informado é muito curto";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Endereço", false, true, "Rua flutter 467"),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o Endereço não pode ser vazio";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Contato", false, true, "+55 81 9 65473421"),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o Endereço não pode ser vazio";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Email", false, true, "enercicio@gmail.com"),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o E-mail não pode ser vazio";
                  }
                  if(value!.length < 5) {
                    return "O e-mail informado é muito curto";
                  }
                  if(!value.contains("@")) {
                    return "O e-mail informado não é valido";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Senha", false, true, "1234"),
                 style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe a Senha não pode ser vazio";
                  }
                  if(value!.length < 5) {
                    return "A senha informada é muito curta";
                  }
                  return null;
                },
              ),
              spacing(0, 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        "Cancelar Alterações",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  spacing(20, 0),
                  Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Colors.pink,
                        Color.fromRGBO(156, 39, 176, 1),
                      ]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {
                        botaoLogin();
                      },
                      child: const Text(
                        "Salvar Alterações",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  botaoLogin() {
    if (_formKey.currentState!.validate()) {
      print("Formulario valido");
      Navigator.of(context).pop();
    } else{
      
      print("Formulario invalido");
    }
  }
}
