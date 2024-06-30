//Optional and required parameters

/*
In Dart we don't create override
Not allowed override methods with the same signatures with different amount of parameters

Like this example

void sum(int a, int b) {

}

void sum(int a, int b, int c) {

}

*/

void main() {
  print(operation(2, isSum: true));
}

//But you can create optional parameters like this, only need introduce brackets. If you want a parameters should be required use the keyword **required** this is
//really useful in constructors.

int operation(int a, {
  int b = 0,
  required isSum,
}) {
  if(isSum) {
    return a + b;
  } else {
    return a - b;
  }
}