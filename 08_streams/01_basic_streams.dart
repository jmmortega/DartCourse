//Basic of streams
import 'dart:async';

void main() async {
  StreamController<String> _greetingsStream = new StreamController<String>();
  final stream = _greetingsStream.stream;
  _emitterMessages(_greetingsStream);
  stream.listen((calls) => print(calls));
}

Future<void> _emitterMessages(StreamController<String> greetingsStream) async {
  var counter = 0;
  var running = true;

  while(running) {
    await Future.delayed(Duration(milliseconds: 10));

    try {
      greetingsStream.add(counter.toString());
      counter++;
      if(counter == 125) {
        running = false;
      }
    } catch(error) {
      final a = error;
    } finally {
      greetingsStream.close();
    }
  }
}