// import 'dart:html';
import 'dart:io';

void main() {
  List<int> lstInt = [];

// user input
  for (int i=0; i<5; i++) {
    print('Enter a value: ');
    int value = int.parse(stdin.readLineSync()!);
    lstInt.add(value);
  }

  // print value
  printArr(lstInt);
}

void printArr(List<int> arr) {
  print('-----------Array Values Are-------------');
  for (int i=0; i<5; i++) {
    print(arr[i]);
  }

  // ================OR===============

  for(int i in arr) {
    print(i);
  }
}

void countEvenNo(List<int> arr) {
  int count = 0;
  for (int i in arr) {
    if (i%2==0) {
      count++;
    }
  }

  print('No of even numbers are: $count');
}

