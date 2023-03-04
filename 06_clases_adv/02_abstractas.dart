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
