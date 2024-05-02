import 'package:flutter/material.dart';

class AthletePerfilPage extends StatefulWidget {
  const AthletePerfilPage({super.key});

  @override
  State<AthletePerfilPage> createState() => _AthletePerfilPageState();
}

class _AthletePerfilPageState extends State<AthletePerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Perfil',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        width: 400,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nome:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 2,
                  ),
                  Text(
                    'Robson Azeitona Ludimar Rosa',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 8,
                  ),
                  Text(
                    'E-mail:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 2,
                  ),
                  Text(
                    'ralr@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 8,
                  ),
                  Text(
                    'Data de nascimento:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 2,
                  ),
                  Text(
                    '20/08/1990',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 8,
                  ),
                  Text(
                    'CPF:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 2,
                  ),
                  Text(
                    '650.534.234-80',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 8,
                  ),
                  Text(
                    'Contato:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 2,
                  ),
                  Text(
                    '+55 81 94355-4354',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.all(10.0),
        color: Colors.black,
        height: 60,
        child: Container(
          height: 20,
          width: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                label: Text(
                  'Editar perfil',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  
                },
                icon: Icon(
                  Icons.backspace,
                  color: Colors.white,
                ),
                label: Text(
                  'Sair',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}