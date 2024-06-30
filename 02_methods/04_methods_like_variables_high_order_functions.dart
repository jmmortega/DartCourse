//Use a function like parameter

import 'dart:io';

//A function is a type too, should you could pass like parameter or use like property. Like the next example.


void main() {
  final funcGreetings = _greetingsInternational(0);

  greetings(funcGreetings);
}


//greetings method receive a Function that receive a int parameter.
void greetings(Function(int) mood) {
  print('Enter the mood value: 0 formal, 1 friendly');

  String? valueRaw = stdin.readLineSync();
  int moodValue = int.parse(valueRaw!);

  //We execute this method when, use like this way and we need to the parameters.
  mood(0);
}

//You could create something like that. A method that returns another function. Also you can use a lambda ``` (value) => print('Your value is ${value}') ```

Function(int) _greetingsInternational(int language) {
  //languange == 0 Spanish
  if(language == 0) {
    return (moodValue) {
      moodValue == 0
          ? print('Hola señor')
          : print('Hola amigo');
    };
    //language != 0 English
  } else {
    return (moodValue) => moodValue == 0
        ? print('Hello sir')
        : print('Hello friend');
  }
}
