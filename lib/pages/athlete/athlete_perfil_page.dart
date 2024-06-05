import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AthletePerfilPage extends StatefulWidget {
  const AthletePerfilPage({super.key});

  @override
  State<AthletePerfilPage> createState() => _AthletePerfilPageState();
}

class _AthletePerfilPageState extends State<AthletePerfilPage> {

  String? athleteId;

  @override
  Widget build(BuildContext context) {

    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    if (arguments != null) {
      setState(() {
        athleteId = arguments['athleteId'];
        print(athleteId);
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Perfil',
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
                  const Row(
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Editar perfil',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton.small(
                    heroTag: 'btnEdit',
                    onPressed: () => {
                      Navigator.of(context).pushNamed('/editar_perfil_atleta', arguments: {"athleteId": athleteId}),
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
                  const Row(
                    children: [
                      Icon(
                        Icons.electric_bike,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Exercicios',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton.small(
                    heroTag: 'btnExercizes',
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
                  const Row(
                    children: [
                      Icon(
                        Icons.backspace,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sair da conta',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton.small(
                    heroTag: 'btnBack',
                    onPressed: () => {
                      Navigator.pop(context),
                      Navigator.of(context).pushReplacementNamed('/'),
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
      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.all(10.0),
      //   height: 60,
      //   decoration: BoxDecoration(
      //     color: Colors.transparent,
      //     border: Border(top: BorderSide(color: Colors.grey.shade900, width: 1.0))
      //   ),
      //   child: SizedBox(
      //       height: 20,
      //       width: 500,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           ElevatedButton.icon(
      //             onPressed: () {},
      //             icon: const Icon(
      //               Icons.edit,
      //               color: Colors.white,
      //             ),
      //             label: const Text(
      //               'Editar perfil',
      //               style: TextStyle(
      //                 color: Colors.white,
      //               ),
      //             ),
      //             style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.transparent,
      //                 shadowColor: Colors.transparent),
      //           ),
      //           ElevatedButton.icon(
      //             onPressed: () {
      //               Navigator.pushReplacement(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => const EscolhaLogin()),
      //               );
      //             },
      //             icon: const Icon(
      //               Icons.backspace,
      //               color: Colors.white,
      //             ),
      //             label: const Text(
      //               'Sair',
      //               style: TextStyle(
      //                 color: Colors.white,
      //               ),
      //             ),
      //             style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.transparent,
      //                 shadowColor: Colors.transparent),
      //           ),
      //         ],
      //       )),
      // ),
    );
  }
}
