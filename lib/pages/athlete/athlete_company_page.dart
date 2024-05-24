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
        iconTheme: const IconThemeData(color: Colors.white),
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
        width: 400,
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sobre:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade900),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0)
                      )
                    ),
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
                                'Parque Santana - Ariano Suassuna - R. \nJorge Gomes de Sá - Santana, Recife - PE,\n 52060-530',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 350,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
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
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 350,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
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
                                'https://www.google.com.br/?hl=pt-BR&sa\nfe=active&ssui=on',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
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
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Meta e recompensa',
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
                        Radius.circular(10.0)
                      )
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
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
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 350,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          children: [
                            Padding(padding: EdgeInsets.all(10.0)),
                            Icon(Icons.bolt, color: Colors.purple,),
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 350,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 350,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(
                            child: Text(
                              '80%',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context, 
                    builder: (BuildContext context) 
                    {
                      return Container(
                        width: 400,
                        height: 330,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                          color: Color.fromARGB(255, 88, 0, 100)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '22/05/2024',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 170,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromARGB(255, 65, 0, 71)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'TEMPO',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                        ),
                                      ),
                                      Text(
                                        '30:45',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                        ),
                                      ),
                                      Text(
                                        'MIN:S',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Container(
                                  width: 170,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromARGB(255, 65, 0, 71)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'DISTANCIA',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                        ),
                                      ),
                                      Text(
                                        '2,5',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                        ),
                                      ),
                                      Text(
                                        'KM',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: 160,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.red.shade900,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextButton(
                                onPressed: () => {
                                  Navigator.pop(context),
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "Finalizar exercicio",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      );
                    }
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  backgroundColor: Colors.purple,
                ),
                child: Container(
                  child: const Row(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
