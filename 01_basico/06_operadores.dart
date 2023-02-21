void main(List<String> args) {
  // Operadores de asignacion
  int a = 10;
  int? b;

  b ??= 20; // Asigna el valor unicamente si la variable es null

  // Operadores condicionales
  int c = 23;
  String resp = c > 25 ? 'C es mayor a 25' : 'C es menor a 25';

  int d = b ?? a ?? 100; // si b es nulo entonces usa a

  // Operadores Relacionales
  // todo retorna un valor booleano
/*

> Mayor que
< Menor que
>= Mayor o igual que
<= Menor o igual que

== revisa si dos objetos son iguales
!= revisa si dos objetos son diferentes

*/

  String persona1 = 'Fernando';
  String persona2 = 'Natalia';

  // print(persona1 == persona2); // false
  // print(persona1 != persona2); // true

  int x = 20;
  int y = 30;

  // print(x > y); // false
  // print(x < y); // true
  // print(x >= y); // false
  // print(x <= y); // true

  // Operador de tipo
  int i = 10;
  String j = '10';

  print(i is int); // true
  print(j is int); // false
  print(j is! int); // true
}
