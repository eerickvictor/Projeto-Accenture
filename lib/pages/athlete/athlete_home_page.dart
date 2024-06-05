import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class AthleteHomePage extends StatefulWidget {
  const AthleteHomePage({super.key});

  @override
  State<AthleteHomePage> createState() => _AthleteHomePageState();
}

class _AthleteHomePageState extends State<AthleteHomePage> {
  String? athleteId;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    if (arguments != null) {
      setState(() {
        athleteId = arguments['athleteId'];
        print(athleteId);
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
        width: 400,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Empresas',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.all(10.0),
            //   width: 400,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.grey.shade900),
            //     borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            //   ),
            //   child: Column(
            //     children: [
                  //Este widget permite que as operações realizadas dentro dele possam ser realizadas e utilizadas de maneira assincrona
                  FutureBuilder<List<ParseObject>>(
                    //Recebimento de dados de maneira assincrona
                    future: getAllCompany(),
                    //Passagem de um contexto atual e um contexto futuro com snapshots, que seriam prints de estado do valor que foi passado
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return const Center(
                          child: Text("Error.."),
                        );
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return const Center(
                          child: Text("No data"),
                        );
                      } else {
                        return Container(
                          padding: const EdgeInsets.all(10.0),
                          width: 400,
                          height: 630,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade900),
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          //É uma lista de objetos 
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.length,
                            //Função que vai pegar a quantidade de itens definidos no itemCount e realizar algo referente a essa quantidade
                            itemBuilder: (context, index) {
                              final company = snapshot.data![index];
                              final companyId = company.get<String>('objectId');
                              final companyName = company.get<String>('nome');
                              return companyContainer(
                                companyName!,
                                "assets/images/stations/station_imagem.png", companyId!
                              );
                            },
                          ),
                        );
                      }
                    },
                  ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(color: Colors.grey.shade900, width: 1.0),
          ),
        ),
        child: SizedBox(
          height: 20,
          width: 500,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/perfil_atleta', arguments: {"athleteId": athleteId});
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

  Widget companyContainer(String companyName, String urlCompanyImage, String companyId) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          height: 250,
          child: ElevatedButton(
            onPressed: () => {
              Navigator.of(context).pushNamed('/home_atleta_empresa', arguments: {'companyId': companyId}),
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: const BeveledRectangleBorder(),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 250,
                  height: 200,
                  child: Image.asset(urlCompanyImage),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    companyName,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<List<ParseObject>> getAllCompany() async {
    QueryBuilder<ParseObject> company = QueryBuilder<ParseObject>(ParseObject('Empresa'));
    company.keysToReturn(['nome', 'objectId']);
    final ParseResponse apiRespose = await company.query();

    if (apiRespose.success && apiRespose.results != null) {
      return apiRespose.results as List<ParseObject>;
    } else {
      return [];
    }
  }
}
