//Collection operators inside of collections

import 'dart:io';
import 'dart:math';

import '../02_methods/05_extensions_methods.dart';
import '../03_oop_types/02_inheritance.dart';
import '../03_oop_types/05_typedefs.dart';
import '../03_oop_types/07_inmutability_best_practices.dart';

final List<Player> players = List<Player>.empty(growable: true)
  ..add(Player(name: 'Paco', teamName: '', age: 18))
  ..add(Player(name: 'Juanmi', teamName: '', age: 25))
  ..add(Player(name: 'Chema', teamName: '', age: 30));


void main() {
  _filtering();
}

void _filtering() {
  List<Player> playersGreater25 = List<Player>.empty(growable: true);

  for(final player in players) {
    if(player.age >= 25) {
      playersGreater25.add(player);
    }
  }

  final playersGreater25Lambda = players
      //.where((element) => element.age >= 25)
      .where((element) => _filterMoreAge(element))
      .toList();

  print('Hello world');

  players.add(Player(name: 'Chema', teamName: '', age: 30));

}

bool _filterMoreAge(Player player) {
  if(player.age >= 25) {
    return true;
  }
  return false;
}

void _filteringOne() {
  print('Write player identification');
  String? id = stdin.readLineSync();

  final playerFinded = players.firstWhere((element) => element.id == id!);
}

void _conversion() {
  List<RetiredPlayer> playersRetired = List<RetiredPlayer>.empty(growable: true);

  for(final player in players) {
    if(player.age >= 35) {
      playersRetired.add(player.retirePlayer());
    }
  }

  final retiredPlayers = players
      .where((element) => element.age >= 35)
      .map((e) => e.retirePlayer())
      .toList();
}

typedef TeamName = String;

void _plainCollection() {
  List<List<Player>> league = List<List<Player>>.empty(growable: true);

  List<Player> allLeaguePlayers = List<Player>.empty(growable: true);

  for(final team in league) {
    allLeaguePlayers.addAll(team);
  }

  for(final team in league) {
    for(final player in team) {
      allLeaguePlayers.add(player);
    }
  }

  List<Player> allLeagueNotPenalizedPlayers = List<Player>.empty(growable: true);

  for(final team in league) {
    allLeagueNotPenalizedPlayers.addAll(team.where((element) => element.yellowCards == 0));
  }

  final allLeaguePlayersLambda = league
      .expand((element) => element
      .map((e) => e))
      .toList();

  final allLeaguePlayerNotPenalized = league
      .expand((element) => element)
      .where((element) => element.yellowCards == 0)
      .toList();
}

void _plainCollectionMap() {
  Map<TeamName, List<Player>> leagueMap = Map<TeamName, List<Player>>();
  List<Player> allLeague = List<Player>.empty();

  for(final team in leagueMap.values) {
    allLeague.addAll(team);
  }

  leagueMap
      .entries
      .expand((kvp) => kvp.value
      .map((e) => e.copyWith(teamName: kvp.key)));
}

void _anyAndEvery() {
  List<Player> allLeague = List<Player>.empty();

  final greaterThan40 = allLeague
    .where((element) => element.age >= 40)
    .isNotEmpty;

  final greaterThan40Any = allLeague
    .any((element) => element.age >= 40);


  final allPlayersArePenalized = allLeague
    .every((element) => element.yellowCards > 0);

}

void _join() {
  String playerLists = '';

  for(int i = 0; i < players.length; i++) {
    final player = players[i];
    if(player.yellowCards < 2) {
      if(i == players.length -1) {
        playerLists = playerLists + player.name!;
      } else {
        playerLists = playerLists + player.name! + ', ';
      }
    }
  }

  print(playerLists);

  final playersListLambda = players
      .where((e) => e.name != null && e.name!.isNotEmpty && e.yellowCards < 2)
      .map((e) => e.name!)
      .join(', ');

  print(playersListLambda);


  for(final playerName in players
      .where((e) => e.name != null && e.name!.isNotEmpty && e.yellowCards < 2)
      .map((e) => e.name!)) {
    StringBuffer b = StringBuffer();

    b.write(playerName + ', ');
  }
}

void _sort() {
  final playersMoreYoungFirst = players
      .sort((previous, current) => previous.age.compareTo(current.age));
}

void _shuffle() {
  players.shuffle(Random(1455242343));
}

void _ofType() {
  final bunchOfThings = List<dynamic>.empty(growable: true)
      ..addAll(List<FunctionalComputerLanguage>.empty(growable: true))
      ..addAll(List<OOPComputerLanguage>.empty(growable: true))
      ..addAll(List<Player>.empty(growable: true))
      ..shuffle();

  List<FunctionalComputerLanguage> functionalLanguages = List<FunctionalComputerLanguage>.empty(growable: true);

  for(final thing in bunchOfThings) {
    if(thing is FunctionalComputerLanguage) {
      functionalLanguages.add(thing);
    }
  }

  final functionalLanguagesLambda = bunchOfThings
    .where((element) => element is FunctionalComputerLanguage)
    .cast<FunctionalComputerLanguage>();

  final functionalLanguagesLambdaWhereType = bunchOfThings
    .whereType<FunctionalComputerLanguage>();
}



