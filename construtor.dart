void main() {}

class Cliente extends Pessoa {
  double valorCarrinho = 0.0;

  // Como usar o super da classe filha
  Cliente(double valor) : super('', 0) {
    this.valorCarrinho = valorCarrinho;
  }
}

class Pessoa {
  String nome = '';
  int idade = 0;

  Pessoa(this.nome, this.idade);
}
