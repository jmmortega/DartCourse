//Future operators to combine future actions
import 'dart:async';

void main() async {

  final startTimeStandard = DateTime.now().millisecondsSinceEpoch;
  await _standardCall();
  final endTimeStandard = DateTime.now().millisecondsSinceEpoch;

  print(endTimeStandard - startTimeStandard);

  final startTimeWait = DateTime.now().millisecondsSinceEpoch;
  await _waitCall();
  final endTimeWait = DateTime.now().millisecondsSinceEpoch;

  print(endTimeWait - startTimeWait);

  //Fire and forget
  _waitCall();

  //Completer. Use to convert async that not follow Future async pattern.
  final task = _completerAction();

}


Future<void> _standardCall() async {
  final times = await _times();
  final greetings = await _greetings();

  for(int i = 0; i < times; i++) {
    print(greetings);
  }
}

Future<void> _waitCall() async {
  final collection = await Future.wait<dynamic>([_greetings(), _times()]);

  for(int i = 0; i < collection[1]; i ++) {
    print(collection[0]);
  }
}

Future<String> _completerAction() {
  Completer<String> completer = new Completer<String>();

  completer.complete("Do ok");

  return completer.future;
}



Future<String> _greetings() async {
  await Future.delayed(Duration(milliseconds: 1000));
  return 'Maz';
}

Future<int> _times() async {
  await Future.delayed(Duration(milliseconds: 1000));
  return 10;
}