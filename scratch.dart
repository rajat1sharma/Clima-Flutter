import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String ans = await task2();
  task3(ans);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threesec = Duration(seconds: 3);
  //sleep(threesec);
  String result;
  await Future.delayed(threesec, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String hola) {
  String result = 'task 3 data';
  print('Task 3 complete with $hola');
}

//Task 1 complete
//Task 4 complete
//Task 3 complete
//Task 2 complete
//
//Process finished with exit code 0
