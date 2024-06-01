import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class PageCadastroCompany extends StatefulWidget {
  const PageCadastroCompany({super.key});

  @override
  State<PageCadastroCompany> createState() => _PageCadastroCompanyState();
}

class _PageCadastroCompanyState extends State<PageCadastroCompany> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey.shade900,
            height: 1.0,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              alignment: const Alignment(0.0, 1.15),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo_enercicio.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            spacing(0, 30),
            TextFormField(
              decoration: getAuthenticationInputDecoration("Nome Fantasia", false),
            ),
            spacing(0, 20),
            TextFormField(
              decoration: getAuthenticationInputDecoration("Razão Social", false),
            ),
            spacing(0, 20),
            TextFormField(
              decoration: getAuthenticationInputDecoration("CNPJ", false),
            ),
            spacing(0, 20),
            TextFormField(
              decoration: getAuthenticationInputDecoration("E-mail", false),
            ),
            spacing(0, 20),
            TextFormField(
              decoration: getAuthenticationInputDecoration("Senha", true),
            ),
            spacing(0, 30),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFF800080),
                    Color(0xFF400040),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/login_empresa');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
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
