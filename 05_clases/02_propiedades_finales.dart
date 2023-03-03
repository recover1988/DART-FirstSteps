class Cuadrado {
  final int area;
  final int lado;

  // Error
  // Cuadrado(int area, int lado) {
  //   this.area = area;
  //   this.lado = lado;
  // }

  // Cuadrado(this.area, this.lado);

  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * 2;
}

void main(List<String> args) {
  final cuadrado = new Cuadrado(10);
  print(cuadrado);
}
