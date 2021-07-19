import 'dart:io';

String text(String promt) {
  print('$promt');
  var answer = stdin.readLineSync();
  return answer;
}

int number1() {
  print('Enter score UTS');
  int myNum = int.parse(stdin.readLineSync());
  return myNum;
}

int number2() {
  print('Enter score UTS');
  int myNum = int.parse(stdin.readLineSync());
  return myNum;
}

int number3() {
  print('Enter score Kehadiran');
  int myNum = int.parse(stdin.readLineSync());
  return myNum;
}

String name(String promt1) {
  print('$promt1');
  stdout.writeln();
}

void main() {
  //excution math
  var name = text('Enter your name :');
  int uts = number1();
  int uas = number2();
  int kh = number3();
  var b = uts * 0.3 + uas * 0.3 + kh * 0.4;
  String ket;
  if (b >= 80) {
    ket = "Congratulation your get score A";
  } else if (b >= 60) {
    ket = "Congratulation your get score B";
  } else if (b >= 40) {
    ket = "Congratulation your get score C";
  } else if (b >= 20) {
    ket = "Congratulation your get score D";
  } else {
    ket = "Sorry your most be repeat";
  }

  print("your name is $name");
  print("your score $b");
  print("| UTS | UAS | Kehadiran |");
  print("| $uts | $uas | $kh |");
  print("Your get score $ket");
}
