import 'package:enercicio/pages/escolha_login.dart';
// import 'package:enercicio/pages/pageLoginAtleta.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Enercicio',
      theme: ThemeData(),
      home: const EscolhaLogin(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => escolha_login(),
      // },
    );
  }
}
