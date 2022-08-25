// import 'AulaModulosERecursao/exemplo1.dart' as exemplo1;
// import 'AulaModulosERecursao/exemplo2.dart' as exemplo2;
// import 'AulaModulosERecursao/exemplo3.dart' as exemplo3;
// import 'AulaModulosERecursao/exemplo4.dart' as exemplo4;

import 'AulaPOO/fib.dart';

void main(List<String> args) {
  // final List<int> casosBasicos = [0, 1];
  // exemplo4.fibonacciDinamico(n_esimo: 10, tabela: casosBasicos);

  Fibonacci fib = new Fibonacci();

  fib.printSequencia();
  fib.calc(n_esimo: 50);

  fib.printNEsimo(n_esimo: 10);

  fib.printNEsimo(n_esimo: 60);

  fib.printSequencia();
}
