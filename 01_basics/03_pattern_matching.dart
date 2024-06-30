//How use conditionals in your favour, use pattern matching

import 'dart:io';

import '../03_oop_types/02_inheritance.dart';

void main() {
  //https://en.wikipedia.org/wiki/Pattern_matching

  //We returns a BaseComputerLanguage (the base class) as type, but we could use any of different types.
  final myFavouriteComputerLanguage = _retrieveComputerLanguage(1);


  //You can use pattern matching with switch
  switch(myFavouriteComputerLanguage) {
    case FunctionalComputerLanguage():
      _executeProcessForFunctionalComputerLanguage(myFavouriteComputerLanguage);
      break;
    case OOPComputerLanguage():
      _executeProcessForOOPComputerLanguage(myFavouriteComputerLanguage);
      break;
  }

  //Or with a if-else statement
  if(myFavouriteComputerLanguage is FunctionalComputerLanguage) {
    _executeProcessForFunctionalComputerLanguage(myFavouriteComputerLanguage);
  } else if(myFavouriteComputerLanguage is OOPComputerLanguage) {
    _executeProcessForOOPComputerLanguage(myFavouriteComputerLanguage);
  }

  //You can working with dynamic and another types.
  final myDefinedValue = _retrieveValue(1);

  switch(myDefinedValue) {
    case String:
    case FunctionalComputerLanguage:
    case int:
    case bool:
  }

  //Pattern matching will be really useful when start working with Flutter.
}

void _executeProcessForOOPComputerLanguage(OOPComputerLanguage myFavouriteComputerLanguage) {
  //Do something with OOPComputerLanguage
}

void _executeProcessForFunctionalComputerLanguage(FunctionalComputerLanguage myFavouriteComputerLanguage) {
  //Do something with FunctionalComputerLanguage
}

BaseComputerLanguage _retrieveComputerLanguage(int type) {
  if(type == 0) {
    return FunctionalComputerLanguage.empty();
  } else {
    return OOPComputerLanguage.empty();
  }
}

dynamic _retrieveValue(int type) {
  if(type == 0) {
    return 'Hello';
  } else if(type == 1) {
    return 1;
  } else if(type == 2) {
    return FunctionalComputerLanguage.empty();
  } else {
    return false;
  }
}
