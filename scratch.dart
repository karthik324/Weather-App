// import 'dart:io';

void main() {
  performTasks();
}

void performTasks() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task1 data';
  print('task 1 completed');
}

void task2() {
  String result = 'Task 2 data';
  Duration threeSeconds = Duration(seconds: 3);
  Future.delayed(threeSeconds, () {
    print('task 2 completed');
  });
}

void task3() {
  String result = 'task 3 data';
  print('task 3 completed');
}
