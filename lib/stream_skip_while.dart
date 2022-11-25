Future<void> main() async {
  Duration duration = Duration(seconds: 1);
  //enquanto a condição for verdadeira, o valor de saída da stream não será imprimido
  Stream<int> stream = Stream<int>.periodic(duration, soma).skipWhile((valorRetornoInt) => valorRetornoInt < 5);

  await for (int valor in stream) {
    print(valor);
  }
}

int soma(int valor) {
  print("stream entrou na função $valor");
  return valor++;
}
