class Persona {
// campos o propiedades
  String? nombre;
  int? edad;
  String? _bio = 'Hola soy una propiedad privada';
// Get y sets

// Constructores

// metodos
  @override
  String toString() {
    return '$nombre $edad $_bio';
  }
}
