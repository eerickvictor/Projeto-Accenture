import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class athleteHomePage extends StatefulWidget {
  const athleteHomePage({super.key});

  @override
  State<athleteHomePage> createState() => _athleteHomePageState();
}

class _athleteHomePageState extends State<athleteHomePage> {

  void pressed()
  {
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
        )
      ),
      body: Container(
        width: 400,
        padding: EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 30,
            ),
            Align(
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
                children: [
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
        padding: EdgeInsets.only(),
        color: Colors.black,
        height: 60,
        child: Container(
          height: 20,
          width: 500,
          child: ElevatedButton(
            onPressed: pressed,
            child: Image.asset(
              'assets/images/icons/icon_perfil.png',
              scale: 5,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: const CircleBorder(),
              shadowColor: Colors.transparent,
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          height: 250,
          child: Column(
            children: [
              Container(
                width: 250,
                height: 200,
                child: Image.asset('assets/images/stations/station_imagem.png'),
              ),
              Align(
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
        )
      ],
    );
  }
}
