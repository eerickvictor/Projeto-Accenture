import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class PageCadastroCompany extends StatefulWidget {
  const PageCadastroCompany({super.key});

  @override
  State<PageCadastroCompany> createState() => _PageCadastroCompanyState();
}

class _PageCadastroCompanyState extends State<PageCadastroCompany> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey.shade900,
            height: 1.0,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.black,
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                alignment: const Alignment(0.0, 1.15),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo_enercicio.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              spacing(0, 30),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Nome Fantasia", false, false, ""),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o nome fantasia não pode ser vazio";
                  }
                  if(value!.length < 2) {
                    return "O valor informado é muito curto";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Razão Social", false, false, ""),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe a razão social não pode ser vazio";
                  }
                  if(value!.length < 2) {
                    return "O valor informado é muito curto";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("CNPJ", false, false, ""),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o CNPJ não pode ser vazio";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("E-mail", false, false, ""),
                style: const TextStyle(
                  color: Colors.white,
                ),
                 validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe email não pode ser vazio";
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
                decoration: getAuthenticationInputDecoration("Senha", true, false, ""),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe a senha não pode ser vazio";
                  } 
                  return null;
                },
              ),
              spacing(0, 30),
              Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFF800080),
                      Color(0xFF400040),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox.expand(
                  child: ElevatedButton(
                    onPressed: () {
                      botaoCadastrar();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Cadastrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  botaoCadastrar() {
    if (_formKey.currentState!.validate()) {
      print("Formulario valido");
      Navigator.pop(context);
    } else{
      
      print("Formulario invalido");
    }
  }
}
