void main() async {
  final stream = _emitterMessages().asBroadcastStream();

  stream.where((counter) => counter > 25 && counter < 50)
    .listen((counter) => print(counter * 2));

  stream.listen((counter) => print(-counter));

  //Convert future to Stream
  //Stream.fromFuture(future);

}

Stream<int> _emitterMessages() async* {
  var counter = 0;
  var running = true;

  while(running) {
    await Future.delayed(Duration(milliseconds: 10));
    try {
      yield counter;
      counter++;
      if(counter == 125) {
        running = false;
      }
    } catch(error) {
      final a = error;
    } finally {

    }
  }
  yield 1000;
}