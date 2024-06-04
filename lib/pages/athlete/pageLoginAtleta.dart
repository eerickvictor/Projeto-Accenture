import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class LoginAtleta extends StatefulWidget {
  const LoginAtleta({super.key});

  @override
  State<LoginAtleta> createState() => _LoginAtletaState();
}

class _LoginAtletaState extends State<LoginAtleta> {

  final _formKey = GlobalKey<FormState>();

  //Criação dos controladores do formulario. São eles que vão receber os valores dos inputs
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //Criação da variavel que vai receber o Id da conta do atleta que está fazendo o login
  String? athleteId;

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
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.black,
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/images/bike_imagem.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
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
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                decoration: getAuthenticationInputDecoration("Senha", true, false, ""),
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                ),
                validator: (String? value) {
                  if(value == "") {
                    return "O campo que recebe senha não pode ser vazio";
                  } 
                  return null;
                },
              ),
              Container(
                height: 40,
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/cadastro_atleta');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple[600],
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Cadastrar-se",
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
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
                      botaoLogin();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          child: SizedBox(
                            height: 28,
                            width: 28,
                            child:
                                Image.asset("assets/images/logo_enercicio.png"),
                          ),
                        )
                      ],
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

  botaoLogin() {
    if (_formKey.currentState!.validate()) {
      print("Formulario valido");
      loginAthlete(emailController, passwordController);
      Navigator.of(context).pop();
      Navigator.of(context).pushReplacementNamed('/home_atleta', arguments: {'athleteId': athleteId});
    } else{
      
      print("Formulario invalido");
    }
  }

  Future<void> loginAthlete(TextEditingController emailController, TextEditingController passwordController) async {
    QueryBuilder<ParseObject> loginQuery = QueryBuilder<ParseObject>(ParseObject('Atleta'));
    loginQuery.whereContains('email', emailController.text);
    loginQuery.whereContains('senha', passwordController.text);
    final ParseResponse apiResponse = await loginQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        o as ParseObject;
        // var atlheteId = o.get('objectId');
        athleteId = o.get('objectId');
        print(athleteId);
        print((o as ParseObject).toString());
      }
    }
  } 

    
    

  
}
