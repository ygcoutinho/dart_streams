Future<void> main() async {
  Duration duration = Duration(seconds: 1);
  //imprime quando a condição for falsa
  Stream<int> stream = Stream<int>.periodic(duration, soma).skipWhile((valorRetornoInt) {
    print(valorRetornoInt < 5);
    return valorRetornoInt < 5;
  });

  await for (int valor in stream) {
    print(valor);
  }
}

int soma(int valor) {
  print("stream entrou na função $valor");
  return valor++;
}
