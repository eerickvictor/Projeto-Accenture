import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AthleteCompanyPage extends StatefulWidget {
  const AthleteCompanyPage({super.key});

  @override
  State<AthleteCompanyPage> createState() => _AthleteCompanyPageState();
}

class _AthleteCompanyPageState extends State<AthleteCompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          child: Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/images/stations/station_imagem.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'COMPANY X',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        width: 400,
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sobre:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Row(
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.purple,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Parque Santana - Ariano Suassuna - R. Jorge Gomes de \nSá - Santana, Recife - PE, 52060-530',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: const Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.purple,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '+55 81 96575-4534',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: const Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.purple,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'https://www.google.com.br/?hl=pt-BR&safe=active&ssui=on',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
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
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Metas e Recompensas:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    child: Container(
                      width: 300,
                      height: 180,
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(221, 22, 22, 22),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Percorrer a distancia de 5KM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 300,
                            height: 1,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Objetivo:',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Percorrer uma distancia de 5KM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 5,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Recompensa:',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Desconto de 50% na mensalidade',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 5,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            height: 1,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(15)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('30%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('INICIAR EXERCICIO',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  backgroundColor: Colors.purple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
