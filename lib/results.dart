import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';
import 'reusable_card.dart';



class ResultPage extends StatelessWidget {

  ResultPage(this.BMI, this.Answer, this.TheOtherAnswer);

  final String BMI;
  final String Answer;
  final String TheOtherAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C173E),
        title: const Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFF1C003D),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Center(
                    child: Text(
                  'Results are here...',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ))),
            Expanded(
              flex: 6,
              child: ModifiedCard(
                inactiveCardColor,
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        Answer,
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        BMI,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                            child: Text(
                          TheOtherAnswer.toString(), textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        )),
                      ),
                    ]),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0xFFEB1555),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Go Back',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ))
          ]),
    );
  }
}
