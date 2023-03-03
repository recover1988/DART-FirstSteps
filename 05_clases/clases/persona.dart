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

// metodos
  @override
  String toString() {
    return '$nombre $edad $_bio';
  }
  // String toString()=>'$nombre $edad $_bio';
}
