import 'clases/persona.dart';

void main(List<String> args) {
  final persona = new Persona();
  persona
    ..nombre = 'Fernando'
    ..edad = 23;
  // ..bio = 'Guadalajara';

  print(persona);
}
