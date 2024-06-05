import 'package:enercicio/models/athlete.dart';
import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class PageLoginCompany extends StatefulWidget {
  const PageLoginCompany({super.key});

  @override
  State<PageLoginCompany> createState() => _PageLoginCompanyState();
}

class _PageLoginCompanyState extends State<PageLoginCompany> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  String companyId = '';

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
                child: Image.asset("assets/images/company_imagem.png"),
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
                        .pushNamed('/cadastro_empresa');
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
                      botaoLogin(companyId);
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

  botaoLogin(String companyId) async {
    if (_formKey.currentState!.validate()) {

      QueryBuilder<ParseObject> company = QueryBuilder<ParseObject>(ParseObject('Empresa'));
      company.whereContains('email', emailController.text);
      company.whereContains('senha', passwordController.text);
      final ParseResponse apiResponse = await company.query();

      if (apiResponse.success && apiResponse.results != null) {
        var company = apiResponse.results!.first;

        companyId = company.get('objectId');

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login realizado com sucesso!')));

        Navigator.of(context).pop();
        Navigator.of(context).pushReplacementNamed('/home_empresa', arguments: {'companyId': companyId});
      } else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login ou senha invalidos!')));
      }
    }
  }
}
