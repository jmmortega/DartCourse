//List type custom constructors

import '../03_oop_types/05_typedefs.dart';

void main() {
  List<Player> players = List<Player>.empty(growable: true);
  players
      ..add(Player.empty())
      ..add(Player.empty())
      ..add(Player.empty())
      ..add(Player.empty())
      ..add(Player.empty());
}