class Pared{
    PImage pared;
  int posX, posY, alto, ancho;
  
  Pared(String numerodepared, int posX_, int posY_, int ancho_, int alto_){
    
    pared=loadImage(numerodepared);
    posX=posX_;
    posY=posY_;
    ancho=ancho_;
    alto=alto_;
  }
  
  void dibujar(){
    image( pared, posX, posY, alto, ancho);
  }
}
