import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';


class CompanyEditPerfilPage extends StatefulWidget {
  const CompanyEditPerfilPage({super.key});

  @override
  State<CompanyEditPerfilPage> createState() => _CompanyEditPerfilPageState();
}

class _CompanyEditPerfilPageState extends State<CompanyEditPerfilPage> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController cnpjController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController adressController = TextEditingController();

  String companyId = "";
  String name = "";
  String cnpj = "";
  String email = "";
  String password = "";
  String contact = "";
  String adress = "";


  @override
  Widget build(BuildContext context) {

    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    if (arguments != null) {
      setState(() {
        companyId = arguments['companyId'];
        print(companyId);
      });
    }

    getCompanyData(companyId);

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
                controller: nameController,
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
                controller: emailController,
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
                controller: passwordController,
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
              spacing(0, 20),
              TextFormField(
                controller: adressController,
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
                controller: contactController,
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

  //Função que vai servir para fazer o update dos dados do Atleta
  Future<void> updateCompanyData(String companyId, TextEditingController nameController, TextEditingController cnpjController, TextEditingController emailController, TextEditingController passwordController, TextEditingController contactController, TextEditingController adressController) async {
    QueryBuilder<ParseObject> company = QueryBuilder<ParseObject>(ParseObject('Empresa'));
    // athlete.whereContains('objectId', athleteId);
  company.whereContains('objectId', companyId);
    final ParseResponse apiResponse = await company.query();

    if (apiResponse.success && apiResponse.results != null) {
      var company = apiResponse.results!.first;
      company.set('nome', nameController.text);
      company.set('cnpj', cnpjController.text);
      company.set('email', emailController.text);
      company.set('senha', passwordController.text);
      company.set('contato', contactController.text);
      company.set('endereco', adressController.text);
      await company.save();
    }
  }

  Future<void> getCompanyData(String companyId) async {
    QueryBuilder<ParseObject> companyObject = QueryBuilder<ParseObject>(ParseObject('Empresa'));
    companyObject.whereContains('objectId', companyId);
    final ParseResponse apiResponse = await companyObject.query();

    if (apiResponse.success && apiResponse.results != null) {
      final ParseObject athlete = apiResponse.results!.first as ParseObject;

      if(mounted) {

        setState(() {
          name = athlete.get<String>('nome') ?? '';
          cnpj = athlete.get<String>('cnpj') ?? '';
          email = athlete.get<String>('email') ?? '';
          password = athlete.get<String>('senha') ?? '';
          contact = athlete.get<String>('contato') ?? '';
          adress = athlete.get<String>('endereco') ?? '';
        });  

      }
      
    }
  }


}

