import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/questions.dart';
import 'package:flutter_application_1/questionScreen.dart';

class ResultScreen extends StatefulWidget {
  

   ResultScreen({required this.randomNumber, required this.answerList,super.key});
  final List<String> answerList;
  var randomNumber;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  bool correct = true;
  List<bool> result = [];
  var correctAnswer = 0;
  var number = 1;
  var wrongAnswer = 0;
  void checkAnswer(){
    for(int i = 0; i< widget.answerList.length; i++){
      if(widget.answerList[i]== questions[widget.randomNumber][i].answers[0]){
        correct = true;
        result.add(correct);
        correctAnswer++;
      }else{
        correct = false;
        result.add(correct);
        wrongAnswer++;
      }
    }
  }
  QuestionScreen q = QuestionScreen();
  @override
  void initState(){
    super.initState();
    print(widget.randomNumber);
    checkAnswer();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 187, 64, 209),
          const Color.fromARGB(255, 172, 32, 197)
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text('${correctAnswer} answers are correct and ${wrongAnswer} answers are wrong',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            ),
            Container(
              height: size.height*0.5,
              alignment: Alignment.center,
              width: size.width*0.8,
              // color: Colors.green,
              child: ListView.builder(
                itemCount: questions[widget.randomNumber].length,
                itemBuilder: ((context, index) {
                return Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(5),
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: result[index] ? Color.fromARGB(255, 0, 255, 13) : const Color.fromARGB(255, 255, 17, 0),),
                      child: Text('${number++}',style: TextStyle(fontSize: 14),),),
                    // Container(
                    //   padding:  EdgeInsets.only(top:8.0,bottom: 8.0),
                      // child:
                       Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(questions[widget.randomNumber][index].question,style: TextStyle(fontSize: 16,color: result[index] ? Color.fromARGB(255, 0, 255, 13) : Color.fromARGB(255, 255, 0, 0)),textAlign: TextAlign.start,),
                        ),
                      ),
                    // ),
        
                  ],
                );
              }))
            ),
            Container(
              // color: Colors.red,
              // alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuestionScreen()));
                        }),
                        child: Text('Restart')),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                      width: 120,
                      child:
                          ElevatedButton(onPressed: () {}, child: Text('Quit'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
