class Fibonacci {
  //Atributos da classe
  List<int> _sequencia = [];

  // Construtor da classe
  Fibonacci() {
    this._sequencia.addAll([0, 1]);
  }

  /// Métodos da classe
  //Fibonacci Dart com parametros nomeados usando programacao dinamica
  void calc({required int n_esimo}) {
    if (n_esimo >= 0) {
      if (n_esimo < this.sequencia.length) {
        print(this._sequencia[n_esimo]);
      } else {
        for (int cont = this.sequencia.length; cont < n_esimo + 1; cont++) {
          this
              ._sequencia
              .add(this._sequencia[cont - 1] + this._sequencia[cont - 2]);
        }
      }
    } else {
      print('Erro: posição inválida');
    }
  }

  List<int> get sequencia {
    return this._sequencia;
  }
}
