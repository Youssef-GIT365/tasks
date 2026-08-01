void calculate(int number, int number1, Function operation) {
  print(operation(number, number1));
}

void main() {
  calculate(20, 5, (a, b) => a + b);

  calculate(30, 10, (a, b) => a - b);

  calculate(40, 15, (a, b) => a * b);
}
