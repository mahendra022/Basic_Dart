import 'dart:io';

class ques {
  String quess;
  String answer;
  String wanswer;

  ques(String aQuess, String aAnswer, String wAnswer) {
    this.quess = aQuess;
    this.answer = aAnswer;
    this.wanswer = wAnswer;
  }
}

List<ques> quess = [
  ques("Who actor to be spaider man in the film spider man home coming?",
      "Tom Holland", "Tony Stark"),
  ques(
      "Who player football in juventus number 7?", "Cristiano Ronaldo", "Bape"),
];

String text1(String prompt) {
  print("$prompt");
}

String text2(String prompt1, String prompt2) {
  print("$prompt1 / $prompt2");
}

String text3() {
  var a = stdin.readLineSync();
  return a;
}

void main() {
  for (ques que in quess) {
    text1(que.quess);
    text2(que.answer, que.wanswer);
    String userAnswer = text3();
    if (userAnswer == que.answer) {
      print("Correct!!");
    } else {
      print("Your answer incorrect!!");
    }
  }
}
