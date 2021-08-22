import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
// runApp(MohamedFirstApp());
// }

void main() => runApp(MohamedFirstApp());

class MohamedFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MohamedFirstAppState();
  }
}

class _MohamedFirstAppState extends State<MohamedFirstApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        'Black',
        'Red',
        'Green',
        'White',
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        'Rabbit',
        'Snake',
        'Elephant',
        'Lion',
      ],
    },
    {
      'questionText': 'Who\'s your favourite basketball player?',
      'answers': [
        'Mohamed',
        'Lebron',
        'Curry',
        'Jordan',
      ],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;

    setState(() {
      _questionIndex = _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('No more questions !');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const['Hello'];
    // dummy.add('Mohamed');
    // print(dummy);
    // dummy = [];
    //questions =[]; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) //Quiz
            : Result(),
      ),
    );
  }
}
