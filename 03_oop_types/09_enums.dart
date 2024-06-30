//Enum type, is a common type that use in other languages.

void main() {
  BoozeExtended.beer.name;

}

enum Booze {
  Beer,
  Wine,
  Rum,
  Whisky
}

enum BoozeExtended {
  beer(name: 'beer', graduation: 0.4),
  wine(name: 'wine', graduation: 0.3);

  const BoozeExtended({
    required this.name,
    required this.graduation
  });

  final String name;
  final double graduation;
}