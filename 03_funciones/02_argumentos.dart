void saludar(String mensaje,
    [String nombre = '<Insertar Nombre>', int edad = 20]) {
  print('$mensaje $nombre - $edad');
}

void main(List<String> args) {
  saludar('Hola', 'Eric', 23);
}
