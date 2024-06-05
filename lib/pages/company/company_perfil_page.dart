import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class CompanyPerfilPage extends StatefulWidget {
  const CompanyPerfilPage({super.key});

  @override
  State<CompanyPerfilPage> createState() => _CompanyPerfilPageState();
}

class _CompanyPerfilPageState extends State<CompanyPerfilPage> {

  String? companyId;

  @override
  Widget build(BuildContext context) {

    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    if (arguments != null) {
      setState(() {
        companyId = arguments['companyId'];
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
                  Row(
                    children: [
                      const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      spacing(10, 0),
                      const Text(
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
                      Navigator.of(context).pushNamed('/editar_perfil_empresa', arguments: {'companyId': companyId}),
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
                      Navigator.of(context).pop(),
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
    );
  }
}
