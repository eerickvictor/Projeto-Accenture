import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Align(
          child: Container(
            height: 200,
            width: 200,
            // color: Colors.yellow,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo_enercicio.png'),
                fit: BoxFit.fill
              )
            ),
            // child: Image.asset('assets/images/logo_enercicio.png'),
          ),
        )
      )
    );
  }
}