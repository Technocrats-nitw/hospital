import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hospital_commercial/tabscreen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hackon With Amazon',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: Pages(),
      /*routes: {
        '/DocInfo': (context) => DocInfoPage(),
      },*/
    );
  }
}

class Pages extends StatefulWidget {
  //const Pages({Key key}) : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device

    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          TabScreen1(),
          TabScreen1(),
        ],
        onPageChanged: (int index) {
          setState(() {
            _pageController.jumpToPage(index);
          });
        },
      ),
      // covid , doctor,hospital, self_history
      bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(Icons.medical_services_outlined,
                size: 20, color: Colors.black),
            Icon(Icons.maps_home_work_outlined, size: 20, color: Colors.black),
            /*
            Icon(Icons.medical_services_outlined,
                size: 20, color: Colors.black),
            Icon(Icons.account_circle_outlined, size: 20, color: Colors.black),
            */
          ],
          animationDuration: Duration(milliseconds: 400),
          backgroundColor: Color.fromRGBO(245, 235, 201, 255),
          buttonBackgroundColor: Color.fromRGBO(245, 235, 201, 255),
          index: 0,
          onTap: (index) {
            setState(() {
              _pageController.jumpToPage(index);
            });
          }),
    );
  }
}
