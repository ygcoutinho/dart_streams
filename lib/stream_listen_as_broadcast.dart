Future<void> main() async {
  Duration duration = Duration(milliseconds: 300);
  //Com o asBroadcastStream, é possível ter mais de um ouvinte assinando para ouvir
  //as atualizações da stream
  Stream<int> stream = Stream<int>.periodic(duration, soma).asBroadcastStream();

  stream.listen((numero) {
    print("Ouvinte 1 $numero");
  });

  stream.listen((numero) {
    print("Ouvinte 2 $numero");
  });
}

int soma(int valor) {
  print("callack $valor");
  return valor++;
}
