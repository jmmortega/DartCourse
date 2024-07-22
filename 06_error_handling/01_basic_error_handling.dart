//Basic error handling try catch

class Weapon {

}

class Murderer {
  Murderer.empty() :
      weapon = null;


  final Weapon? weapon;
}


void main() {
  final murderer = Murderer.empty();

  print('Start app');
try {
  _processMurder(murderer);
  _scapeFromLocation(murderer);
} catch(ex, stackTrace) {
  logError(ex, stackTrace);
} finally {
  
}
  print('End app');
}

void _scapeFromLocation(Murderer murderer) {
}

void logError(Object ex, StackTrace stackTrace) {
  print(ex.toString() + stackTrace.toString());
}

void _processMurder(Murderer murderer) {
  //Do things...

  _locateMurder(murderer, 36.2, 42.2);
}

void _locateMurder(Murderer murderer, double lat, double long) {

  //Do things...

  if(lat > 20) {
    _commitNorthMurder(murderer);
  } else {
    _commitMurder(murderer);
  }


}

void _commitNorthMurder(Murderer murderer) {
  //Do things...
try {
  _useWeapon(murderer.weapon!);
} catch(e) {
  rethrow;
}

}

void _commitMurder(Murderer murderer) {
  //Do things...
try {
  _useWeapon(murderer.weapon!);
} catch (e) {
  print(e);
}
  
}

void _useWeapon(Weapon weapon) {

}