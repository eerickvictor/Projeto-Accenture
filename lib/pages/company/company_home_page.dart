import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class CompanyHomePage extends StatefulWidget {
  const CompanyHomePage({super.key});

  @override
  State<CompanyHomePage> createState() => _CompanyHomePageState();
}

class _CompanyHomePageState extends State<CompanyHomePage> {

  final _formKey = GlobalKey<FormState>();

  String? companyId;

  TextEditingController rewardController = TextEditingController();
  TextEditingController distanceController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    if (arguments != null) {
      setState(() {
        companyId = arguments['companyId'];
        print(companyId);
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          alignment: Alignment.center,
          width: 400,
          height: 50,
          child: Image.asset('assets/images/logo_enercicio_horizontal.png'),
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
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Minha meta',
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
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade900),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0))),
                          child: Column(
                            children: [
                              spacing(0, 5),
                              const Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(5.0)),
                                  Icon(
                                    Icons.bolt,
                                    color: Colors.purple,
                                  ),
                                  Text(
                                    '5KM',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              spacing(0, 5),
                              Container(
                                width: 350,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade900,
                                ),
                              ),
                              spacing(0, 5),
                              const Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(10.0)),
                                  Icon(
                                    Icons.bolt,
                                    color: Colors.purple,
                                  ),
                                  Text(
                                    'Recompensa: 5% de desconto na \nmensalidade',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              spacing(0, 10),
                              Container(
                                width: 350,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade900,
                                ),
                              ),
                              spacing(0, 10),
                              Container(
                                width: 140,
                                height: 40,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Colors.pink,
                                    Color.fromRGBO(156, 39, 176, 1),
                                  ]),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                      Navigator.of(context).pushNamed("/gerenciar_meta_empresa");
                                  },
                                  child: const Text(
                                    "Gerenciar meta",
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Criar meta',
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
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: distanceController,
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
                                  controller: rewardController,
                                  decoration: getAuthenticationInputDecoration("Recompensa", false, false, ""),
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
                                      createMetaBotton();
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
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'QuiloWatts gerados',
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
                          child: const Column(
                            children: [
                              Text(
                                '5000',
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'QUILOWATTS',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(),
        height: 60,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border(
                top: BorderSide(color: Colors.grey.shade900, width: 1.0))),
        child: SizedBox(
          height: 20,
          width: 500,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/perfil_empresa', arguments: {"companyId": companyId});
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: const CircleBorder(),
              shadowColor: Colors.transparent,
            ),
            child: Image.asset(
              'assets/images/icons/icon_perfil.png',
              scale: 5,
            ),
          ),
        ),
      ),
    );
  }


  void createMetaBotton() {
    if (_formKey.currentState!.validate()) {
      saveMetaData(rewardController, distanceController, companyId!);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Meta Criada com sucesso!')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Por gentileza informe os dados de maneira correta!')));
    }
  }

  Future<void> saveMetaData(
      TextEditingController reward,
      TextEditingController distance,
      String companyId) async {
    
    final empresaObjectId = ParseObject('Empresa').objectId;

    final meta = ParseObject('Meta')
      ..set('Recompensa', reward.text)
      ..set('distancia', distance.text)
      ..set('id_Empresa', ParseObject('Empresa')..objectId = empresaObjectId);
    await meta.save();

  }
}
