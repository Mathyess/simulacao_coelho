void main() {
  int coelhos = 2;
  int meses = 12;
  int coelhosjovens= 2;
  for (int i = 1; i <= meses; i++) {
    coelhos *= 2;
    print('Mês $i: $coelhos coelhos');
  }
}
