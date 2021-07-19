fizzBuzz(int total) {
  for (var i = 1; i <= total; i++) {
    //check value %3 & %5
    if (i % 3 == 0 && i % 5 == 0) {
      print('Fizz Buzz');
    }
    //check value %5
    else if (i % 5 == 0) {
      print("Buzz");
    }
    //check value %3
    else if (i % 3 == 0) {
      print("fizz");
    } else {
      print(i);
    }
  }
}

void main() {
  fizzBuzz(100);
}
