Future<void> main() async {
  Duration duration = Duration(seconds: 1);
  //o take faz a stream executar um número x de vezes
  Stream<int> stream = Stream<int>.periodic(duration, soma).take(5);

  await for (int valor in stream) {
    print(valor);
  }
}

int soma(int valor) {
  return valor++;
}
