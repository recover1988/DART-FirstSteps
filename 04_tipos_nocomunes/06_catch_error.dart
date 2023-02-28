void main(List<String> args) {
  Future timeout = Future.delayed(Duration(seconds: 3), () {

  if(1==1){
    throw 'Auxilio!, exploto esta cosa';
  };


    return 'Retorno de future';
  });

  // timeout.then((text) => print(text));
  timeout.then(print)
  .catchError((error)=> print(error));

  print('fin del main');
}
