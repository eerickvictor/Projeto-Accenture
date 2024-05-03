
import 'package:enercicio/pages/athlete_company_page.dart';
import 'package:enercicio/pages/athlete_perfil_page.dart';
import 'package:flutter/material.dart';

class athleteHomePage extends StatefulWidget {
  const athleteHomePage({super.key});

  @override
  State<athleteHomePage> createState() => _athleteHomePageState();
}

class _athleteHomePageState extends State<athleteHomePage> {
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
          )),
      body: Container(
        width: 400,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Empresas:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              height: 20,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: const [
                  ContainerEmpresa(),
                  ContainerEmpresa(),
                  ContainerEmpresa(),
                ],
              ),
            ),
            // Container(
            //   width: 400,
            //   hei
            //   color: Colors.purple,
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.only(),
        color: Colors.black,
        height: 60,
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
