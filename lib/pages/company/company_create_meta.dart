import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompanyCreateMeta extends StatefulWidget {
  const CompanyCreateMeta({super.key});

  @override
  State<CompanyCreateMeta> createState() => _CompanyCreateMetaState();
}

class _CompanyCreateMetaState extends State<CompanyCreateMeta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Criar meta',
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 400,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade900),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Column(
                      children: [
                        buildTextField(context, "Objetivo", "", false),
                        spacing(0, 20),
                        buildTextField(context, "Recompensa", "", false),
                        spacing(0, 20),
                        textButton(context, 150, 50, "Criar meta", true, false, false, false, ""),
                        spacing(0, 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
