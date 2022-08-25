//Fibonacci Dart sem parametros nomeados
int fibonacci(int n_esimo) {
  if (n_esimo >= 0) {
    if (n_esimo >= 2) {
      return (fibonacci(n_esimo - 1) + fibonacci(n_esimo - 2));
    } else {
      return n_esimo;
    }
  } else {
    return -1; //usamos -1 para significar erro
  }
}
