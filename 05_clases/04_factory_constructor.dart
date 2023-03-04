class Reactangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo;
  factory Reactangulo(int base, int altura) {
    if (base == altura) {
      return Reactangulo.cuadrado(base);
    } else {
      return Reactangulo.rectangulo(base, altura);
    }
  }
// constructor factory nunca crea una instancia, solo puede retorna la creacion de una nueva instancia, o una variable o intancia previamente creada.
  Reactangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'cuadrado';
  }
  Reactangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'rectangulo';
  }
  @override
  String toString() {
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}
        .toString();
  }
}

void main(List<String> args) {
  final figura = new Reactangulo(10, 15);
  print(figura); // intancia de Rectangulo
}
