void main() {
  ExampleTwo d2 = ExampleTwo(23, 56);
  print(d2.a);
}

class Example {
  late int a;
  late int b;
  Example(this.a, this.b);
}

class ExampleTwo extends Example {
  ExampleTwo(int a, int b) : super(a, b);
}
