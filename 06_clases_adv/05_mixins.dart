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
