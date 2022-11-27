import 'dart:async';

Future<void> main() async {
  //criar uma instancia de streamcontroller (já pode ser criada com broadcast)
  StreamController streamController = StreamController<int>.broadcast();

  //criar o in(sink) e out(stream) da stream
  final StreamSink inStream = streamController.sink;
  final Stream outStream = streamController.stream;

  //dentro do out, fazer os filtros, etc para mostrar os dados recebidos
  //o out deve ter um listen implementado para poder ser executado
  outStream.where((numero) {
    print("Número recebido no out da stream: $numero");
    return numero % 2 == 0;
  }).listen((numeroFiltrado) => print("Número no out após o filtro where: $numeroFiltrado"));

  List<int> numeros = List.generate(25, (index) => index);
  for (int numero in numeros) {
    print("Enviando o valor $numero para a stream");
    inStream.add(numero);
  }

  //fechando a transmissão da stream
  streamController.close();
}
