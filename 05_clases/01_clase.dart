void main(List<String> args) {
  // final persona = {'nombre': 'Fernando', 'edad': 12};

  // print(persona);
// Instancia de la clase

  final persona = new Persona();
  persona.nombre = 'Fernando';
  persona.edad = 23;
  persona.bio = 'Guadalajara';

  print(persona.toString());
}

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
