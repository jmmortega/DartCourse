//Basic of futures (Promises js, Task c#, Future java)
import '../05_generics/03_constraint_generic.dart';

void main() async {
  /*
  Future<String> stringPromise;
  Future<Player> playerPromise;
  Future<void> voidPromise;
   */

  _helloWorld1000();
  _helloWorld500();

  final a = await _callGreetings('aaa');

  print(a);

  print('End');
}

void _helloWorld500() {
  Future.delayed(Duration(milliseconds: 500))
      .whenComplete(() => print('500'));
}

void _helloWorld1000() {
  Future.delayed(Duration(milliseconds: 1000))
      .whenComplete(() => print('1000'));
}

Future<String> _callGreetings(String api) {
  //Do things...

  return _greetings();
}


Future<String> _greetings() {
  return Future.value('Maz');
}

