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
      if (n_esimo < this._sequencia.length) {
        print(this._sequencia[n_esimo]);
      } else {
        for (int cont = this._sequencia.length; cont < n_esimo + 1; cont++) {
          this
              ._sequencia
              .add(this._sequencia[cont - 1] + this._sequencia[cont - 2]);
        }
      }
    } else {
      print('Erro: posição inválida, favor informar uma posicao >= 0');
    }
  }

  // List<int> get sequencia {
  //   return this._sequencia;
  // }

  void printNEsimo({required int n_esimo}) {
    if (n_esimo < this._sequencia.length) {
      print('''
        O ${n_esimo}-esimo elemento da sequência de Fibonacci é: ${this._sequencia[n_esimo - 1]}.
        ''');
    } else {
      print(
          'Para calcular o ${n_esimo}-esimo elemento use calc(n_esimo: ${n_esimo})');
    }
  }

  void printSequencia() {
    print('''
      A tabela dinâmica atualizada com a sequência de Fibonacci contém ${this._sequencia.length} elementos, são eles:

      ${this._sequencia}
    ''');
  }
}
