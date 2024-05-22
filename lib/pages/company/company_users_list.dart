import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompanyUsersList extends StatefulWidget {
  const CompanyUsersList({super.key});

  @override
  State<CompanyUsersList> createState() => _CompanyUsersListState();
}

class _CompanyUsersListState extends State<CompanyUsersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Lista de usuarios',
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
        // width: 400,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: 400,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade900),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0)
                      )
                    ),
                    child: Column(
                      children: [
                        userContainer("Robson Irineu", "5000"),
                        spacing(0, 10),
                        userContainer("Jubileu Azeitona", "7000"),
                        spacing(0, 10),
                        userContainer("Olha ele ae", "10000"),
                        spacing(0, 10),
                        userContainer("Ele Gosta Cavalo", "4000"),
                        spacing(0, 10),
                        userContainer("Shidori Rasengan", "6000"),
                        spacing(0, 10),
                        userContainer("Robson Irineu", "5000"),
                        spacing(0, 10),
                        userContainer("NaruSaske da Silva", "20000"),
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

  Widget userContainer(String userName, String qtdWatts)
  {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade900),
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0)
        )
      ),
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

  Widget spacing(int widget, int height)
  {
    return SizedBox(
      height: height.toDouble(),
      width: height.toDouble(),
    );
  }
}