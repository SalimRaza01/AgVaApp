// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/BtnWidget.dart';
import '../widgets/MDWidget.dart';

class MonitorData extends StatefulWidget {
  const MonitorData({super.key});

  @override
  State<MonitorData> createState() => _MonitorDataState();
}

class _MonitorDataState extends State<MonitorData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: MDWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 800,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Color.fromARGB(255, 157, 0, 86),
                        ),
                        child: Row(
                          children: [
                            BtnWidget(),
                            BtnWidget(),
                            BtnWidget(),
                            BtnWidget(),
                          ],
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 800,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.white,
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
    );
  }
}