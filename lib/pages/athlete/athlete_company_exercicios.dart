import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class AthleteCompanyExercicios extends StatefulWidget {
  const AthleteCompanyExercicios({super.key});

  @override
  State<AthleteCompanyExercicios> createState() => _AthleteCompanyExerciciosState();
}

class _AthleteCompanyExerciciosState extends State<AthleteCompanyExercicios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade900),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Image.asset(''),
                      ),
                      spacing(10, 0),
                      const Text(
                        'EmpresaX',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton.small(
                    heroTag: 'btnCompany1',
                    onPressed: () => {
                      Navigator.of(context).pushNamed('/atleta_exercicios'),
                    },
                    backgroundColor: Colors.purple,
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
             const SizedBox(
              height: 10,
            ),
             Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade900),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Image.asset(''),
                      ),
                      spacing(10, 0),
                      const Text(
                        'EmpresaX',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton.small(
                    heroTag: 'btnCompany2',
                    onPressed: () => {
                      Navigator.of(context).pushNamed('/atleta_exercicios'),
                    },
                    backgroundColor: Colors.purple,
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade900),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Image.asset(''),
                      ),
                      spacing(10, 0),
                      const Text(
                        'EmpresaX',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton.small(
                    heroTag: 'btnCompany3',
                    onPressed: () => {
                      Navigator.of(context).pushNamed('/atleta_exercicios'),
                    },
                    backgroundColor: Colors.purple,
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}