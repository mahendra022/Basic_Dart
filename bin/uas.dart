import 'dart:io';

int value(String value) {
  print(value);
  int t = int.parse(stdin.readLineSync());
  return t;
}

void main() {
  int state1 = value("Masukan bilangan :");

  if (state1 % 2 == 0) {
    print("Genap");
  } else {
    print("Ganjil");
  }
}
