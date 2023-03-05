void main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5, 6];
  List<int>? lista2; //null
  List<int> lista3 = [1, 2, 3, 4, 5, 6];

  List<String> nombres = ['Tony', 'Peter'];

  print('Length: ${lista.length}');
  print('First: ${lista[0]}');
  print('First: ${lista.first}');
  print('Last: ${lista.last}');
  print('Is empty: ${lista.isEmpty}');
  print('Is empty: ${lista2 == null}');

  print('asMap: ${lista.asMap()}');
  Map listaMapa = lista.asMap();
  print('ListaMapa: ${listaMapa[5]}');

  Map nombreMapa = nombres.asMap();
  print('Nombre Mapa: ${nombreMapa[1]}');
}
