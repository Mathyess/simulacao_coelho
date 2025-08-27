void main() {
  int jovens = 1;
  int adultos = 1;
  int meses = 12;

  for (int mes = 1; mes <= meses; mes++) {
    int novosJovens = adultos * 2;
    adultos += jovens;
    jovens = novosJovens;
    int total = jovens + adultos;
    print(
      'Fim do Mês $mes: População de coelhos: $total, Jovens $jovens, Adultos $adultos',
    );
  }

  int totalCoelhos = jovens + adultos;
  int mesPredacao = 1;
  while (totalCoelhos > 0) {
    totalCoelhos = (totalCoelhos * 0.75).floor();
    print(
      'Após predação - Mês $mesPredacao: População de coelhos: $totalCoelhos',
    );
    mesPredacao++;
    if (totalCoelhos == 0) break;
  }
}
