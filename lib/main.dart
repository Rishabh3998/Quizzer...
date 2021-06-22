import 'package:flutter/material.dart';
import 'package:quiz_app/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  final List<String> questions = [
    'What is your name ?',
    'What is your fathers name ?',
    'What id your favourite Sport ?',
    'What id your favourite Subject ?',
    'What id your favourite Actor ?',
  ];

  answerQuestion() {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex++;
      });
    }
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Quizzer...'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20.0),
                child: Questions(
                  questions[questionIndex],
                ),
              ),
              ElevatedButton(
                child: Text('Answer 1'),
                style: TextButton.styleFrom(
                  elevation: 5.0,
                  minimumSize: Size(
                    300.0,
                    50.0,
                  ),
                ),
                onPressed: answerQuestion,
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                child: Text('Answer 2'),
                style: TextButton.styleFrom(
                  elevation: 5.0,
                  minimumSize: Size(
                    300.0,
                    50.0,
                  ),
                ),
                onPressed: answerQuestion,
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                child: Text('Answer 3'),
                style: TextButton.styleFrom(
                  elevation: 5.0,
                  minimumSize: Size(
                    300.0,
                    50.0,
                  ),
                ),
                onPressed: answerQuestion,
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                child: Text('Answer 4'),
                style: TextButton.styleFrom(
                  elevation: 5.0,
                  minimumSize: Size(
                    300.0,
                    50.0,
                  ),
                ),
                onPressed: answerQuestion,
              )
            ],
          ),
        ),
      ),
    );
  }
}
