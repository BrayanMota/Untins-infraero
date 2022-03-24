class Pessoa{
}

class Carro{
}

class CartaoCredito{
}

class Fila< T > {
  
  List<T> fila = [];
  
  void adiciona(T elemento){
  
    fila.add(elemento);
  }
  
  List<Carro> buscaCarros(){
    
    
    List<Carro> carros = [];
    
    for (var elemento in fila)
    {
       if (elemento is Carro){
         
         carros.add(elemento as Carro);
         
       }
    }
      return carros;
    }
  }
 

void main() {
  
  var fila = Fila<dynamic>();
  
  fila.adiciona(Pessoa());
  fila.adiciona(Carro());
  fila.adiciona(CartaoCredito());
  
}
