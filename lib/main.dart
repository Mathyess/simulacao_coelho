import 'models/coelho.dart';
import 'services/simulacao_service.dart';
import 'utils/constantes.dart';

void main() {
  print(Constantes.mensagemBemVindo);
  
  // Criando o serviço de simulação
  final simulacao = SimulacaoService();
  
  // Criando alguns coelhos de exemplo
  final coelho1 = Coelho(nome: 'Bugs', idade: 2, cor: 'cinza', peso: 2.1);
  final coelho2 = Coelho(nome: 'Lola', idade: 1, cor: 'branco', peso: 1.8);
  final coelho3 = Coelho(nome: 'Thumper', idade: 3, cor: 'marrom', peso: 2.5);
  
  // Adicionando coelhos à simulação
  simulacao.adicionarCoelho(coelho1);
  simulacao.adicionarCoelho(coelho2);
  simulacao.adicionarCoelho(coelho3);
  
  // Listando os coelhos
  simulacao.listarCoelhos();
  
  // Executando a simulação
  simulacao.executarSimulacao();
  
  print('\nTotal de coelhos na simulação: ${simulacao.quantidadeCoelhos}');
}
