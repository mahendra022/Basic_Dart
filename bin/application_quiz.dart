import 'dart:io';

// Standar Input
String prompt(String promtText) {
  print('$promtText');
  var answer = stdin.readLineSync();
  return answer;
}

double promptDouble(String promtText) {
  print('$promtText');
  double myNum = double.parse(stdin.readLineSync());
  return myNum;
}

// keep value
class MathQuestion {
  String question;
  double answer;

  MathQuestion(String aQuestion, double aAnswer) {
    this.question = aQuestion;
    this.answer = aAnswer;
  }
}

void main() {
  List<MathQuestion> questions = [
    MathQuestion("3 + 5", 8.0), //index 0
    MathQuestion("10 - 7", 3.0), // index 1
    MathQuestion("100 * 9", 900.0) // index 2
  ];

//loop question & check answer
  int score = 0;
  for (MathQuestion mathQuestion in questions) {
    double userAnswer = promptDouble(mathQuestion.question);
    if (userAnswer == mathQuestion.answer) {
      score++;
    }
  }

  print("You got ${score / questions.length * 100}");
}
