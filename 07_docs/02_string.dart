void main(List<String> args) {
  String nombre = 'Fernando';
  String apellido = 'Herrera';

  String nombreCompleto = '$nombre ' 'Herrera';
  print(nombreCompleto);

  print('Length: ${nombreCompleto.length}');
  print('Contains E: ${nombreCompleto.contains('E', 1)}');
  print('EndsWith a: ${nombreCompleto.endsWith('a')}');

  print('PadLeft: ${nombreCompleto.padLeft(20, '...')}');
  print('PadRight: ${nombreCompleto.padRight(20, '...')}');

  print('Operadores []: ${nombreCompleto[2]}');
  print('Operadores *: ${nombreCompleto * 2}');
  print('Operadores *: ${'*' * 12}');

  print('ReplaceAll: ${nombreCompleto.replaceAll(new RegExp(r'e'), 'a')}');
  print('Substring: ${nombreCompleto.substring(4)}');
  print('IndexOf F: ${nombreCompleto.indexOf('F')}');

  print('Split: ${nombreCompleto.split(' ')}');
  print('Split: ${nombreCompleto.split(' ')[1]}');

  int indice = nombreCompleto.length - 1;
  String capitalizado = nombreCompleto[indice].toUpperCase();
  String finalCapitalizado =
      nombreCompleto.replaceRange(indice, null, capitalizado);

  print('Capitalizar ultima letra: $finalCapitalizado');
}
