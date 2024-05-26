import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class CadastroAtleta extends StatelessWidget {
  const CadastroAtleta({super.key});

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
              width: 200,
              height: 200,
              alignment: const Alignment(0.0, 1.15),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo_enercicio.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            spacing(0, 20),
            buildTextField(context, "Nome completo", "", false),
            // TextFormField(
            //   keyboardType: TextInputType.name,
            //   decoration: const InputDecoration(
            //       labelText: "Nome Completo",
            //       labelStyle: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.w400,
            //         fontSize: 18,
            //       )),
            //   style: const TextStyle(fontSize: 18, color: Colors.white),
            // ),
            buildTextField(context, "CPF", "", false),
            // TextFormField(
            //   keyboardType: TextInputType.number,
            //   decoration: const InputDecoration(
            //     labelText: "CPF",
            //     labelStyle: TextStyle(
            //       color: Colors.white,
            //       fontWeight: FontWeight.w400,
            //       fontSize: 18,
            //     ),
            //   ),
            //   style: const TextStyle(fontSize: 18, color: Colors.white),
            // ),
            buildTextField(context, "E-mail", "", false),
            // TextFormField(
            //   keyboardType: TextInputType.emailAddress,
            //   decoration: const InputDecoration(
            //     labelText: "E-mail",
            //     labelStyle: TextStyle(
            //       color: Colors.white,
            //       fontWeight: FontWeight.w400,
            //       fontSize: 20,
            //     ),
            //   ),
            //   style: const TextStyle(fontSize: 18, color: Colors.white),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            buildTextField(context, "Senha", "", false),
            // TextFormField(
            //   keyboardType: TextInputType.text,
            //   obscureText: true,
            //   decoration: const InputDecoration(
            //     labelText: "Senha",
            //     labelStyle: TextStyle(
            //       color: Colors.white,
            //       fontWeight: FontWeight.w400,
            //       fontSize: 18,
            //     ),
            //   ),
            //   style: const TextStyle(fontSize: 18, color: Colors.white),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
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
                    Navigator.of(context).pushReplacementNamed('/login_atleta');
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
