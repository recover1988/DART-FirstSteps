import 'dart:io';

main() {
// ciclo for
  // for (int i = 1; i <= 10; i++) {
  //   print('index i: ${i + 1}');
  // }
  // ;

  stdout.writeln('Escribe el multiplicador');
  int multiplicador = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 1; i <= 10; i++) {
    print('$multiplicador x $i = ${multiplicador * i}');
  }
}
