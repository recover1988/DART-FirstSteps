void saludar(String mensaje,
    [String nombre = '<Insertar Nombre>', int edad = 20]) {
  print('$mensaje $nombre - $edad');
}

void saludar2(String mensaje, {required String nombre, int veces = 10}) {
  // cuerpo de la funcion
  print('Saludar2: $mensaje $nombre - $veces');
}

void main(List<String> args) {
  saludar('Hola', 'Eric', 23);
  saludar2('saludo', nombre: 'Toni');
}
