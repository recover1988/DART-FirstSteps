import 'dart:io';

void main(List<String> args) {
  // print(Directory.current.path);
  File file = new File(
      Directory.current.path + '/04_tipos_nocomunes/assets/persona.txt');

  Future<String> f = file.readAsString();

// f.then((data) => print(data));
  Future.delayed(Duration(seconds: 3), () {
    f.then(print);
  });

  print('fin del main');
}
