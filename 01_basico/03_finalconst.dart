main() {
  var a = 10;
  final double b = 10.0;
  const double c = 10;

  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  const List<String> personasConst = ['Juan', 'Pedro', 'Fernando'];
  List<String> personasConst2 = const ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Maria');
  // personasConst.add('Maria');

  // print(personasFinal);
  // print(personasConst);

  double x = 12.34;
}
