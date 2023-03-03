import 'clases/persona.dart';

void main(List<String> args) {
  final persona = new Persona(edad: 33, nombre: 'fernando');
  final persona2 = new Persona.persona30('Maria');
  // persona
  //   ..nombre = 'Fernando'
  //   ..edad = 23;
  // ..bio = 'Guadalajara';

  // persona.bio = 'Cambie el valor';

  print(persona.info);
}
