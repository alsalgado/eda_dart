//Fibonacci Dart com parametros nomeados usando programacao dinamica
void fibonacciDinamico({required int n_esimo, required List tabela}) {
  if (n_esimo >= 0) {
    if (n_esimo < tabela.length) {
      print(tabela[n_esimo]);
    } else {
      for (int cont = tabela.length; cont < n_esimo + 1; cont++) {
        tabela.add(tabela[cont - 1] + tabela[cont - 2]);
      }
      print(
          'Tabela Dinâmica com Sequência de Fibonacci calculada até o ${n_esimo}-esimo elemento: ${tabela}');
    }
  } else {
    print('Erro');
  }
}
