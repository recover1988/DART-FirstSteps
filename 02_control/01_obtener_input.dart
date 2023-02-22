import 'dart:io';

main() {
  // imprimir en terminal o cmd
  stdout.writeln('¿Cual es tu nombre?');

  // leer informacion
  String? nombre = stdin.readLineSync(); // solo retorna strings
  stdout.writeln('Tu nombre es: $nombre');
}
