/* 
Crie uma classe que represente uma pessoa. A pessoa tem nome, idade, altura, peso, casada.
Faça um construtor que recebe todos os valores e um construtor que recebe apenas o nome e a idade.
Faça um método que mostra todos os valores da pessoa.
Faça um método que aumenta a idade da pessoa em 1.
Faça um método que casa a pessoa.
Faça um método que troca o nome da pessoa.
Faça um método que adicione dinheiro para a pessoa. Caso o valor seja negativo, lance uma exceção.

 */

void main() {
  try {
    Pessoa pessoa1 = Pessoa(nome: 'eu', idade: 30);
    Pessoa pessoa2 = Pessoa(nome: 'ela', idade: 65, casado: true);
    Pessoa pessoa3 =
        Pessoa(nome: 'ele', idade: 78, casado: false, dinheiro: 45.6);

    pessoa1.casar();
    pessoa2.trocarNome('tu');
    pessoa3.adicionarDinheiro(10);

    pessoa1.adicionarDinheiro(78);

    pessoa1.imprimir();
    pessoa2.imprimir();
    pessoa3.imprimir();
  } catch (e) {
    print(e);
  }
}

class Pessoa {
  String nome;
  int idade;
  bool casado;
  double _dinheiro; //_variavel significa que ele é privado
//construtores no topo da classe
  //Pessoa(); -> construtor principal
  Pessoa(
      {required this.nome,
      required this.idade,
      this.casado = false,
      double dinheiro = 0.0})
      : _dinheiro = dinheiro;

  set dinheiro(double valor) {
    if (valor >= 0) {
      _dinheiro = valor;
    } else {
      throw ErroDinheiro();
    }
  }

  void adicionarDinheiro(double valor) {
    if (valor >= 0) {
      _dinheiro += valor;
    } else {
      throw ErroDinheiro();
    }
  }

  void aniversario() {
    idade++;
    print('Nova idade $idade');
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String novoNome) {
    nome = novoNome;
  }

//Ver como fazer as excessões - 40minutos

  void imprimir() {
    print('----------------------------------');
    print('Nome: $nome');
    print('Idade: $idade');
    if (casado) {
      print('Casado');
    } else {
      print('Solteiro');
    }
    print('Dinheiro: R${_dinheiro}');
  }
}

class ErroDinheiro implements Exception {
  String toString() {
    return 'Valor inválido!';
  }
}
