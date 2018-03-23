import './questions.dart';

class Quiz {
  List<Question> _questions;
  int _currentQuesInd = -1;
  int _score = 0;

  Quiz(this._questions) {
    _questions.shuffle();
  }
  List<Question> get questions => _questions;
  int get length => _questions  .length;
  int get score => _score;
  int get questionNum => _currentQuesInd+1;
  

  Question get nextQuestion {
    _currentQuesInd++;
    if(_currentQuesInd >= length)
    return null;
    return _questions[_currentQuesInd];
  }

  void answer(bool isCorrect){
    if(isCorrect) _score++;
  }
}
