main() {
  outerLoop:
  for (int x = 0; x < 3; x++) {
    print('Valor de x: $x');
    innerLoop:
    for (int y = 0; y < 3; y++) {
      print('Valor de y: $y');
      if (y == 2) {
        break outerLoop;
      }
    }
  }
}
