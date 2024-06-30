//Basic inheritance, sealed explanation



void main() {
  //final baseComputerLanguage = ComputerLanguage.empty();



}


//Sealed class is a class that work like a abstract class. But, have the limitation that cant inherit outside of the file.
sealed class BaseComputerLanguage {
  BaseComputerLanguage({
    required this.name,
    required this.year,
    required this.levelOfComplexity
  }) :
        assert(name.isNotEmpty, 'Name cant be empty'),
        assert(year > DateTime.now().year, 'Year should be after a actual year');

  BaseComputerLanguage.empty() :
        name = '',
        year = 0,
        levelOfComplexity = 0;

  BaseComputerLanguage.onlyName({
    required this.name
  }) :
        year = 0,
        levelOfComplexity = 0;

  final String name;
  final int year;
  final int levelOfComplexity;
}

class FunctionalComputerLanguage extends BaseComputerLanguage {
  FunctionalComputerLanguage({
    required super.name,
    required super.year,
    required super.levelOfComplexity});

  FunctionalComputerLanguage.empty() : super.empty();
}

class OOPComputerLanguage extends BaseComputerLanguage {
  OOPComputerLanguage({
    required super.name,
    required super.year,
    required super.levelOfComplexity});

  OOPComputerLanguage.empty() : super.empty();
}

