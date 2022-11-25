Future<void> main() async {
  Duration duration = Duration(seconds: 1);
  //o skip faz a stream pular o valor de saída x vezes, a função da stream é
  //executada, mas a saída(retorno) não é exibida
  Stream<int> stream = Stream<int>.periodic(duration, soma).skip(3);

  await for (int valor in stream) {
    print(valor);
  }
}

int soma(int valor) {
  print("stream entrou na função $valor");
  return valor++;
}
