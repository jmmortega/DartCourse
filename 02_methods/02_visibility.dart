//Visibility private and public. Why don't protected.

import '01_basic_methods.dart';

//All is public at least you put a underscore when you declare the method, field or property.
//In Dart doesn't exist the protected visibilty by default. If you need protected visibility, you could use a annotation...
//https://github.com/dart-lang/language/issues/2571#issuecomment-1277908488

//We could remarks another visibility rules using export or partial files. You could see this rules in the architecture chapter.


void main() {
  _helloWorldPrivate();
}

void _helloWorldPrivate() {
  print('Hello world private');
}

void helloWorldPublic() {
  helloWorld();
}


