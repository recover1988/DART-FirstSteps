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
