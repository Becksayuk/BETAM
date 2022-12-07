import 'package:flutter/material.dart';
import 'answer.dart';
import './question.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int  questionIndex;
  final VoidCallback answerQuestion;
 Quize({
   required this.question,
   required this.answerQuestion,
  required this.questionIndex
  });
  @override
  Widget build(BuildContext context) {
    return Column (
            children: [
             Question(
               question
               [questionIndex]['questionText'] as String, 
               ),
         
           //mapping a list into a list of widgets
            ... (question[questionIndex]['answers'] as List<String>).map((answer) {
               return Answer(answerQuestion, answer);
             }).toList()

          ],
          );
  }
}