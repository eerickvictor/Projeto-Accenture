import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class CompanyManageMeta extends StatefulWidget {
  const CompanyManageMeta({super.key});

  @override
  State<CompanyManageMeta> createState() => _CompanyManageMetaState();
}

class _CompanyManageMetaState extends State<CompanyManageMeta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Gerenciar meta',
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Editar meta',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          width: 400,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade900),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0))),
                          child: Form(
                            // key: 
                            // _formKey,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 160,
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
                                          "Cancelar alterações",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    spacing(20, 0),
                                    Container(
                                      width: 160,
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
                                          // botaoSalvar();
                                        },
                                        child: const Text(
                                          "Salvar alterações",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                spacing(0, 10),
                              ],
                            ),
                          ),
                        ),
                        spacing(0, 30),
                        Container(
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Usuarios',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                width: 400,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade900),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0))),
                                child: Column(
                                  children: [
                                    userContainer("Sofia Martins", "10000"),
                                    spacing(0, 5),
                                    userContainer("Lucas Ferreira", "7000"),
                                    spacing(0, 5),
                                    userContainer("Isabela Silva", "5000"),
                                    spacing(0, 20),
                                    Container(
                                      width: 160,
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
                                          Navigator.of(context).pushNamed('/lista_usuarios_empresa');
                                        },
                                        child: const Text(
                                          "Ver todos usuarios",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    spacing(0, 20),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}