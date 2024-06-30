//How use extensions methods

import 'dart:io';

import '../03_oop_types/05_typedefs.dart';

//Extensions methods allows you add new functionality for a existing type.
//When you usually create a sample like string_utils.dart but, is more elegant and is better integrated use an extensions that you see in string_extensions.dart

void main() {
  print('Enter a value');

  String name = stdin.readLineSync()!;

  //final nameCapitalized = capitalizedName(name);
  final nameCapitalized = name
      .capitalizedName();

  print('Hello ${nameCapitalized}');
}




/*-----string_utils.dart -----*/

String capitalizedName(String name) {
  final firstLetter = name[0].toUpperCase();
  return firstLetter + name.substring(1).toLowerCase();
}

/*-----string_utils.dart -----*/


/*-----string_extensions.dart -----*/

extension StringExtensions on String {

  String capitalizedName() {
    final firstLetter = this[0].toUpperCase();
    return firstLetter + this.substring(1).toLowerCase();
  }

  int parseInt() => int.parse(this);

}

/*-----string_extensions.dart -----*/


/*-----players_extensions.dart ----*/

extension PlayersExtensions on Player {

  RetiredPlayer retirePlayer()
    => RetiredPlayer(
        name: name,
        teamName: teamName,
        age: age);
}

extension CollectionUtils<T> on List<T> {
  void shuffleOfShuffle() {
    shuffle();
    shuffle();
  }
}
