import 'clases/mi_servicio.dart';

void main(List<String> args) {
  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'httt://api.spotify.com/v3';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'httt://api.spotify.com/v3';

  print(spotifyService1 == spotifyService2);

  print(spotifyService1.url);
  print(spotifyService2.url);
}
