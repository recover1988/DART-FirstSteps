import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

  do {
    contador++;
    stdout.writeln('Contador: $contador ');
    stdout.writeln('desea continuear? y/n');
    continuar = stdin.readLineSync() ?? 'no';
  } while (continuar == 'y');
}
