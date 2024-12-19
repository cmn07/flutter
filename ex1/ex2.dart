/* 
Gere uma lista de 20 números aleatórios entre 0 e 100.
A partir dessa lista, gere uma nova lista com os números pares.
A partir dessa lista, gere uma nova lista com os números ímpares.
A partir dessa lista, gere uma nova lista com os números primos.
A partir dessa lista, gere uma nova lista com a raiz quadrada de cada número.

Apresente o resultado com precisão de duas casas.
 */

import 'dart:math';

void main() {
  // Gerar lista de 20 números aleatórios entre 0 e 100
  List<int> numeros = List.generate(20, (_) => Random().nextInt(101));

  // Filtrar números pares
  List<int> numerosPares = numeros.where((numero) => numero % 2 == 0).toList();

  // Filtrar números ímpares
  List<int> numerosImpares =
      numeros.where((numero) => numero % 2 != 0).toList();

  // Filtrar números primos
  List<int> numerosPrimos = numeros.where((numero) => ehPrimo(numero)).toList();

  // Gerar lista com a raiz quadrada de cada número
  List<String> raizesQuadradas =
      numeros.map((numero) => sqrt(numero).toStringAsFixed(2)).toList();

  // Apresentar resultados
  print("Lista de números aleatórios: $numeros");
  print("Lista de números pares: $numerosPares");
  print("Lista de números ímpares: $numerosImpares");
  print("Lista de números primos: $numerosPrimos");
  print("Lista de raízes quadradas: $raizesQuadradas");
}

// Função para verificar se um número é primo
bool ehPrimo(int numero) {
  if (numero < 2) return false;
  for (int i = 2; i <= sqrt(numero).toInt(); i++) {
    if (numero % i == 0) return false;
  }
  return true;
}
