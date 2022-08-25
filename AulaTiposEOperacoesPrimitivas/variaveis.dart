/**Bem-vindo(a)! Vamos aprender sobre variáveis em DART?
  Variáveis são reservas de espaço na memória do computador! 
  #imagine: quando definimos variáveis, estamos reservando vagas no "barco" do processamento de nosso computador :)
  COMANDO NA TELA PRETA: dart variaveis.dart
*/

/**
Códigos para didática, não se preocupe com eles agora :)
*/
const partiuTelaPreta = print;

//Função principal, é aqui que o DART inicia o processamento do seu código #dahora
void main() {
  //VARIÁVEIS DINÂMICAS
  /** Tipo: var
  Significado: Estou pedindo o computador para adivinhar (inferir) o tipo da variável e reservar o espaço que ele achar melhor na memória.
  Pros: simplifica a programação.
  Cons: o computador pode reservar mais espaço que o necessário, e subutilizar o "barco" da memória.
  */
  var nome = 'Andre'; // Sempre termine com ; (ponto e vírgula)
  partiuTelaPreta(nome);

  /** Tipo: Object
  Significado: Estou pedindo o computador para reservar o espaço para um objeto. Objetos são basicamente conjuntos de atributos (como são tais objetos) e métodos (o que esses objetos fazem). Tudo em DART é objeto.
  Pros: ajuda caso precise de uma variável curinga, como se ela precisasse alternar entre tipos ao longo da execução do programa. "Como se uma pessoa pudesse ficar mais ou menos pesada depois de entrar no barco". 
  Cons: pode deixar nosso barco lento, já que podem ficar mais pesadas ao longo do processamento (viagem do "barco").
  
  */
  Object idade = '18';
  partiuTelaPreta(idade);
  idade = 'dezoito';
  partiuTelaPreta(idade);
  idade = '18.0';
  partiuTelaPreta(idade);
  idade = '18 anos';
  partiuTelaPreta(idade);

  //MODIFICADORES DE TIPOS
  /** Modificador: late
  Significado: estou dizendo ao computador que essa variável vai ser inicializada (receber um valor) depois que ela é declarada. 
  Pros: evita a declaração de variáveis nulas, sem nada, que não são desejadas em DART.
  Cons: é preciso lembrar de iniciá-la ao longo do código, se não o DART vai achar ruim com você! hehe
  */

  //ATENÇÃO! Copie e cole as linhas 66 - 71 em: https://dartpad.dev/?null_safety=true
  /**
  late var atrasado;
  void main(){
    atrasado = 'Andre';
    print(atrasado);
  }
  */

  /** Modificador: final
  Significado: estou dizendo ao computador que esse será o valor final da variável. Portanto, ele não será alterado em NENHUM momento.
  Pros: economiza espaço no barco.
  Cons: é preciso ter certeza de que a variável não será modificada hora alguma.
  */
  final senha = 'admin';
  partiuTelaPreta(senha);
  //senha = 12; // <- repare que não irá funcionar. Afinal, o combinado era manter o valor inicial.

  /** Modificador: const
  Significado: uma variável final que você ainda não sabe o valor, então pede o computador para calcular esse valor quando compilar. 
  Pros: economiza espaço no barco.
  Cons: é preciso ter certeza de que a variável não será modificada hora alguma após o primeiro cálculo.
  */
  const pi = 220 / 70; //valor aproximado ilustrativo
  partiuTelaPreta(pi);

  //DEMAIS TIPOS DART
  //Number int.
  var inteiro1 = 1;
  num inteiro2 = 2;
  partiuTelaPreta(inteiro1);
  partiuTelaPreta(inteiro2);

  //Number double
  num double1 = 1.0;
  double double2 = 2; //repare que o valor será 2.0
  partiuTelaPreta(double1);
  partiuTelaPreta(double2);

  //String (caracteres amarrados. Ex: P-A-R-A-B-E-N-S na parede da festa de aniversário)
  String parabens = 'parabens 18 anos'; // Entre aspas, sempre!
  partiuTelaPreta(parabens);

  //Interpolação de Strings (insere uma String dentro de outra usando $nomeDaString )
  String interpolada = 'Parabéns $nome!!';
  partiuTelaPreta(interpolada);

  //Concatenação de String usando +
  String concatenada = parabens + ' ' + interpolada;
  partiuTelaPreta(concatenada);

  //Strings multilinhas
  String multilinha = '''
  Ola, tudo bem?
  Sou a String multilinha
  uHAeheauhAUEuh
  '''; // entre aspas triplas!!
  partiuTelaPreta(multilinha);

  //Booleanos (V ou F)
  bool verdade = true; //repare que não está entre aspas
  partiuTelaPreta(verdade);

  //Listas ordenadas
  var lista = ['primeiro', 'segundo', 'terceiro'];
  partiuTelaPreta(lista[
      0]); //o primeiro elemento senta no banco número zero (0) da fileira reservada para lista no "barco".

  //Coleção (lista não ordenada)
  var alunos = {
    'João',
    18,
    'Pedro'
  }; //Não dá para acessar pelo lugar no banco do "barco", eles podem trocar de lugar entre eles rs

  //Coleção tipada
  var alunos2 = <String>{'Joao', 'Pedro', 'Andre'};

  //Mapas (conjuntos de chave:valor)
  var gasesNobres = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  //Mapas tipados (conjuntos de chave:valor)
  var gasesNobres2 = Map<int, String>();
  gasesNobres[2] = 'helium';
}
