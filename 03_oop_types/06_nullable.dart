//Nullable types and nullchecking

import '../02_methods/05_extensions_methods.dart';
import '05_typedefs.dart';

//When you have a type, in fact, you have two types, the original one and the nullable one.
//That means, if you use the **?** operator before a type, this converts in a nullable type, that allows "store" a null value.

//A type without **?** operator can't allow you check if nullable.
//In a nullable type you could use the **!** and **?** operator.
//**!** operator says to compiler that the field have a mandatory value, if for any reason a field that use a **!** doesn't content any value (i.e) is null. Throw an exception

//**?** operator allows use a nullable type securely, so in this case use a **maybe** operation, in this case, if the field should be a null, convert all the content in a null value
//In the example, when you use player?.name? if player would be null, the property name should be null too.

void main() {
  final Player? player = Player(name: 'juanmi', teamName: '', age: 18);

  if(player != null) {
    print(player.name);
  }

  player?.initDorsalName('maz');

  player != null
    ? writePlayerName(player.dorsalName ?? player.name ?? 'No player name')
    : '';

  print(player?.name?.capitalizedName());
  //print(player!.name);

}

void writePlayerName(String name) {
  print(name);
}

