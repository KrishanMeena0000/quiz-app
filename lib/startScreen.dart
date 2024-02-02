import 'package:flutter/material.dart';
import 'package:flutter_application_1/questionScreen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        // color: Gradient(colors: Colors.accents),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 228, 78, 255),
          const Color.fromARGB(255, 172, 32, 197)
        ])),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            // color: Colors.transparent,
            // alignment: Alignment.center,
            height: 220,
            // width: 120,
            child: Image.asset(
              'assets/images/quiz.png',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen()));
              }),
              child: Text(
                'Start Quiz ->',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ))
        ]),
      ),
    );
  }
}
