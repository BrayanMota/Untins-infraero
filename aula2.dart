void main() {
  Label label = Label('Hello World', 2.5, 'Vermelha');

  label.campoLabel();
}

class Label {
  late String _texto;
  late double _tamanho;
  late String _cor;

  Label(String texto, double tamanho, String cor) {
    this._texto = texto;
    this._tamanho = tamanho;
    this._cor = cor;
  }

  get texto => _texto;
  set setTexto(String cor) => _texto;

  get tamanho => _tamanho;
  set setTamanho(String cor) => _tamanho;
  
  get cor => _cor;
  set setCor(String cor) => _cor;

  void campoLabel() {
    print('|${this.texto}|');
  }
}
