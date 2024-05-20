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
          'Editar meta',
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
              child: Expanded(
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
                          SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),    
          ],
        ),
      ),
    );  
  }
}