class Personaje{
  PImage personaje;
  int posX, posY;
  int ancho, alto;
  
  Personaje(int _posX, int _posY, int _ancho, int _alto){
     personaje = loadImage("personaje.png");
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
   
  }
  
  void dibujar(){
    image(personaje, posX, posY, ancho, alto);

  }

void moverDerecha(){
     posX++;
  }
  
  void moverIzquierda(){
    posX--;
  }
  
  void moverArriba(){
    posY-- ;
  }
  
  void moverAbajo(){
    posY++ ;
  }
}
