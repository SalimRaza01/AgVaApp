// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required token}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text(
                              'Welcome,',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text(
                              'Username',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Drawer',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
                  title: Text(
                    'HOME',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.task, color: Colors.black),
                  title: Text(
                    'BOLUS WIZARD',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.trending_up, color: Colors.black),
                  title: Text(
                    'REPORT',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.black),
                  title: Text(
                    'SETTINGS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
