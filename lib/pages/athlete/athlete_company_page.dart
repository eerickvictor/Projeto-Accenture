import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class AthleteCompanyPage extends StatefulWidget {
  const AthleteCompanyPage({super.key});

  @override
  State<AthleteCompanyPage> createState() => _AthleteCompanyPageState();
}

class _AthleteCompanyPageState extends State<AthleteCompanyPage> {

  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  final _isHours = true;

  double kms = 0;

  void pedalar()
  {   
    setState(() {
      kms = kms + 0.005;
    });
    print(kms.toStringAsFixed(2));
  }

  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose()
  {
    super.dispose();
    _stopWatchTimer.dispose();
  }

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
        // width: 400,
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
                    padding: const EdgeInsets.all(15),
                    // width: 400,
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
                          child: Row(
                            children: [
                              const Icon(
                                Icons.home,
                                color: Colors.purple,
                                size: 15,
                              ),
                              spacing(10, 0),
                              const Text(
                                'Parque Santana - Ariano Suassuna - R. \nJorge Gomes de Sá - Santana, Recife - PE,\n 52060-530',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        spacing(0, 10),
                        Container(
                          // width: 350,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.phone,
                                color: Colors.purple,
                                size: 15,
                              ),
                              spacing(10, 0),
                              const Text(
                                '+55 81 96575-4534',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        spacing(0, 10),
                        Container(
                          // width: 350,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                          ),
                        ),
                        spacing(0, 10),
                        Container(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                color: Colors.purple,
                                size: 15,
                              ),
                              spacing(10, 0),
                              const Text(
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
            spacing(0, 30),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Meta e recompensa',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    // width: 400,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade900),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0)
                      )
                    ),
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
                          // width: 350,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                          ),
                        ),
                        spacing(0, 5),
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
                        spacing(0, 10),
                        Container(
                          // width: 350,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                          ),
                        ),
                        spacing(0, 10),
                        Container(
                          width: 350,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: const Center(
                            child: Text(
                              'Concluido',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        spacing(0, 10)
                      ],
                    ),
                  ),
                ],
              ),
            ),
           spacing(0, 30),
            Container(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _stopWatchTimer.onStartTimer();
                  showModalBottomSheet(
                    context: context, 
                    builder: (context) 
                    {
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Container(
                          width: 400,
                          height: 400,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                            color: Color.fromARGB(255, 88, 0, 100)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '22/05/2024',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                ),
                              ),
                              spacing(0, 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 170,
                                    height: 170,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 65, 0, 71)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'TEMPO',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                          ),
                                        ),
                                        StreamBuilder<int>(
                                          stream: _stopWatchTimer.rawTime,
                                          builder: (context, snapshot) {
                                            final value = snapshot.data;
                                            final displayTime = StopWatchTimer.getDisplayTime(value!, hours:  _isHours);
                                            return Text(displayTime, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),);
                                          }
                                        ),
                                        const Text(
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
                                  spacing(0, 20),
                                  Container(
                                    width: 170,
                                    height: 170,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 65, 0, 71)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'DISTANCIA',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                          ),
                                        ),
                                        Text(
                                          kms.toStringAsFixed(2),
                                          style: const TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                          ),
                                        ),
                                        const Text(
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
                              spacing(0, 20),
                              Container(
                                width: 160,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  onPressed: () => {
                                    setState(() {
                                      pedalar();
                                    }),
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                  ),
                                  child: const Text(
                                    "Pedalar",
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 65, 0, 71),
                                      fontWeight: FontWeight.w800
                                    ),
                                  ),
                                ),
                              ),
                              spacing(0, 10),
                              Container(
                                width: 160,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.red.shade900,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  onPressed: () => {
                                    setState(() {
                                      kms = 0;  
                                    }),
                                    _stopWatchTimer.onStopTimer(),
                                    _stopWatchTimer.onResetTimer(),
                                    Navigator.pop(context),
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                  ),
                                  child: const Text(
                                    "Finalizar exercicio",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });  
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
                              fontWeight: FontWeight.w500)),
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
