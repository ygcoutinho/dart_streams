Future<void> main() async {
  Duration duration = Duration(milliseconds: 300);
  //praticamente a mesma função do skip
  Stream<int> stream = Stream<int>.periodic(duration, soma).take(5).where((valor) => valor == 3);

  stream.listen((numero) {
    print("Escutando o que chega na stream $numero");
  });
}

int soma(int valor) {
  print("callack $valor");
  return valor++;
}
