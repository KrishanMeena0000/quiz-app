import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/questions.dart';
import 'package:flutter_application_1/resultScreen.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});
  var currentQuestionList = Random().nextInt(4);
  @override
  State<QuestionScreen> createState() => QuestionScreenState();
}

class QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
List<String> selectedAnswer =[];
  void answerQuestion(String selectedAnswer) {
    selecteAnswer(selectedAnswer);
    setState(() {
     if(currentQuestionIndex < questions[widget.currentQuestionList].length-1){
       currentQuestionIndex++;
     }
    });
    
  }
  void selecteAnswer(String answer){
selectedAnswer.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[widget.currentQuestionList][currentQuestionIndex];
     var size = MediaQuery.of(context).size;
    print(widget.currentQuestionList);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 228, 78, 255),
          const Color.fromARGB(255, 172, 32, 197)
        ])),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Text(currentQuestion.question,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 0.5),textAlign: TextAlign.center,),
          ),
          // Container(
          //   child:
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return Container(
              width: size.width * 0.8,
              // height: size.height*0.06,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.all(5),
              // decoration: BoxDecoration(color: Colors.yellow),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  
                    backgroundColor: Colors.purple[800],
                    foregroundColor: Color.fromARGB(255, 255, 255, 255)),
                    
                child: Padding(
                  padding:  EdgeInsets.only(top:8.0,bottom: 8.0),
                  child: Text(answer,textAlign: TextAlign.center,),
                ),
                onPressed: () {
                  answerQuestion(answer);
                  if(selectedAnswer.length == questions[widget.currentQuestionList].length){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(randomNumber: widget.currentQuestionList,answerList: selectedAnswer,)));
                  }
                  // selecteAnswer(answer);
                  // print(questions);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => QuestionScreen()));
                },
              ),
            );
          }),
          // ),
        ]),
      ),
    );
  }
}
