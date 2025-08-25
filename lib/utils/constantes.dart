// Constantes do projeto de simulação de coelhos

class Constantes {
  // Cores disponíveis para coelhos
  static const List<String> coresDisponiveis = [
    'branco',
    'preto',
    'marrom',
    'cinza',
    'bege',
  ];
  
  // Idade máxima de um coelho
  static const int idadeMaxima = 12;
  
  // Peso mínimo e máximo de um coelho (em kg)
  static const double pesoMinimo = 0.5;
  static const double pesoMaximo = 5.0;
  
  // Mensagens do sistema
  static const String mensagemBemVindo = 'Bem-vindo ao Simulador de Coelhos!';
  static const String mensagemErro = 'Erro na simulação';
  static const String mensagemSucesso = 'Operação realizada com sucesso!';
  
  // Configurações da simulação
  static const int tempoSimulacao = 5000; // em milissegundos
  static const int maxCoelhos = 100;
}
