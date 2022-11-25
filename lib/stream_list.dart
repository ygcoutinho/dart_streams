Future<void> main() async {
  Duration duration = Duration(milliseconds: 500);
  //o take faz a stream executar um número x de vezes
  Stream<int> stream = Stream<int>.periodic(duration, soma).take(5);

  //toda a stream será executada e armazenada na lista, e ao final da execução
  //o print será executado
  List<int> data = await stream.toList();
  print(data);
}

int soma(int valor) {
  return valor++;
}
