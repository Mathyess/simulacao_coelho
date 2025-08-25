class Coelho {
  final String nome;
  final int idade;
  final String cor;
  final double peso;
  
  Coelho({
    required this.nome,
    required this.idade,
    this.cor = 'branco',
    this.peso = 1.5,
  });
  
  void apresentar() {
    print('Olá! Sou $nome, um coelho $cor de $idade anos, pesando ${peso}kg.');
  }
  
  void pular() {
    print('$nome está pulando! 🐰');
  }
  
  void comer() {
    print('$nome está comendo cenoura! 🥕');
  }
  
  @override
  String toString() {
    return 'Coelho(nome: $nome, idade: $idade, cor: $cor, peso: $peso)';
  }
}
