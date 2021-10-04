import 'dart:io';

class Calc {
  int add(int a, int b) => a + b;
  int sub(int a, int b) => a - b;
  int mult(int a, int b) => a * b;
  int div(int a, int b) => a ~/ b;
}

void main() {
  while (true) {
    bool errorFirstNum = false,
        errorSecondNum = false,
        operationFirstNum = false;
    Calc calc = Calc();
    int? firstNum, secNum;

    String operation;
    String firstMessage = "Please enter first number",
        secMessage = "Please enter Operation",
        thirdMessage = "Please enter second number";
    String firstError = "Please enter valid first number",
        secError = "Please enter valid second number",
        operationError = "Please enter valid operation";
    print(firstMessage);
    while (true) {
      try {
        firstNum = int.parse(stdin.readLineSync()!);
        break;
      } catch (e) {
        print(firstError);
      }
    }
    if (firstNum == 0) break;
    print(secMessage);
    while (true) {
      operation = stdin.readLineSync()!;
      print(operationError);
      if (operation == "/" ||
          operation == '+' ||
          operation == '-' ||
          operation == '*') break;
    }
    print(thirdMessage);
//read and check sec num
    while (true) {
      try {
        secNum = int.parse(stdin.readLineSync()!);
        break;
      } catch (e) {
        print(secError);
      }
    }

    print("The result =");
    //operation test
    bool exit = false;
    while (!exit) {
      switch (operation) {
        case "/":
          {
            print(calc.div(firstNum, secNum));
            // statements;
            exit = true;
          }
          break;
        case "+":
          {
            print(calc.add(firstNum, secNum));
            //statements;
            exit = true;
          }
          break;
        case "-":
          {
            print(calc.sub(firstNum, secNum));
            //statements;
            exit = true;
          }
          break;
        case "*":
          {
            print(calc.mult(firstNum, secNum));
            //statements;
            exit = true;
          }
          break;
        default:
          {
            //statements;
          }
          break;
      }
    }
  }
}
