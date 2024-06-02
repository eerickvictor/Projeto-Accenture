import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompanyCreateMeta extends StatefulWidget {
  const CompanyCreateMeta({super.key});

  @override
  State<CompanyCreateMeta> createState() => _CompanyCreateMetaState();
}

class _CompanyCreateMetaState extends State<CompanyCreateMeta> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Criar meta',
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 400,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade900),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: getAuthenticationInputDecoration("Objetivo", false, false, ""),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            validator: (String? value) {
                              if(value == "") {
                                return "O campo que recebe o Objetivo não pode ser vazio";
                              }
                              return null;
                            },
                          ),
                          spacing(0, 20),
                          TextFormField(
                            decoration: getAuthenticationInputDecoration("Objetivo", false, false, ""),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            validator: (String? value) {
                              if(value == "") {
                                return "O campo que recebe a Recompensa não pode ser vazio";
                              }
                              return null;
                            },
                          ),
                          spacing(0, 30),
                          Container(
                            width: 150,
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
                                  botaoCriar();
                              },
                              child: const Text(
                                "Criar meta",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          spacing(0, 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  botaoCriar() {
    if (_formKey.currentState!.validate()) {
      print("Formulario valido");
      Navigator.of(context).pop();
    } else{
      
      print("Formulario invalido");
    }
  }
}
