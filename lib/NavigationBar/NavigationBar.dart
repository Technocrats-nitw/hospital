import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hospital_commercial/NavigationBar/CompanyName.dart';
import 'package:hospital_commercial/NavigationBar/NavBar.dart';
import 'package:hospital_commercial/NavigationBar/NavBarItem.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100.0,
        color: Color(0xff333951),
        child: Stack(
          children: [
            //CompanyName(),
            Align(
              alignment: Alignment.center,
              child: NavBar(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBarItem(
                icon: Feather.log_out,
                touched: () => {},
                active: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
