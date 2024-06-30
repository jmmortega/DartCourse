//Use conditionals if, switch
import 'dart:io';

void main() {
  print('Enter a value');

  String? value = stdin.readLineSync();
  int numberValue = int.parse(value!);

  if(numberValue > 5) {
    print('Greater than 5');
  }

  switch(numberValue) {
    case 0:
      print('Is 0');
    case 1:
      print('Is 2');
    default:
      print('Not recognized value: ${numberValue}');
  }


}