//Fibonacci Dart com parametros nomeados e recursão de cauda
int fibonacci({int? n_esimo}) {
  if (n_esimo! >= 0) {
    if ((n_esimo == 0) || (n_esimo == 1)) {
      return n_esimo;
    } else {
      return (fibonacci(n_esimo: n_esimo - 1) +
          fibonacci(n_esimo: n_esimo - 2));
    }
  } else {
    return -1; //usamos -1 para significar erro
  }
}
