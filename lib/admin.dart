import 'package:flutter/material.dart';
import 'package:hospital_commercial/CalenderSpace/CalenderSpace.dart';
import 'package:hospital_commercial/Dashboard/Dashboard.dart';
import 'package:hospital_commercial/NavigationBar/NavigationBar.dart';

class admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Admin'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: DashBoard(),
        // Stack(
        //  children: [
        //NavigationBar(),
//DashBoard(),
        //CalendarSpace(),
        //   ],
        // ),
      ),
    );
  }
}
