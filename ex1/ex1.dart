import 'dart:math';
/* Faça uma função que calcule a raiz de um número. Por padrão, a raiz será quadrada. 
Caso um segundo argumento seja passado, a raiz será do grau do argumento passado. 
Dentro do método, pode usar ‘math’ normalmente.

Ex: 
raiz(4) = 2
raiz(8, 3) = 2

Faça verificações para caso o número seja negativo e para caso o grau seja 0, 1 ou negativo. 
Lançando sua própria exceção. Lembre-se de tratar a exceção com try catch.
 */

void main() {
  try {
    raiz(9);
    raiz(8, -3);
  } catch (e) {
    print(e);
  }
}

void raiz(double radicando, [double? indice]) {
  if (radicando < 0) {
    throw ErroRadicando();
  } else {
    if (indice != null) {
      if (indice <= 1) {
        throw ErroIndice();
      } else {
        print(pow(radicando, 1 / indice));
      }
    } else {
      print(sqrt(radicando));
    }
  }
}

class ErroRadicando implements Exception {
  String toString() {
    return 'O radicando a ser calculado não pode ser negativo';
  }
}

class ErroIndice implements Exception {
  String toString() {
    return 'O indice informado não é válida.';
  }
}
