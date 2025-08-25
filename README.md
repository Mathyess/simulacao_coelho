# Simulação de Coelhos

Um projeto em Dart para simular o comportamento de coelhos.

## Estrutura do Projeto

```
simulacao_coelho/
├── lib/
│   ├── main.dart              # Ponto de entrada da aplicação
│   ├── models/
│   │   └── coelho.dart        # Modelo da classe Coelho
│   ├── services/
│   │   └── simulacao_service.dart  # Serviço de simulação
│   └── utils/
│       └── constantes.dart    # Constantes do projeto
├── test/
│   └── main_test.dart         # Testes unitários
├── pubspec.yaml               # Configurações e dependências
├── analysis_options.yaml      # Configurações do analisador
└── README.md                  # Este arquivo
```

## Como Executar

1. **Instalar o Dart SDK** (se ainda não tiver):
   - Visite: https://dart.dev/get-dart

2. **Instalar dependências**:
   ```bash
   dart pub get
   ```

3. **Executar o projeto**:
   ```bash
   dart run lib/main.dart
   ```

4. **Executar testes**:
   ```bash
   dart test
   ```

## Funcionalidades

- ✅ Criação de coelhos com diferentes características
- ✅ Simulação de comportamentos (pular, comer)
- ✅ Gerenciamento de múltiplos coelhos
- ✅ Testes unitários
- ✅ Estrutura organizada e escalável

## Próximos Passos

- [ ] Adicionar interface gráfica
- [ ] Implementar reprodução de coelhos
- [ ] Adicionar sistema de alimentação
- [ ] Criar ambiente virtual para simulação
- [ ] Adicionar estatísticas da simulação

## Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.