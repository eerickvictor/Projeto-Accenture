import 'package:enercicio/utilitarios/utils.dart';
import 'package:flutter/material.dart';

class CompanyEditPerfilPage extends StatefulWidget {
  const CompanyEditPerfilPage({super.key});

  @override
  State<CompanyEditPerfilPage> createState() => _CompanyEditPerfilPageState();
}

class _CompanyEditPerfilPageState extends State<CompanyEditPerfilPage> {
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
            buildTextField("Nome completo", "Compahia X", false),
            buildTextField("Email", "companhiaX@gmail.com", false),
            buildTextField("Senha", "*******", true),
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

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ))
                : null,
            contentPadding: const EdgeInsets.only(bottom: 5),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
      ),
    );
  }
}
