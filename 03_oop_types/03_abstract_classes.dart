//Abstract classes how use.


//Abstract classes could inherit from everywhere. The common use for an abstract class is like a interface in other languages (Java, C#...)
abstract class Computer {
  Computer()
    : temperature = 0;

  void turnOn() {
  }

  void turnOff();

  int temperature;
}

class MacComputer extends Computer {
  @override
  void turnOff() {
    // TODO: implement turnOff
  }
}

