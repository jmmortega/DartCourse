import 'dart:io';

part 'main.console.dart';
part 'main.math_logic.dart';

void main() async {

  final age = int.parse(await _askUserAge());

  print('Your future age is: ${_calculateAge(age)}');

}