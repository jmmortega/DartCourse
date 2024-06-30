//Basic methods

void main() {
  /*
  helloWorld();
  int sumResult = sum(2, 2);
  print(sumMoreSimple(2, 2));

  print('El resultado es ${sumMoreSimple(2, 3)}');
   */

  print(startMultiplyRecursive(10, 2));
}

//The method declaration in Dart is pretty similar to another languages.

void helloWorld() {
  print('Hello world');
}


int sum(int a, int b) {
  return a + b;
}


int sumMoreSimple(int a, int b)
  => a+b;


//add
//jmp

int multiply(int times, int value) {
  int total = 0;
  for(int i = 0; i < times; i++) {
    total = total + value;
  }
  return total;
}


int startMultiplyRecursive(int times, int value)
  => multiplyRecursive(times, value, 0);

int multiplyRecursive(int times, int value, int total) {
  if(times == 0) {
    return value;
  } else {
    return multiplyRecursive(times -1, value, value + total);
  }
}