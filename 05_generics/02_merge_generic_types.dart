import '../04_collections/03_operators.dart';

void main() {
  List<Player> clients = List<Player>.empty(growable: true);

  clients.add(PlayerWithSport<Football>.empty());
  clients.add(PlayerWithSport<Basket>.empty());
  clients.add(PlayerWithSport<String>.empty());
  clients.add(PlayerWithSport<bool>.empty());

}

abstract class Player {
  Player({
    required this.name,
    required this.teamName,
    required this.age})
      : yellowCards = 0,
        id = '';

  String id;
  final String? name;
  final String? teamName;
  final int age;
  int yellowCards;
  late String dorsalName;


  Player.empty() :
        id = '',
        age = 0,
        name = '',
        teamName = '',
        yellowCards = 0;


  void initDorsalName(String? localizedDorsalName) {
    dorsalName = localizedDorsalName!;
  }


}

class PlayerWithSport<TSport> extends Player {
  PlayerWithSport({required super.name, required super.teamName, required super.age});

  PlayerWithSport.empty() : super.empty();

  void playGame(TSport sport) {
    //Do anything...
  }
}

abstract class Sport {

}

class Football extends Sport {

}

class Basket extends Sport {

}

/*
class FootballPlayer extends Player {
  FootballPlayer({required super.name, required super.teamName, required super.age});
}

class BasketBallPlayer extends Player {
  BasketBallPlayer({required super.name, required super.teamName, required super.age});
}
 */