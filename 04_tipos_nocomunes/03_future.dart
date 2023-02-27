void main(List<String> args) {
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos despues');
    return 'Retorno de future';
  });

  // timeout.then((text) => print(text));
  timeout.then(print);

  print('fin del main');
}
