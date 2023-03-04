class MiServicio {
  static final MiServicio _singleton = new MiServicio
      ._internal(); // propiedad estatica privada que sirva para mantener una instancia o referencia en memoria demi servicio previamente creado

  factory MiServicio() {
    // este es el constructor normal de la clase
    return _singleton;
  }

  MiServicio._internal(); // constructor privado genera una instancia

  String url = 'http://abs.comm';
  String key = 'ADSAWE123';
}
