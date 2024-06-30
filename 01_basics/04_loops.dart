//While, for each and for
void main() {
  //Loops is pretty similar to another languages that you can see.


  int i = 0;
  while(i < 5) {
    print('Value $i');
    i++;
  }

  for(int z = 0; z < 10; z++) {
    print('Value $z');
  }

  final coll = [1,2,3,4,5];

  for(final element in coll) {
    print('Value $element');
  }
}