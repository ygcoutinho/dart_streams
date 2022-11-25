Future<void> main() async {
  Duration duration = Duration(seconds: 1);
  //o takeWhile adiciona condição para a stream ser executada
  Stream<int> stream = Stream<int>.periodic(duration, soma).takeWhile(((valorRetornoInt) => valorRetornoInt < 3));

  await for (int valor in stream) {
    print(valor);
  }
}

int soma(int valor) {
  return valor++;
}
