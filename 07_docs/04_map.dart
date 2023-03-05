void main(List<String> args) {
  final persona = {'nombre': 'Eric', 'apellido': 'Laura', 'edad': 34};
  final direccion = {'ciudad': 'Cordoba', 'pais': 'Argentina'};

  print('Persona: $persona');
  print('Length: ${persona.length}');
  print('keys: ${persona.keys}');
  print('values: ${persona.values}');

  persona.addAll(direccion);

  print('AddAll: $persona');

  persona.remove('pais');
  print('Remove: $persona');

  // persona.removeWhere((key, value) {
  //   if (key != 'nombre') {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // });
  // persona.removeWhere((key, value) => (key != 'nombre' ? true : false));
  // print('removeWhere: $persona');

  persona.forEach((key, value) {
    print('key: $key , value: $value');
  });

  final newMap = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });
  print('Map: $newMap');
}
