//Sample of singleton pattern

//Singleton pattern is a common design pattern that allow create a unique instance of a object. The singleton pattern is common use when work for example with
//implementation class platform code

void main() {

  print('Start');
  _setDebug();

}

void _setDebug() {
  MySettings.instance.debug = true;
}

class MySettings {
  static final MySettings instance = MySettings._internal();

  MySettings._internal();

  bool debug = false;
}