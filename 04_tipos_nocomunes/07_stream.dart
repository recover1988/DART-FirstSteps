import 'dart:async';

void main(List<String> args) {
  // final StreamController<String> streamController = StreamController();
  final streamController = StreamController<String>.broadcast();

  streamController.stream.listen((data) => print('Despegando $data'),
      onError: (err) => print('Error! $err'),
      onDone: () => print('Mision Completa!'),
      cancelOnError: false);

  streamController.stream.listen((data) => print('Despegando stream 2 $data'),
      onError: (err) => print('Error! stream 2 $err'),
      onDone: () => print('Mision Completa! stream 2'),
      cancelOnError: false);

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston, tenemos un problema!');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');

  streamController.sink.close();

  print('Fin del main');
}
