class Herramientas {
  static const List<String> listado = [
    'Martillo',
    'Llave Inglesa',
    'Desarmador'
  ];
  static void imprimirListadp() => listado.forEach(print);
}

void main(List<String> args) {
  // final herr = new Herramientas();
  // Herramientas.listado.add('Tenaza');
  Herramientas.imprimirListadp();
}
