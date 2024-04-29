import 'package:enercicio/pages/PageCadastroAtleta.dart';
import 'package:flutter/material.dart';

class LoginAtleta extends StatelessWidget {
  const LoginAtleta({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.black, child: ListView(
       children: <Widget>[
         SizedBox(
           width: 128,
           height: 128,
           child: Image.asset("assets/images/bike_imagem.png"),
         ),
         SizedBox(height: 20,),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "E-mail",
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
         SizedBox(height: 20,),
         TextFormField(
           keyboardType: TextInputType.text,
           obscureText: true,
           decoration: InputDecoration(
             labelText: "Senha",
             labelStyle: TextStyle(
               color: Colors.white,
               fontWeight: FontWeight.w400,
               fontSize: 20,
             ),
           ),
           style: TextStyle(fontSize: 15, color: Colors.white),
         ),
         Container(
           height: 40,
           alignment: Alignment.bottomRight,
           child: ElevatedButton(
             child: Text(
               "Cadastrar-se",
               textAlign: TextAlign.right,
             ),

             onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => CadastroAtleta()),
                  );
             },
             style: ElevatedButton.styleFrom(
               foregroundColor: Colors.white,
               backgroundColor: Colors.purple[600],
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(
                   Radius.circular(5),
                 ),
               ),
             ),
           ),
         ),
         SizedBox(
           height: 40,
         ),
         Container(
           height: 60,
           alignment: Alignment.centerLeft,
           decoration: BoxDecoration(
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
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Text("Login",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                       ),
                     textAlign: TextAlign.left,
                   ),
                   Container(
                     child: SizedBox(
                        child: Image.asset("assets/images/logo_enercicio.png"),
                        height: 28,
                        width: 28,
                     ),
                   )
                 ],
               ),
               onPressed: (){
                 // Navigator.push(
                 //   context, MaterialPageRoute(
                 //     builder: (context) => PageHomeAtleta()),
                 // );
               },
               style: ElevatedButton.styleFrom(
                 foregroundColor: Colors.white,
                 backgroundColor: Colors.transparent,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(
                     Radius.circular(5),
                   ),
                 ),
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
