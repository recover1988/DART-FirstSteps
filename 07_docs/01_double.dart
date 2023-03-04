void main(List<String> args) {
  double numero = 3.1416;
  double numeroNegativo = -3.1416;
  double infinito = double.infinity;

  print('Firma: ${numero.sign} ::::: $numero');
  print('Is finite: ${numero.isFinite} ::::: $numero');

  print('Is finite: ${infinito.isFinite} ::::: $infinito');

  print('abs: ${numero.abs()} ::::: $numero');
  print('ceil: ${numero.ceil()} ::::: $numero');
  print('ceilToDouble: ${numero.ceilToDouble()} ::::: $numero');
  print('ceil: ${numeroNegativo.ceil()} ::::: $numeroNegativo');

  print('round: ${numero.round()} ::::: $numero');
  print('clamp: ${numero.clamp(1, 3)} ::::: $numero');
}
