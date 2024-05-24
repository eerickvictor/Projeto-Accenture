import 'package:flutter/material.dart';

bool isObscurePassword = true;

Widget buildTextField(BuildContext context, String labelText,
    String placeholder, bool isPasswordTextField) {
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
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

Widget textButton(
  BuildContext context,
  double width,
  double height,
  String text,
  bool gradientOn,
  bool borderOn,
  bool principalScrenn,
  bool secundaryScreen,
  String router,
) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      gradient: gradientOn
          ? const LinearGradient(colors: [
              Colors.pink,
              Color.fromRGBO(156, 39, 176, 1),
            ])
          : null,
      border: borderOn ? Border.all(color: Colors.purple) : null,
      borderRadius: BorderRadius.circular(5),
    ),
    child: TextButton(
      onPressed: () => {
        principalScrenn
            ? Navigator.of(context).pushReplacementNamed(router)
            : secundaryScreen
                ? Navigator.of(context).pushNamed(router)
                : Navigator.pop(context),
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}
