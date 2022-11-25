Future<void> main() async {
  Duration duration = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(duration, soma);

  await for (int valor in stream) {
    print(valor);
  }
}

int soma(int valor) {
  return valor++;
}
