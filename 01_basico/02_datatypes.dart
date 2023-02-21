main() {
  // === number ===
  // var a = 10;
  // int b = 10;
  // double c = 10.3;

  int a = 10;
  double b = 5.5;
  int? c; // ? significa que puede ser nulo

  int _a = 30;
  double $b = 40;
  double resultado = _a + $b;
  // print(_a + $b);

  // === string ===

  var nombre = 'Tony';
  String name = 'Ana';
  String? name2; // ? puede ser nulo
  String name3 = "O'Connor";

  String nombreCompleto = '$nombre $name3';

  String multilinea = '''
    hola mundo
    $name3
    ¿Como estas?
    O'Connor''';

  // print(nombreCompleto);

  // === booleans ===
  bool isActive = true;
  bool isNotActive = !isActive;

  // print(isNotActive);

  // === Lists ===
  List<String> villanos = ['Lex', 'Red Skull', 'Doom'];

  villanos[0] = 'Superman';
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');

  // print(villanos);

  // === Sets ===

  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');

  // print(villanos2);

  // === Maps ===   Diccionarios / Objetos literales

  Map<int, dynamic> ironman = {
    1: 'Tony Stark',
    2: 'Intelligencia y dinero',
    3: 9000,
  };

  // print(ironman[2.1]);

  Map<String, dynamic> capitan = new Map();
  capitan.addAll({
    'nombre': 'Steve',
    'poder': 'Soporta droga sin morir',
    'nivel': 5000,
  });
  // capitan.addAll(ironman);
}
