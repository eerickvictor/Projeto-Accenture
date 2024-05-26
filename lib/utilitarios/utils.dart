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
          fontSize: 20,
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

Widget userContainer(String userName, String qtdWatts) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade900),
        borderRadius: const BorderRadius.all(Radius.circular(5.0))),
    child: Row(
      children: [
        const Icon(
          Icons.person,
          color: Colors.purple,
          size: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              'QuiloWatts Gerados: $qtdWatts',
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget spacing(double width, double height) {
  return SizedBox(
    width: width,
    height: height,
  );
}

// Widget perfilContainer(BuildContext context, String iconString,String title, String tagButton, String router)
// {
  
//   final IconData iconData = IconData(int.parse(iconString));

//   return Container(
//               padding: const EdgeInsets.all(10.0),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey.shade900),
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(5.0),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       const Icon(
//                         Icons.edit,
//                         color: Colors.white,
//                       ),
//                       spacing(10, 0),
//                       const Text(
//                         'Editar perfil',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                   FloatingActionButton.small(
//                     heroTag: 'btnEdit',
//                     onPressed: () => {
//                       Navigator.of(context).pushNamed('/editar_perfil_empresa'),
//                     },
//                     backgroundColor: Colors.purple,
//                     shape: const CircleBorder(),
//                     child: const Icon(
//                       Icons.arrow_forward_outlined,
//                       color: Colors.white,
//                     ),
//                   )
//                 ],
//               ),
//             );
// }

