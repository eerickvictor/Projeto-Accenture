import 'dart:ffi';

import 'package:enercicio/utilitarios/utils.dart';
import '../../enums/gender.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class AthleteEditPerfilPage extends StatefulWidget {
  const AthleteEditPerfilPage({super.key});

  @override
  State<AthleteEditPerfilPage> createState() => _AthleteEditPerfilPageState();
}

class _AthleteEditPerfilPageState extends State<AthleteEditPerfilPage> {
  
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Gender selectGender = Gender.HOMEM;


  String athleteId = "";
  String name = "";
  String cpf = '';
  String email = '';
  String birthDate = '';
  String password = '';

  List<String> athleteData = [];

  @override
  Widget build(BuildContext context) {

    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    if (arguments != null) {
      setState(() {
        athleteId = arguments['athleteId'];
        print(athleteId);
      });
    }

    // @override
    // void initialState() {
    //   super.initState();
    //   getAthleteData(athleteId, athleteData);
    // }
    // // List<String> athleteData = [];

    // print(athleteData);


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
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(4.0),
        //   child: Container(
        //     color: Colors.grey.shade900,
        //     height: 1.0,
        //   ),
        // ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              spacing(0, 10),
              TextFormField(
                controller: nameController,
                // keyboardType: TextInputType.text,
                decoration: getAuthenticationInputDecoration("Nome completo", false, false, ''),
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
                controller: cpfController,
                decoration: getAuthenticationInputDecoration("CPF", false, false, ""),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o CPF não pode ser vazio";
                  }
                  if(value!.length < 11) {
                    return "O valor informado é muito curto";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                controller: emailController,
                decoration: getAuthenticationInputDecoration("E-mail", false, false, ""),
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe o email não pode ser vazio";
                  }
                  if(value!.length < 5) {
                    return "O valor informado é muito curto";
                  }
                  if(!value.contains("@")) {
                    return "O e-mail informado não é valido";
                  }
                  return null;
                },
              ),
              spacing(0, 20),
              TextFormField(
                controller: passwordController,
                decoration: getAuthenticationInputDecoration("Senha", true, false, ""),
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe a senha não pode ser vazio";
                  }
                }
              ),
              spacing(0, 20),
              TextFormField(
                controller: birthDateController,
                decoration: getAuthenticationInputDecoration("Data de nascimento", false, false, ""),
                obscureText: false,
                style: const TextStyle(
                  color: Colors.white,
                ),
                readOnly: true,
                onTap: _selectDate,
                validator: (String? data) {
                  data = birthDateController.text;
                  if(data == "") {
                    return "O campo que recebe a Data não pode ser vazio";
                  }
                }
              ),
              spacing(0, 50),
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

void _selectDate() async {
    DateTime? _picker = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100)
    );

    if (_picker != null) {
      setState(() {
        birthDateController.text = _picker.toString().split(' ')[0];
      });
    }
  }

  botaoSalvarAlteracoes() {
    if (_formKey.currentState!.validate()) {
      print("Formulario valido");
      updateAthleteData(athleteId, nameController, cpfController, emailController, passwordController, birthDateController);
      Navigator.of(context).pop();
    } else{
      
      print("Formulario invalido");
    }
  }


  //Função que vai servir para fazer o update dos dados do Atleta
  Future<void> updateAthleteData(String athleteId, TextEditingController nameController, TextEditingController cpfController, TextEditingController emailController, TextEditingController senhaController, TextEditingController birthDataController) async {
    QueryBuilder<ParseObject> athlete = QueryBuilder<ParseObject>(ParseObject('Atleta'));
    // athlete.whereContains('objectId', athleteId);
    athlete.whereContains('objectId', athleteId);
    final ParseResponse apiResponse = await athlete.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var athlete in apiResponse.results!) {
        athlete as ParseObject;
        athlete.set('nome', nameController.text);
        athlete.set('cpf', cpfController.text);
        athlete.set('email', emailController.text);
        athlete.set('senha', passwordController.text);
        athlete.set('data_nascimento', birthDateController.text);
        await athlete.save();
      }
    }

  Future<List<String>> getAthleteData(String athleteId, List<String> athleteData) async {
    QueryBuilder<ParseObject> athlete = QueryBuilder<ParseObject>(ParseObject('Atleta'));
    // athlete.whereContains('objectId', athleteId);
    athlete.whereContains('objectId', athleteId);
    final ParseResponse apiResponse = await athlete.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        o as ParseObject;
        athleteData.add(o.get('nome'));
        athleteData.add(o.get('cpf'));
        athleteData.add(o.get('email'));
        athleteData.add(o.get('senha'));
        athleteData.add(o.get('data_nascimento'));
        // name = o.get('nome');
        // cpf = o.get('cpf');
        // email = o.get('email');
        // password = o.get('senha');
        // birthDate = o.get('data_nascimento');
        // print(name + cpf + email + password + birthDate);
        print((o as ParseObject).toString());
      }
    }

    print(athleteData);

    return athleteData;
  } 

  //  Future<String> getAthleteData(String athleteId) async {
  //   QueryBuilder<ParseObject> athlete = QueryBuilder<ParseObject>(ParseObject('Atleta'));
  //   // athlete.whereContains('objectId', athleteId);
  //   athlete.whereEqualTo('objectId', athleteId);
  //   final ParseResponse apiResponse = await athlete.query();

  //   if (apiResponse.success && apiResponse.results != null) {
  //     for (var o in apiResponse.results!) {
  //       o as ParseObject;
  //       name = o.get('nome');
  //       cpf = o.get('cpf');
  //       email = o.get('email');
  //       password = o.get('senha');
  //       birthDate = o.get('data_nascimento');
  //       // print(name + cpf + email + password + birthDate);
  //       // print((o as ParseObject).toString());
  //     }
  //   }

  //   return 'name + cpf + email + password + birthDate';
  // } 

}
}