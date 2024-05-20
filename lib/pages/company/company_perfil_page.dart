import 'package:enercicio/pages/escolha_login.dart';
import 'package:flutter/material.dart';

class CompanyPerfilPage extends StatefulWidget {
  const CompanyPerfilPage({super.key});

  @override
  State<CompanyPerfilPage> createState() => _CompanyPerfilPageState();
}

class _CompanyPerfilPageState extends State<CompanyPerfilPage> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10.0),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(top: BorderSide(color: Colors.grey.shade900, width: 1.0))
        ),
        child: SizedBox(
            height: 20,
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Editar perfil',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EscolhaLogin()),
                    );
                  },
                  icon: const Icon(
                    Icons.backspace,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Sair',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                ),
              ],
            )),
      ),
    );
  }
}