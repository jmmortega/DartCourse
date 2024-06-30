//Basic clases, custom constructors, final and not final, use required and optional parameters. Explain accesibility (static and instance)


import 'dart:io';

import '../02_methods/05_extensions_methods.dart';

void main() {
  print('Enter a Java year');

  String year = stdin.readLineSync()!;

  if(year.parseInt() > 2024) {

  }

  final javaLanguage = ComputerLanguage(name: 'Java', year: 1982, levelOfComplexity: 1);
  final dartLanguage = ComputerLanguage.onlyName(name: 'Dart');
  final emptyLanguage = ComputerLanguage.empty();

  if(javaLanguage.year >= dartLanguage.year) {

  }
}

/* Near to java flavour */

class ComputerLanguageLikeJavaClass {

  ComputerLanguageLikeJavaClass(
    String name,
    int year
) :
  _name = name,
  _year = year;

  String _name;
  int _year;

  String get name => _name.capitalizedName();
  void set name(String value) => _name = value;

  int get year => _year;
  void set year(int value) => _year = value;
}

class ComputerLanguage {
  ComputerLanguage({
    required this.name,
    required this.year,
    required this.levelOfComplexity
}) :
      assert(name.isNotEmpty, 'Name cant be empty'),
      assert(year > DateTime.now().year, 'Year should be after a actual year');

  ComputerLanguage.empty() :
      name = '',
      year = 0,
      levelOfComplexity = 0;

  ComputerLanguage.onlyName({
    required this.name
  }) :
      year = 0,
      levelOfComplexity = 0;

  final String name;
  final int year;
  final int levelOfComplexity;
}