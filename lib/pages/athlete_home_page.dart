import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class athleteHomePage extends StatefulWidget {
  const athleteHomePage({super.key});

  @override
  State<athleteHomePage> createState() => _athleteHomePageState();
}

class _athleteHomePageState extends State<athleteHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset('assets/images/logo_enercicio_horizontal.png'),
      ),
      body: Container(
        width: 400,
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            ContainerEmpresa(),
            Container(
              height: 20,
            ),
            ContainerEmpresa(),
            Container(
              height: 20,
            ),
            ContainerEmpresa(),
          ],
        ),
      ),
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
                child: Image.asset(''),
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
