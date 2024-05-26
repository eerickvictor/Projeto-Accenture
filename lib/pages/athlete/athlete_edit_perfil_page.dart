import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class AthleteEditPerfilPage extends StatefulWidget {
  const AthleteEditPerfilPage({super.key});

  @override
  State<AthleteEditPerfilPage> createState() => _AthleteEditPerfilPageState();
}

class _AthleteEditPerfilPageState extends State<AthleteEditPerfilPage> {
  bool isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Editar Perfil',
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
            buildTextField(context, "Nome completo", "Robson Irineu da Silva", false),
            buildTextField(context, "Idade", "34", false),
            buildTextField(context, "Sexo", "Masculino", false),
            buildTextField(context, "Email", "robsonirineu@gmail.com", false),
            buildTextField(context, "Senha", "*****", true),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textButton(context, 160, 40, "Cancelar alterações", false, true,
                    false, false, ""),
                const SizedBox(
                  width: 20,
                ),
                textButton(context, 160, 40, "Salvar alterações", true, false,
                    false, false, ""),
              ],
            )
          ],
        ),
      ),
    );
  }
}
