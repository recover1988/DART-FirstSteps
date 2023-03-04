void main(List<String> args) {
  String nombre = 'Eric';
  String apellido = 'Laura';

  String nombreCompleto = '$nombre ' 'Laura';
  print(nombreCompleto);

  print('Length: ${nombreCompleto.length}');
  print('Contains E: ${nombreCompleto.contains('E', 1)}');
  print('EndsWith a: ${nombreCompleto.endsWith('a')}');

  print('PadLeft: ${nombreCompleto.padLeft(20, '...')}');
  print('PadRight: ${nombreCompleto.padRight(20, '...')}');
}
