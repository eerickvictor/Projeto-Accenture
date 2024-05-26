import 'package:flutter/material.dart';

class EscolhaLogin extends StatefulWidget {
  const EscolhaLogin({super.key});

  @override
  State<EscolhaLogin> createState() => _EscolhaLoginState();
}

class _EscolhaLoginState extends State<EscolhaLogin> {
  int buttonD = 1;
  int buttonE = 1;

  void modfieLogin() {
    setState(() {
      if (buttonD == 1 && buttonE == 1) {
        // print("Mudou para -1");
        buttonD = -1;
        buttonE = -1;
      } else if (buttonD == -1 && buttonE == -1) {
        // print("Mudou para 1 ");
        buttonD = 1;
        buttonE = 1;
        print('Mudou para -1');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Escolha uma opção abaixo:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Container(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: buttonD == 1 && buttonE == 1
                          ? Colors.white
                          : Colors.grey),
                ),
                Container(
                  width: 20,
                ),
                Container(
                  width: 150,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: buttonD == -1 && buttonE == -1
                        ? Colors.white
                        : Colors.grey,
                  ),
                )
              ],
            ),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: modfieLogin,
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 250,
                  // color: Colors.white,
                  child: Image.asset(buttonD == 1 && buttonE == 1
                      ? 'assets/images/bike_imagem.png'
                      : 'assets/images/company_imagem.png'),
                  // child: ListView(
                  //   scrollDirection: Axis.horizontal,
                  //   children: [
                  //     Image.asset('assets/images/bike_imagem.png'),
                  //     Image.asset('assets/images/company_imagem.png'),
                  //   ],
                  // ),
                ),
                ElevatedButton(
                  onPressed: modfieLogin,
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
            ),
            Text(
              buttonD == 1 && buttonE == 1 ? 'ATLETA' : 'EMPRESA',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                buttonD == 1 && buttonE == 1
                    ? Navigator.of(context)
                        .pushNamed('/login_atleta')
                    : Navigator.of(context)
                        .pushNamed('/login_empresa');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple,
                // fixedSize: Size(400, 50)
              ),
              child: const Text(
                'ENTRAR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
