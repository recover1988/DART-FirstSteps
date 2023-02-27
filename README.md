# DART-FirstSteps

## Reglas para el nombrado de variables

Case-Sensitivity: Todos los nombres de variables son sensibles a mayúsculas y minúsculas, lo cual indica que la variable num es distinta a la variable Num.

Label-Rule: Las variables deben comenzar con una letra o un guión al piso ( \_ ), seguido de una combinación de letras, números y guiones al piso.

Not-Keyword: Las nombres de variables no puedes ser iguales a una palabra reservada del lenguaje Dart.

## Palabras Reservadas

| abstract | continue | FALSE      | new      | this    |
| -------- | -------- | ---------- | -------- | ------- |
| as       | default  | final      | null     | throw   |
| assert   | deferred | finally    | operator | TRUE    |
| async    | do       | for        | part     | try     |
| async\*  | dynamic  | get        | rethrow  | typedef |
| await    | else     | if         | return   | var     |
| break    | enum     | implements | set      | void    |
| case     | export   | import     | static   | while   |
| catch    | external | in         | super    | with    |
| class    | extends  | is         | switch   | yield   |
| const    | factory  | library    | required | late    |

## Funciones

Las funciones siempre comienzan con main que es el punto de entrada.

## NULL SAFETY

Evita los errores que resultan del acceso no intencional de las variables establecidas en null. Por ejemplo, si un método espera un número entero pero recibe un valor null, su aplicación genera un error de tiempo de ejecución. Este tipo de error, un error de falta de referencia nula, puede ser difícil de depurar.

## Data types

```
Numbers

var --> no se recomienda usarlo, se infiere el tipo de dato
int --> tipo entero
double --> tipo real

Strings

String --> tipo string
String? --> puede ser null
''' ... ''' --> multilinea
$nombre_variable --> inserta la variable en la oración
String nombreCompleto = '$nombre $name3'; --> interpolación

Dynamic
Es el tipo comodin puede ser cualquier tipo de dato.

Boolean

bool --> tipo de dato falso o verdadero
!true --> ! significa negacion y cambia el valor a su opuesto
variable! --> al final de una variable le indica a dart que esta variable no es null

List []
                    0           1           2
List<String> = ['Superman', 'Batman', 'Wonderwoman'];
Las listas comienzan en 0, el new List() esta deprecated.
El list permite tener elementos duplicados

Sets {}

Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};
Sets tienen llaves.
Los sets solo tienen elementos unicos, si se agrega un elemento que ya estaba, no se agrega.


```

### Eliminar elementos duplicados de una lista

Se puede llamar al metodo `.toSet()`, que nos devuelve un Set sin los elementos duplicados y luego los transformamo con `.toList()`

## Final, Const and Late

- Estas variables no se pueden cambiar despues de su inicializacion.
- final --> permite modificar con metodos.
- const --> no se puede modificar, ni con los metodos da error.
- final --> no permite apuntar a un nuevo espacio de memoria.
- late --> se puede usar al declarar una variable no anulable que se inicializa después de su declaración.
- late --> es posible que la variable no sea necesaria e inicializarla sea costoso.
- late --> Está inicializando una variable de instancia y su inicializador necesita acceso a esto.

#### Ejemplos late:

```
SIN LATE

//START
String result = _getResult( );
//END
```

En el código anterior, el `result` nunca se usa, pero \_getResult( )se ejecuta.

```
CON LATE

//START
late String result = _getResult( );
//END
```

En el código anterior \_getResult( ) no se ejecuta porque la variable `result` nunca se usa y se declara usando el modificador tardío.

## Comentarios

/// y [variable] --> para usar en documentacion

/_ \*\* _/ --> para hacer comentario multilinea

## Parameters (Args Posicionales y Args por Nombre)

```
void saludar(String mensaje,
[String nombre = '<Insertar Nombre>', int edad = 20]) {
  print('$mensaje $nombre - $edad');
}
```

Entre llaves [] se colocan los argumentos opcionales que puede estar iniciados o se puede poner ? para decir que puede tener un valor o ser null

```
void saludar2(String mensaje,{ required String nombre, int veces = 10}) {
  // cuerpo de la funcion
  print('Saludar2: $mensaje $nombre - $veces');
}

```

```
void main(List<String> args) {
  saludar('Hola', 'Eric', 23);
  saludar2('saludo',nombre: 'Toni');
}

```

Podemos pasar argumentos por posicion, o por nombre que seria poniendo las llaves { }, y luego las pasamos a la funcion.

- Los `Objetos` se manda por referencias como mapas, arreglos.
- Los primitivos no se mandan por referencia sino que se mandan su valor y se crean en nuevos espacios de memoria.

## Tipos de Datos No Comunes

#### Queue

```
void main(List<String> args) {
  Queue<int> cola = new Queue();
  cola.addAll([10, 20, 30, 40, 50]);
  // print(cola is Queue);

  Iterator i = cola.iterator;
  while (i.moveNext()) {
    print(i.current);
  }
}
```

Este tipo de dato funciona como un ciclo for pero es mas eficiente.

#### Enum

```
void main(List<String> args) {
  Audio volumen = Audio.alto;
  switch (volumen) {
    case Audio.bajo:
      print('Volumen bajo');
      break;
    case Audio.medio:
      print('Volumen medio');
      break;
    case Audio.alto:
      print('Volumen alto');
      break;
  }
}

enum Audio { bajo, medio, alto }
```

El enum sirve para tener un codigo mas limpio.

### future

```
void main(List<String> args) {
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos despues');
    return 'Retorno de future';
  });

  // timeout.then((text) => print(text));
  timeout.then(print);

  print('fin del main');
}

```

Estan basados en las promesa de javascript. Una tarea asincrona que se va a resolver en el futuro. La promesa de que va a retornar un objeto.
Un Future puede esperar cualquier tipo de objeto y/o tipos de datos:
Future<bool>
Future<String>
Future<double>
Future<int>
Future<Modelo>
Future<List>
Los futures resuelven a algun tipo de dato, generalmente se usa para hacer peticiones http donde se espera la respuesta de un servidor.
