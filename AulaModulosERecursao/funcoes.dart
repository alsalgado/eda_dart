/**
Aula sobre funções em DART
Funções, em DART, são objetos da classe Function
*/

bool maiorQueDez(int numero) {
  if (numero > 10) {
    return true;
  } else {
    return false;
  }
}

//ParÂmetros opcionais
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

//Parâmetros posicionais
void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}

//Função arrow
var amplificar = (msg) => '!!! ${msg.toUpperCase()} !!!';

void main() {
  print(maiorQueDez(5));
}
