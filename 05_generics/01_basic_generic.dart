//Basic generics in classes and methods.
void main() {
  final strInt = KeyValuePair<String,int>(key: 'Hola', value: 0);
  final doubleBool = KeyValuePair<double,bool>(key: 0.1, value: true);

  List<KeyValuePair<String,int>> keyCollections = List.empty(growable: true);

  /* No match types.
  keyCollections.add(doubleBool);
   */
}

String convertToString<TValue>(TValue value) {
  switch(TValue) {
    case int valueInt:
      return valueInt.toString();
    case double valueDouble:
      return valueDouble.toString().replaceFirst(',', '.');
    default:
      return '';
  }
}


class KeyValuePair<TKey, TValue> {
  KeyValuePair({
  required this.key,
  required this.value
});

  TKey key;
  TValue value;

  void useKey() {
    key.toString();
  }
}

