import 'package:flutter/material.dart';

import '../utils/questions.dart';
import '../utils/quiz.dart';

// statefulWidgets are immutable they can change
class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

// this state is mutalbe and allows to rebuild our visuals right
class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          //this is our main page
          children: <Widget>[
            new Expanded( //true button
              child: new Material(
                color: Colors.greenAccent,
                child: new InkWell(
                  onTap: () => print('You answered True'),
                  child: new Center(
                    child: new Container(
                      child: new Text("True"),
                    ),
                  ),
                ),
              ),
            ),
            new Expanded( //flase button
              child: new Material(
                color: Colors.redAccent,
                child: new InkWell(
                  onTap: () => print('You answered True'),
                  child: new Center(
                    child: new Container(
                      child: new Text("False"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
