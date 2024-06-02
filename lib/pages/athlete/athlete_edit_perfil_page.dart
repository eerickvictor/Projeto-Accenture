import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class AthleteEditPerfilPage extends StatefulWidget {
  const AthleteEditPerfilPage({super.key});

  @override
  State<AthleteEditPerfilPage> createState() => _AthleteEditPerfilPageState();
}

class _AthleteEditPerfilPageState extends State<AthleteEditPerfilPage> {
  
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
              TextFormField(
                decoration: getAuthenticationInputDecoration("Nome Completo", false, true, "Bruno Antonio Alexandrino da Silva"),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o nome não pode ser vazio";
                  }
                  if(value!.length < 10) {
                    return "O valor informado é muito curto";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Idade", false, true, "19"),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe a idade não pode ser vazio";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Sexo", false, true, "Masculino"),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o sexo não pode ser vazio";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("E-mail", false, true, "brunoantonio0210@gmail.com"),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o email não pode ser vazio";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                decoration: getAuthenticationInputDecoration("Senha", true, true, "1234"),
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
                        botaoSalvarAlteracoes();
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

  botaoSalvarAlteracoes() {
    if (_formKey.currentState!.validate()) {
      print("Formulario valido");
      Navigator.of(context).pop();
    } else{
      
      print("Formulario invalido");
    }
  }
}
