//Typedefs use

typedef Team = List<Player>;


//typedefs allow create alias types, to get more context of your code.
//In the sample the *playFootballMatch require two collections of players, that should be a team.


void main() {

  playFootballMatch(List<Player>.empty(), List<Player>.empty());
}

void playFootballMatch(Team visitorTeam, Team localTeam) {

}

void penalizedPlayers(List<Player> penalizedPlayers) {

}

class Player {
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

class RetiredPlayer extends Player {
  RetiredPlayer({required super.name, required super.teamName, required super.age});

}
