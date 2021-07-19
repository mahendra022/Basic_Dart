import 'dart:io';

// input user
String text(String state) {
  print('Enter $state');
  var text = stdin.readLineSync();
  return text;
}

// input user
int answer() {
  print('Enter a Number :');
  var myNum = int.parse(stdin.readLineSync());
  return myNum;
}

void main() {
//take user input
  int num1 = answer();
  int num2 = answer();
  String quest = text("Operation ( + , - , / , * ) :");

//check condition quest
  if (quest == '+') {
    print(num1 + num2);
  } else if (quest == '-') {
    print(num1 - num2);
  } else if (quest == '/') {
    print(num1 / num2);
  } else if (quest == '*') {
    print(num1 * num2);
  }
}
