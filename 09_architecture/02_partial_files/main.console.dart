part of 'main.dart';

Future<String> _askUserAge() {
  print('What is your age?');
  return Future.value(stdin.readLineSync());
}