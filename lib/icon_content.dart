import 'package:flutter/material.dart';
import 'constants.dart';
class cardContent extends StatelessWidget {

  cardContent(this.icon, this.text);
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [Icon(icon,
          color: Colors.white,
          size: 80.0),
        const SizedBox(height: 15,),
        Text( text, style: labelStyle ,),],
    );
  }
}