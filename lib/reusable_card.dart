import 'package:flutter/material.dart';

class ModifiedCard extends StatelessWidget {

  ModifiedCard(@required this.c, this.cardChild);
  final Color c;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15),
      child: cardChild,
    );
  }
}