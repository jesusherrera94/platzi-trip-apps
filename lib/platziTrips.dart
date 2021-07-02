import 'package:flutter/material.dart';
import 'homeTrips.dart';
import 'searchTrips.dart';
import 'profile.dart';
import 'platziTripsCupertino.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  final List<Widget> widgetChildren = [HomeTrips(), SearchTrips(), Profile()];
  int index = 0;

  void onTapped(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: widgetChildren[index], bottomNavigationBar: PlatziTripsCupertino()
        // bottomNavigationBar: Theme(
        //   data: Theme.of(context)
        //       .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        //   child: BottomNavigationBar(
        //       onTap: onTapped,
        //       currentIndex: index,
        //       showSelectedLabels: false,
        //       showUnselectedLabels: false,
        //       items: [
        //         BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        //         BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        //         BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
        //       ]),
        // )
        );
  }
}
