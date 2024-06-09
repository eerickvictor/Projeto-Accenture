import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AthleteHomePage extends StatefulWidget {
  const AthleteHomePage({super.key});

  @override
  State<AthleteHomePage> createState() => _AthleteHomePageState();
}

class _AthleteHomePageState extends State<AthleteHomePage> {
  void pressed() {
    print('pressionado');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          alignment: Alignment.center,
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
                  TextFormField(
                    decoration: getAuthenticationInputDecoration('', false, true, "Procurar"),
                    style: const TextStyle(
                      color: Colors.white
                    ),
                  ),
                  spacing(0, 30),
                  Expanded(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Empresas',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        // Expanded(
                          Container(
                            // padding: const EdgeInsets.all(10.0),
                            // decoration: BoxDecoration(
                            //     border: Border.all(color: Colors.grey.shade900),
                            //     borderRadius: const BorderRadius.all(
                            //         Radius.circular(10.0))),
                            child: Column(
                              children: [
                                companyContainer("Academia da Cidade",
                                    "assets/images/stations/station_imagem.png"),
                                    const SizedBox(height: 10,),
                                companyContainer("Shopping Recife",
                                    "assets/images/stations/station_imagem.png"),
                                    const SizedBox(height: 10,),
                                companyContainer("Academia BodyBuilder",
                                    "assets/images/stations/station_imagem.png"),
                                    const SizedBox(height: 10,),
                                companyContainer("Porto Digital",
                                    "assets/images/stations/station_imagem.png"),
                                    const SizedBox(height: 10,),
                                companyContainer("Posto Machado98",
                                    "assets/images/stations/station_imagem.png"),
                                        const SizedBox(height: 10,),
                                companyContainer("Posto Machado98",
                                    "assets/images/stations/station_imagem.png"),
                                        const SizedBox(height: 10,),
                                companyContainer("Posto Machado98",
                                    "assets/images/stations/station_imagem.png"),
                              ],
                            ),
                          ),
                        // ),
                      ],
                    ),
                  )
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
              Navigator.of(context).pushNamed('/perfil_atleta');
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

  // Widget companyContainer(String companyName, String urlCompanyImage) {
  //   return Column(children: [
  //     SizedBox(
  //       width: 250,
  //       height: 250,
  //       child: ElevatedButton(
  //         onPressed: () => {
  //           Navigator.of(context).pushNamed('/home_atleta_empresa'),
  //         },
  //         style: ElevatedButton.styleFrom(
  //             backgroundColor: Colors.transparent,
  //             shadowColor: Colors.transparent,
  //             shape: const BeveledRectangleBorder()),
  //         child: Column(
  //           children: [
  //             SizedBox(
  //               width: 250,
  //               height: 200,
  //               child: Image.asset(urlCompanyImage),
  //             ),
  //             Align(
  //               alignment: Alignment.center,
  //               child: Text(
  //                 companyName,
  //                 textAlign: TextAlign.center,
  //                 style: const TextStyle(
  //                   color: Colors.white,
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 15,
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     )
  //   ]);
  // }

  Widget companyContainer(String companyName, String urlCompanyImage) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade900),
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: ElevatedButton(
        onPressed: () => {
          Navigator.of(context).pushNamed('/home_atleta_empresa'),
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: const BeveledRectangleBorder()),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(urlCompanyImage),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                companyName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ); 
  }
}
