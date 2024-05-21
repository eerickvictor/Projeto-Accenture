
import 'package:enercicio/pages/athlete/athlete_company_page.dart';
import 'package:enercicio/pages/athlete/athlete_perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AthleteHomePage extends StatefulWidget {
  const AthleteHomePage({super.key});

  @override
  State<AthleteHomePage> createState() => _athleteHomePageState();
}

class _athleteHomePageState extends State<AthleteHomePage> {
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
                            'Empresas',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          width: 400,
                          decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade900),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0)
                            )
                          ),
                          child: Column(
                            children: [
                              ContainerEmpresa(),
                              ContainerEmpresa(),
                              ContainerEmpresa(),
                              ContainerEmpresa(),
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(top: BorderSide(color: Colors.grey.shade900, width: 1.0))
        ),
        child: SizedBox(
          height: 20,
          width: 500,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AthletePerfilPage()),
              );
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
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.purple,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.account_circle_rounded, color: Colors.white,
      //       ),
      //       label: 'Perfil',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.account_circle_rounded, color: Colors.white,
      //       ),
      //       label: 'Perfil',
      //     ),
      //   ],
      // ),
    );
  }
}

class ContainerEmpresa extends StatefulWidget {
  const ContainerEmpresa({super.key});

  @override
  State<ContainerEmpresa> createState() => _ContainerEmpresaState();
}

class _ContainerEmpresaState extends State<ContainerEmpresa> {
  void pressed() {
    print('pressionado');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 250,
        height: 250,
        child: ElevatedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AthleteCompanyPage()),
            ),
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: const BeveledRectangleBorder()),
          child: Column(
            children: [
              SizedBox(
                width: 250,
                height: 200,
                child: Image.asset('assets/images/stations/station_imagem.png'),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'EMPRESA X',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
