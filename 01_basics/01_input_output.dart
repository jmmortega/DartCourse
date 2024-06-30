import 'dart:io';

void main() {
  print('Enter a value');

  String? name = stdin.readLineSync();

  print('Hello ${name}');

}