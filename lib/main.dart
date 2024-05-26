import 'package:enercicio/pages/athlete/PageCadastroAtleta.dart';
import 'package:enercicio/pages/athlete/athlete_company_page.dart';
import 'package:enercicio/pages/athlete/athlete_edit_perfil_page.dart';
import 'package:enercicio/pages/athlete/athlete_home_page.dart';
import 'package:enercicio/pages/athlete/athlete_perfil_page.dart';
import 'package:enercicio/pages/athlete/pageLoginAtleta.dart';
import 'package:enercicio/pages/company/CompanyRegisterUser.dart';
import 'package:enercicio/pages/company/PageCadastroCompany.dart';
import 'package:enercicio/pages/company/company_create_meta.dart';
import 'package:enercicio/pages/company/company_edit_perfil_page.dart';
import 'package:enercicio/pages/company/company_home_page.dart';
import 'package:enercicio/pages/company/company_perfil_page.dart';
import 'package:enercicio/pages/company/company_update_meta.dart';
import 'package:enercicio/pages/company/company_users_list.dart';
import 'package:enercicio/pages/company/pageLoginCompany.dart';
import 'package:enercicio/pages/escolha_login.dart';
// import 'package:enercicio/pages/pageLoginAtleta.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Enercicio',
      theme: ThemeData(),
      //home: const EscolhaLogin(),
      initialRoute: '/',
      routes: {
        '/': (context) => const EscolhaLogin(),
        '/login_atleta': (context) => const LoginAtleta(),
        '/cadastro_atleta': (context) => const CadastroAtleta(),
        '/home_atleta': (context) => const AthleteHomePage(),
        '/home_atleta_empresa': (context) => const AthleteCompanyPage(),
        '/perfil_atleta': (context) => const AthletePerfilPage(),
        '/editar_perfil_atleta': (context) => const AthleteEditPerfilPage(),
        '/login_empresa': (context) => const PageLoginCompany(),
        '/cadastro_empresa': (context) => const PageCadastroCompany(),
        '/home_empresa': (context) => const CompanyHomePage(),
        '/criar_meta_empresa': (context) => const CompanyCreateMeta(),
        '/cadastrar_usuario_meta': (context) => const CompanyRegisterUser(),
        '/editar_meta_empresa': (context) => const CompanyUpadateMeta(),
        '/lista_usuarios_empresa': (context) => const CompanyUsersList(),
        '/perfil_empresa': (context) => const CompanyPerfilPage(),
        '/editar_perfil_empresa': (context) => const CompanyEditPerfilPage(),
      },
    );
  }
}
