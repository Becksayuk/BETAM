import 'package:flutter/material.dart';
import 'package:my_first_app/result.dart';
import './quize.dart';
import './result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  return MyAppState();
  }
}
class MyAppState extends State<MyApp>{

   final question = const[
    {'questionText':' What is your favorite color?', 'answers': [{'text':'Blue', 'score':10}, {'text':'purple', 'score':10}, {'text':'black' , 'score':10}, {'text':'yellow' , 'score':10}], }, 
    {'questionText':' What is your favorite Pet?', 'answers': [ {'text':'dog' , 'score':10}, {'text':'cat' , 'score':10}, {'text':'horse' ,'score':10}, {'text': 'bird' , 'score':10}],}, 
    {'questionText':' What is your favorite Instructor?', 'answers': [ {'text':'Becks', 'score':10}, {'text':'Larissa' , 'score':10}, {'text':'valdo' , 'score':10}, {'text':'Elsie' , 'score':10}],}, 
    ]; 
 
 var  questionIndex= 0;
  void answerQuestion(){
     if( questionIndex < question.length){
          print('we have more questions');
     }
    //setState is a method provided by the State Class andits a function that takes a function as an argument
    setState(() {
      questionIndex = questionIndex +1;
    });
  
  print(questionIndex);

  }
  @override
  Widget build(BuildContext context) {
//map the answers to the question
   
     return MaterialApp(
       home: Scaffold(
          appBar: AppBar(title: Text('AllBet'),
          ),
          body: questionIndex < question.length ? 
         Quize( answerQuestion: answerQuestion, questionIndex: questionIndex, question: question,)
     : Result(),
     ),
     );
  }
}