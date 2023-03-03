class Persona {
// campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Hola soy una propiedad privada';
// Get y sets
  // String get bio {
  //   return _bio!.toUpperCase();
  // }
  String get bio => _bio.toUpperCase();

  // void set bio(String texto) {
  //   _bio = texto;
  // }
  void set bio(String texto) => _bio = texto;

  //Getters

  String get info {
    return _bio;
  }

// Constructores
  // Persona(int edad, String nombre) {
  //   this.edad = edad;
  //   this.nombre = nombre;
  //   // print('constructor');
  //   // _bio = 'Hola desde el constructor';
  // }

  Persona({this.edad = 0, this.nombre = ''});

  //Crear un nuevo constructor pero con nombre
  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  Persona.persona40(this.nombre) {
    this.edad = 40;
  }
  Persona.incorrecto(this.nombre) {
    this._bio = 'Usuario incorrecto';
  }
// metodos
  @override
  String toString() {
    return '$nombre $edad $_bio';
  }
  // String toString()=>'$nombre $edad $_bio';
}
