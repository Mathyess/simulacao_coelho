import 'package:test/test.dart';
import 'package:simulacao_coelho/models/coelho.dart';
import 'package:simulacao_coelho/services/simulacao_service.dart';
import 'package:simulacao_coelho/utils/constantes.dart';

void main() {
  group('Testes do Coelho', () {
    test('deve criar um coelho com nome e idade', () {
      final coelho = Coelho(nome: 'Teste', idade: 1);
      
      expect(coelho.nome, equals('Teste'));
      expect(coelho.idade, equals(1));
      expect(coelho.cor, equals('branco')); // valor padrão
      expect(coelho.peso, equals(1.5)); // valor padrão
    });
    
    test('deve criar um coelho com todos os parâmetros', () {
      final coelho = Coelho(
        nome: 'Bugs',
        idade: 2,
        cor: 'cinza',
        peso: 2.1,
      );
      
      expect(coelho.nome, equals('Bugs'));
      expect(coelho.idade, equals(2));
      expect(coelho.cor, equals('cinza'));
      expect(coelho.peso, equals(2.1));
    });
    
    test('deve apresentar o coelho corretamente', () {
      final coelho = Coelho(nome: 'Bugs', idade: 2);
      
      // Este teste verifica se o método não lança exceção
      expect(() => coelho.apresentar(), returnsNormally);
    });
    
    test('deve pular corretamente', () {
      final coelho = Coelho(nome: 'Bugs', idade: 2);
      
      expect(() => coelho.pular(), returnsNormally);
    });
    
    test('deve comer corretamente', () {
      final coelho = Coelho(nome: 'Bugs', idade: 2);
      
      expect(() => coelho.comer(), returnsNormally);
    });
  });
  
  group('Testes do SimulacaoService', () {
    late SimulacaoService simulacao;
    
    setUp(() {
      simulacao = SimulacaoService();
    });
    
    test('deve começar com 0 coelhos', () {
      expect(simulacao.quantidadeCoelhos, equals(0));
    });
    
    test('deve adicionar coelho corretamente', () {
      final coelho = Coelho(nome: 'Teste', idade: 1);
      simulacao.adicionarCoelho(coelho);
      
      expect(simulacao.quantidadeCoelhos, equals(1));
    });
    
    test('deve remover coelho corretamente', () {
      final coelho = Coelho(nome: 'Teste', idade: 1);
      simulacao.adicionarCoelho(coelho);
      simulacao.removerCoelho('Teste');
      
      expect(simulacao.quantidadeCoelhos, equals(0));
    });
    
    test('deve executar simulação sem erros', () {
      final coelho = Coelho(nome: 'Teste', idade: 1);
      simulacao.adicionarCoelho(coelho);
      
      expect(() => simulacao.executarSimulacao(), returnsNormally);
    });
  });
  
  group('Testes das Constantes', () {
    test('deve ter cores disponíveis', () {
      expect(Constantes.coresDisponiveis, isNotEmpty);
      expect(Constantes.coresDisponiveis, contains('branco'));
    });
    
    test('deve ter idade máxima válida', () {
      expect(Constantes.idadeMaxima, greaterThan(0));
    });
    
    test('deve ter pesos válidos', () {
      expect(Constantes.pesoMinimo, lessThan(Constantes.pesoMaximo));
    });
  });
}
