Future<void> main() async {
  Duration duration = Duration(milliseconds: 300);
  //o take faz a stream executar um número x de vezes
  Stream<int> stream = Stream<int>.periodic(duration, soma).take(5);

  stream.listen((numero) {
    print("Escutando o que chega na stream $numero");
  });
}

int soma(int valor) {
  print("callack $valor");
  return valor++;
}
