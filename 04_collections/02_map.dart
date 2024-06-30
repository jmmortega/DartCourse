//Map use

void main() {
  MapEntry<String, dynamic> oneKeyValue;

  Map<String,dynamic> manyKeyValue =
    { "key" : 1,
      "key2" : 2
    };


  //Not iterable
  /*
  for(final keyValue in manyKeyValue) {

  }
   */

  //Iterable
  for(final keyValue in manyKeyValue.entries) {

  }


  manyKeyValue.containsKey("key");

  manyKeyValue["key"] = 1;


  manyKeyValue.remove("key");



}