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

#### CatchError --> Manejo de errores

```
void main(List<String> args) {
  Future timeout = Future.delayed(Duration(seconds: 3), () {

  if(1==1){
    throw 'Auxilio!, exploto esta cosa';
  };


    return 'Retorno de future';
  });

  // timeout.then((text) => print(text));
  timeout.then(print)
  .catchError((error)=> print(error));

  print('fin del main');
}
```

Todos los futures deben tener un catcherror para manejar los errores.

### Stream

la mejor analogía para un Stream es una cinta transportadora. Puede colocar un artículo en un lado y será transportado automáticamente al otro. Los streams actúan como cintas transportadoras, pero en lugar de elementos físicos podemos poner un objeto de datos en la cinta y ésta los transportará automáticamente, pero ¿hacia dónde? Bueno, como con un transportador de verdad, si no hay nadie que los atrape al final, entonces los objetos se dejan caer y se pierden. (Ok, esto no es del todo cierto con Dart Streams pero es mejor tratar los Streams como si lo fueran.)
Para evitar que su objeto de datos caiga en el vacío, puede configurar una “trampa” al final de un Stream. La trampa atrapará cualquier objeto que llegue y hará algo (reaccionará) cada vez que atrape un objeto que llegue al final del cinturón.

```
import 'dart:async';

void main(List<String> args) {
  final streamController = StreamController();

  streamController.stream.listen((data) => print('Despegando $data'),
      onError: (err) => print('Error! $err'),
      onDone: () => print('Mision Completa!'),
      cancelOnError: false);

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston, tenemos un problema!');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');

  streamController.sink.close();

  print('Fin del main');
}

```

`callback` -> esta es la funcion que puede manipular los datos en el stream.
`onError` -> es un listen que sucede cuando ocurre un error.
`onDone` -> cuando se cierra el stream con `sink.close()` ejecuta esta funcion
`cancelOnError` -> admite valor booleano y termina o permite la ejecucion del stream si ocurre un error.

#### Formas de poner tipado al Stream

```
final StreamController<String> streamController = StreamController();

final streamController = StreamController<String>();
```

#### Streams de una subcripcion y de multiples subscripciones

Tenemos `stream` de una subscripcion

```
final streamController = StreamController<String>();
```

Y para tener varios listener se pone el `.broadcast()`

```
final streamController = StreamController<String>.broadcast();
```

que permite tener varios listener sin cancelar subscripciones

```
import 'dart:async';

void main(List<String> args) {
  // final StreamController<String> streamController = StreamController();
  final streamController = StreamController<String>.broadcast();

  streamController.stream.listen((data) => print('Despegando $data'),
      onError: (err) => print('Error! $err'),
      onDone: () => print('Mision Completa!'),
      cancelOnError: false);

  streamController.stream.listen((data) => print('Despegando stream 2 $data'),
      onError: (err) => print('Error! stream 2 $err'),
      onDone: () => print('Mision Completa! stream 2'),
      cancelOnError: false);

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston, tenemos un problema!');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');

  streamController.sink.close();

  print('Fin del main');
}

```

# Clases

Aquí empezaremos a trabajar con nuestras clases personalizadas en Dart, también quiero recordarles que en los constructores de las clases en Dart, podemos mandar argumentos con nombre, posicionales, opcionales y valores por defecto.
Una funcion se conoce como metodo dentro de una clase, y un valor es una propiedad.

Puntualmente veremos:

## Estructura de una clase

Las clases en dart se inicializan y tiene las sigueinte propiedeades y metodos:

```
class Persona {
// campos o propiedades
  String? nombre;
  int? edad;
  String? bio;
// Get y sets

// Constructores

// metodos
  @override
  String toString() {
    return '$nombre $edad $bio';
  }
}

```

## Clases en archivos independientes

Se recomienda y es buena practica tener las clases en archivos separados e importalos en donde se lo necesita.
Tambien se puede optimizar el codigo de la siguien forma:

```
import 'clases/persona.dart';

void main(List<String> args) {
  final persona = new Persona();
  persona
    ..nombre = 'Fernando'
    ..edad = 23
    ..bio = 'Guadalajara';

  print(persona);
}

```

Los `..` nos indican que es la propiedad de la misma clase.

## Propiedades públicas y privadas

Las propiedades privadas se señalan con `_`, esto indica que este propiedad o metodo solo puede ser usado dentro del contexto en que se definio y no puede ser llamada o invacada desde afuera.

## Getters

Los getters son metodos que no requieren valores de entrada por eso se define con el tipo de dato, la palabra reservada `get` y el nombre.

```
  // String get bio {
  //   return _bio!.toUpperCase();
  // }

  String get bio => _bio!.toUpperCase();
```

## Setters

Los setters si requierene un dato de entrada el cual debe tener su tipo, ademas estos no devuelven nada y tiene el return `void` implicito

```
  // void set bio(String texto) {
  //   _bio = texto;
  // }
  void set bio(String texto) => _bio = texto;
```

## Constructores básicos

El constructor se inicializa con la instancia de la clase, puede estar implicito tambien.

```
// Constructores
  Persona();
```

Este constructor es permitido, este debe estar dentro de la clase y tiene que tener el mismo nombre que la clase.
El constructor es uno d elos elementos que primero se ejecutan en la clase

```
  Persona() {
    print('constructor');
  }

```

Podemos hacer el constructor de forma explicita:

```
  Persona(int edad, String nombre) {
    this.edad = edad;
    this.nombre = nombre;
  }

```

O de forma implicita:

```
  Persona(this.edad, this.nombre);
```

Argumento posicional no obligatorio

Si le ponemos `{this.nombre}` hacemos que este argumento sea opcional, y luego para enviar el dato hacemos como si fuera una propiedad de un objeto

```
final persona = new Persona(33, nombre: 'Eric');
```

Para poner valores

```
 Persona({this.edad = 0, this.nombre = ''})
```

## Constructores con nombre

Para crear mas constructores, lo que se hace es nombrarlos:

```
  Persona({this.edad = 0, this.nombre = ''});

  //Crear un nuevo constructor pero con nombre
  Persona.persona30(this.nombre) {
    this.edad = 30;
  }
```

Aca tenemos dos constructores uno que es `Persona` y otro que es `Persona.persona30`, y para usarlo nos vamo a la funcion:

```
 final persona2 = new Persona.persona30('Maria');
```

Instancias el segundo constructor. A este constructor nombrado se el puede definir propiedades y cabmiar alguna.

## Propiedades finales

Podemos ver en el siguiente ejemplo que se inicializan las propiedades finales y una vez tengan valor ya no se puede modificar, esto nos ahora escribir setter y getters.

```
class Cuadrado {
  final int area;
  final int lado;

  // Error
  // Cuadrado(int area, int lado) {
  //   this.area = area;
  //   this.lado = lado;
  // }

  // Cuadrado(this.area, this.lado);

  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * 2;
}

void main(List<String> args) {
  final cuadrado = new Cuadrado(10);
  print(cuadrado);
}

```

## Constructores constantes

Si la clase tiene definida el cosntructor en constante y instanciamos clases con los mismo valores, estos van a ser iguales ya que estan dirigidas al mismo espacio de memoria.

```
class Location {
  final double lat;
  final double lng;
  const Location(this.lat, this.lng);
}

void main(List<String> args) {
  final sanFrancisco1 = new Location(12.4124, 132.3343141);
  final sanFrancisco2 = new Location(12.4124, 132.3343141);
  final sanFrancisco3 = new Location(12.4124, 132.3343141);

  // print(sanFrancisco1 == sanFrancisco2); //false
  // print(sanFrancisco2 == sanFrancisco3); //false

  const sanFrancisco4 = const Location(12.4124, 132.3343140);
  const sanFrancisco5 = const Location(12.4124, 132.3343141);
  const sanFrancisco6 = const Location(12.4124, 132.3343141);
  const berlin = const Location(12.4124, 132.3343141);
  print(sanFrancisco4 == sanFrancisco5); //false
  print(sanFrancisco5 == sanFrancisco6); //true
  print(berlin == sanFrancisco6); //true
}


```

## Constructores factory

Constructor factory nunca crea una instancia, solo puede retorna la creacion de una nueva instancia, o una variable o intancia previamente creada.
'''
factory Reactangulo(int base, int altura) {
if (base == altura) {
return Reactangulo.cuadrado(base);
} else {
return Reactangulo.rectangulo(base, altura);
}
}
'''

## Propiedades y métodos estáticos

Un metodo estatico se puede llamar sin instanciar la clase, por lo general son elemento de tipo constantes, para que no se puedan modificar por ningun metodo (como los final que si se pueden modificar con los metodos).
El static indica que puedo ingresar a esos metodos o propiedades sin intancias la clase.

```
class Herramientas {
  static const List<String> listado = [
    'Martillo',
    'Llave Inglesa',
    'Desarmador'
  ];
  static void imprimirListadp() => listado.forEach(print);
}

void main(List<String> args) {
  // final herr = new Herramientas();
  // Herramientas.listado.add('Tenaza');
  Herramientas.imprimirListadp();
}

```

## Singleton

Nos permite tener la informacion centralizada porque cada instancia va a regresar siempre la primera.

Un patron singleton consta de 3 parte.
1 - constructor privado genera una instancia.
2 - propiedad estatica privada que sirva para mantener una instancia o referencia en memoria demi servicio previamente creado.
3 - el constructor normal de la clase

```
class MiServicio {
  static final MiServicio _singleton = new MiServicio._internal(); // 2
  factory MiServicio() { // 3
    return _singleton;
  }

  MiServicio._internal(); // 1

  String url = 'http://abs.comm';
  String key = 'ADSAWE123';
}

```

Con esto podemos realizar distintas instancias de la clase, pero siempre van a apuntar al mismo espacio de memoria.

```
import 'clases/mi_servicio.dart';

void main(List<String> args) {
  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'httt://api.spotify.com/v3';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'httt://api.spotify.com/v3';

  print(spotifyService1 == spotifyService2);

  print(spotifyService1.url);
  print(spotifyService2.url);
}

```

## Extends

Al crear una clase si queremos manejar los metodos y propiedades de una clase existente podemos usar el `extends`. De esta forma podemos usar en la nueva clase los metodos y propiedades de la clase heredadd.

```
class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehiculo Encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo Apagado');
  }
}

class Carro extends Vehiculo {
  int kilometraje = 0;
  void mover() {
    print('Arrancando $encendido');
  }
}

void main(List<String> args) {
  final ford = new Carro();
  ford.apagar();
  ford.mover();
}

```

## Clases abstractas

Solo sirve para hederar sus metodos y propiedades a otras clases con el extend. No pueden ser instanciadas y solo sirve de cascaron para otras clases.

```
abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehiculo Encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo Apagado');
  }

  bool revisarMotor();
}

class Carro extends Vehiculo {
  int kilometraje = 0;
  void mover() {
    print('Arrancando $encendido');
  }

  @override // sobreescribir un metodo del padre
  bool revisarMotor() {
    print('Motor Ok!!');
    return true;
  }
}

void main(List<String> args) {
  final ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.revisarMotor();
}

```

Se recomienda mostrar el @override si se va a cambiar algun metodo de la clase padre.

## Super Constructor

El super sirve para poder inicializar las propiedades que tiene el padre.

```
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre , Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);
}

void main(List<String> args) {
  final pedro = new Cliente(34, 'Eric');
  pedro.imprimirNombre();
}

```

Con los ':' le decimos que se inicialize primero el super.

## Override

Con el decorador `@override` indicamos que estamos sobreescribiendo un metodo de la clase padre, asi es mas facil de ver para otros desarrolladores.

```
  @override
  void imprimirNombre() {
    super.imprimirNombre();
    print('Cliente: $nombre ($edad)');
  }
```

Con el metodo `super.` estamos invocando el metodo de la clase padre.

## Mixins

Es para dar los metodos y propiedades de una clase a otra, muy parecido a los extends.
La diferencia con una clase abstracta es que los mixins no pueden tener un constructor y tampoco crear instancias.
Estan hechos para heredar o trasnferir sus propiedades y metodos a otra clase.

```
mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::::: $texto');
  }
}

class Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::::: $texto');
  }
}

abstract class Astro with Logger {
  String? nombre;
  Astro() {
    imprimir('---- init del Astro-----');
  }

  void existo() {
    imprimir('___ Soy un ser celestial ___');
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  String? nombre;
  Asteroide(this.nombre) {
    // imprimir('Soy el $nombre');
    imprimir2('Soy el $nombre');
  }
}

void main(List<String> args) {
  final ceres = new Asteroide('Ceres');
}

```
