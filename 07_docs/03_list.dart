void main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5, 6];
  List<int>? lista2; //null
  List<int> lista3 = [1, 6, 5, 2, 3, 4];

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
  print('Nombre Mapa: ${nombreMapa}');
  print('Nombre Mapa: ${nombreMapa[1]}');

  print('indexOf: ${nombres.indexOf('Peter')}');

  int mayor3 = lista.indexWhere((element) =>
      element > 3); // indice del primer elemtno cuyo valor es mayor a 3
  print('indexWhere mayor 3: $mayor3');

  print(
      'Remove: ${nombres.remove('Tony')}'); // si elimina devuelve true sino false

  lista.shuffle();
  print('Shuffle: $lista');
  lista3.sort();
  print('Reversed: ${lista3.reversed.toList()}');

  nombres.forEach((element) {
    element = element.toUpperCase();
    print(element);
  });

  final newList = nombres.map((nombre) => nombre.toLowerCase()).toList();
  print('newList: $newList');
}
