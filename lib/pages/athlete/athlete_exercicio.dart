import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class AthleteExercicio extends StatefulWidget {
  const AthleteExercicio({super.key});

  @override
  State<AthleteExercicio> createState() => _AthleteExercicioState();
}

class _AthleteExercicioState extends State<AthleteExercicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Exercicios',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
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
        // width: 400,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  userContainer("20/01/2024", "00:30:00", "1.5"),
                  spacing(0, 10),
                  userContainer("14/02/2024", "00:50:00", "3.5"),
                  spacing(0, 10),
                  userContainer("28/02/2024", "00:10:00", "0.4"),
                  spacing(0, 10),
                  userContainer("18/03/2024", "00:15:00", "1.0"),
                  spacing(0, 10),
                  userContainer("18/04/2024", "01:10:00", "10.0"),
                  spacing(0, 10),
                  userContainer("29/05/2024", "00:40:00", "2.0"),
                  spacing(0, 10),
                  userContainer("24/03/2024", "00:45:00", "2.0"),  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget userContainer(String data , String time, String kms) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade900),
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      child: Column(
        children: [
          const Text(
            '20/02/2024',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          spacing(0, 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade900),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                child: Column(
                  children: [
                    const Text(
                      'TEMPO',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    spacing(0, 1),
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 140,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade900),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                child: Column(
                  children: [
                    const Text(
                      'DISTANCIA',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    spacing(0, 1),
                    Text(
                      kms,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget spacing(int widget, int height) {
    return SizedBox(
      height: height.toDouble(),
      width: height.toDouble(),
    );
  }
  
}
