import 'package:enercicio/pages/company/company_create_meta.dart';
import 'package:enercicio/pages/company/company_perfil_page.dart';
import 'package:enercicio/pages/company/company_update_meta.dart';
import 'package:enercicio/pages/company/company_users_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompanyHomePage extends StatefulWidget {
  const CompanyHomePage({super.key});

  @override
  State<CompanyHomePage> createState() => _CompanyHomePageState();
}

class _CompanyHomePageState extends State<CompanyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Container(
            alignment: Alignment.center,
            width: 400,
            height: 50,
            child: Image.asset('assets/images/logo_enercicio_horizontal.png'),
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
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Minha meta',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade900),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0)
                                )
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      Padding(padding: EdgeInsets.all(5.0)),
                                      Icon(
                                        Icons.bolt,
                                        color: Colors.purple,
                                        
                                      ),
                                      Text(
                                        '5KM',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 350,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade900,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      Padding(padding: EdgeInsets.all(10.0)),
                                      Icon(Icons.bolt, color: Colors.purple,),
                                      Text(
                                        'Recompensa: 5% de desconto na \nmensalidade',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 350,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade900,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 110,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Colors.pink,
                                              Colors.purple,
                                            ]
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: TextButton(
                                          onPressed: () => {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const CompanyCreateMeta()),
                                            ),
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                          ),
                                          child: const Text(
                                            "Criar meta",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 110,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          gradient: const LinearGradient(
                                            colors: [
                                              Colors.pink,
                                              Colors.purple,
                                            ]
                                          ),
                                        ),
                                        child: TextButton(
                                          onPressed: () => {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const CompanyUpadateMeta()),
                                            ),
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                          ),
                                          child: const Text(
                                            "Editar meta ",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 110,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          gradient: const LinearGradient(
                                            colors: [
                                              Colors.pink,
                                              Colors.purple,
                                            ]
                                          ),
                                        ),
                                        child: TextButton(
                                          onPressed: () => {},
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                          ),
                                          child: const Text(
                                            "Excluir meta ",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40,),
                      Container(
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Usuarios',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              width: 400,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade900),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0)
                                )
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade900),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)
                                      )
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Colors.purple,
                                          size: 50,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nome Usuario',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'QuiloWatts Gerados: 5000mil',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade900),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)
                                      )
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Colors.purple,
                                          size: 50,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nome Usuario',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'QuiloWatts Gerados: 5000mil',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade900),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)
                                      )
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Colors.purple,
                                          size: 50,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nome Usuario',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'QuiloWatts Gerados: 5000mil',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                      Container(
                                        width: 150,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Colors.pink,
                                              Colors.purple,
                                            ]
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: TextButton(
                                          onPressed: () => {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const CompanyUsersList()),
                                            ),
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                          ),
                                          child: const Text(
                                            "Ver todos usuarios",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      const SizedBox(height: 40,),
                      Container(
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'QuiloWatts gerados',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              width: 400,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade900),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0)
                                )
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    '5000',
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'QUILOWATTS',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
        padding: const EdgeInsets.only(),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(top: BorderSide(color: Colors.grey.shade900, width: 1.0))
        ),
        child: SizedBox(
          height: 20,
          width: 500,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CompanyPerfilPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: const CircleBorder(),
              shadowColor: Colors.transparent,
            ),
            child: Image.asset(
              'assets/images/icons/icon_perfil.png',
              scale: 5,
            ),
          ),
        ),
      ),
    );
  }
}