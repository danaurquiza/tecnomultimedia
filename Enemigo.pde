class Enemigo{
    PImage enemigo;
  int posX, posY, alto, ancho;
  
  Enemigo(String numerodeenemigo, int posX_, int posY_, int ancho_, int alto_){
    
    enemigo=loadImage(numerodeenemigo);
    posX=posX_;
    posY=posY_;
    ancho=ancho_;
    alto=alto_;
  }
  
  void dibujar(){
    image( enemigo, posX, posY, ancho, alto);
  }
}
