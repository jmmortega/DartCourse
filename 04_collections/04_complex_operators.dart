//Collection operators inside of Collection package

import '../03_oop_types/05_typedefs.dart';

void main() {

}

final List<Player> players = List<Player>.empty(growable: true)
  ..add(Player(name: 'Paco', teamName: '', age: 18))
  ..add(Player(name: 'Juanmi', teamName: '', age: 25))
  ..add(Player(name: 'Chema', teamName: '', age: 30));