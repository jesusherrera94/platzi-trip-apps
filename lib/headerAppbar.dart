import 'package:flutter/material.dart';
import 'gradientBack.dart';
import 'cardImageList.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[GradientBack("Home"), CardImageList()],
    );
  }
}
