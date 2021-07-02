import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'homeTrips.dart';
import 'searchTrips.dart';
import 'profile.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips());
              break;
            case 1:
              return CupertinoTabView(
                  builder: (BuildContext context) => SearchTrips());
              break;
            case 2:
              return CupertinoTabView(
                  builder: (BuildContext context) => Profile());
              break;
          }
          return HomeTrips();
        },
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.indigo), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo), label: "")
          ],
        ),
      ),
    );
  }
}
