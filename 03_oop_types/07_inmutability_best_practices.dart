//How use inmutability and best practices with OOP (CopyWith)

import '05_typedefs.dart';


//In Dart is common to use the keyword **final** because we want work with the inmutability, manage inmutability is really practical, but have several trade offs that add
//complexity, when you have a inmutable model, that should be change eventually, a good util is create a copyWith method, that example below.

void main() {
  final player1 = Player(name: 'Maz', teamName: 'Croacia', age: 18);
 
  final playerChangedTeam = player1.copyWith(teamName: 'España');
}

extension PlayersX on Player {
  Player copyWith({
    String? teamName
  })
  => Player(
    name: name,
    age: 18,
    teamName: teamName ?? this.teamName,
  );
}





