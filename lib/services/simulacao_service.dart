import '../models/coelho.dart';

class SimulacaoService {
  final List<Coelho> _coelhos = [];
  
  void adicionarCoelho(Coelho coelho) {
    _coelhos.add(coelho);
    print('Coelho ${coelho.nome} adicionado à simulação!');
  }
  
  void removerCoelho(String nome) {
    _coelhos.removeWhere((coelho) => coelho.nome == nome);
    print('Coelho $nome removido da simulação!');
  }
  
  void listarCoelhos() {
    if (_coelhos.isEmpty) {
      print('Nenhum coelho na simulação.');
      return;
    }
    
    print('\n=== Coelhos na Simulação ===');
    for (int i = 0; i < _coelhos.length; i++) {
      print('${i + 1}. ${_coelhos[i]}');
    }
    print('============================\n');
  }
  
  void executarSimulacao() {
    print('Iniciando simulação...');
    
    for (final coelho in _coelhos) {
      coelho.apresentar();
      coelho.pular();
      coelho.comer();
      print('---');
    }
    
    print('Simulação concluída!');
  }
  
  int get quantidadeCoelhos => _coelhos.length;
  
  List<Coelho> get coelhos => List.unmodifiable(_coelhos);
}
