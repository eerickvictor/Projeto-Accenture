import 'package:enercicio/models/athlete.dart';
import '../../enums/gender.dart';
import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class CadastroAtleta extends StatefulWidget {
  const CadastroAtleta({super.key});

  @override
  State<CadastroAtleta> createState() => _CadastroAtletaState();
}

class _CadastroAtletaState extends State<CadastroAtleta> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController nome = TextEditingController();
  TextEditingController cpf = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController dataNascimento = TextEditingController();
  TextEditingController sexo = TextEditingController();
  TextEditingController senha = TextEditingController();

  Gender selectGender = Gender.HOMEM;
  // void addMensage() async {
  //   await saveTodo(_message.text);
  //   setState(() {
  //     _message.clear();
  //   });
  // }

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
                controller: nome,
                // keyboardType: TextInputType.text,
                decoration: getAuthenticationInputDecoration("Nome completo", false, false, ""),
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
                controller: cpf,
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
                controller: email,
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
                controller: senha,
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
                controller: dataNascimento,
                decoration: getAuthenticationInputDecoration("Data de nascimento", false, false, ""),
                obscureText: false,
                style: const TextStyle(
                  color: Colors.white,
                ),
                readOnly: true,
                onTap: _selectDate,
                validator: (String? data) {
                  data = dataNascimento.text;
                  if(data == "") {
                    return "O campo que recebe a Data não pode ser vazio";
                  }
                }
              ),
              spacing(0, 20),
              const Text(
                'Genero',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              
              Column(
                children: [
                  for (Gender gender in Gender.values)
                    RadioListTile<Gender>(
                      title: Text(gender.toString().split('.').last, style: const TextStyle(color: Colors.white),),
                      value: gender,
                      groupValue: selectGender,
                      onChanged: (Gender? value) {
                        setState(() {
                          selectGender = value!;
                        });
                      },
                    ),
                ],
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

  void _selectDate() async {
    DateTime? _picker = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100)
    );

    if (_picker != null) {
      setState(() {
        dataNascimento.text = _picker.toString().split(' ')[0];
      });
    }
  }

  botaoCadastrar() {
    if (_formKey.currentState!.validate()) {
      print("Formulario valido");
      print(dataNascimento);
      print(dataNascimento.text);
      print(selectGender);
      print(selectGender.toString());
      saveDataAtleta(nome, cpf, email, senha, dataNascimento, selectGender);
      Navigator.of(context).pop();
    } else{
      // print(selectGender);
      print(selectGender.toString());
      print("Formulario invalido");
    }
  }

  Future<void> saveDataAtleta(TextEditingController nome, TextEditingController cpf, TextEditingController email, TextEditingController senha, TextEditingController dataNascimento, Gender selectGender) async {
    final atleta = ParseObject('Atleta')
      ..set('nome', nome.text)
      ..set('cpf', cpf.text)
      ..set('email', email.text)
      ..set('senha', senha.text)
      ..set('data_nascimento', dataNascimento.text)
      ..set('genero', selectGender.toString());
    await atleta.save();
  }
 }
