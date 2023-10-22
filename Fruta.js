class Fruta {
  constructor(posX, posY) {
    this.posX = posX;
    this.posY = posY;
    this.miColor = color(0,255,0);

    this.colisiono=false;
  }
  
  dibujar(){
    if(this.vida){
      fill(this.miColor);
      ellipse(this.posX, this.posY, 30, 30);
    }
  }
    
  sumarPunto(){
    this.contador = +1;
  }
  
  haTocadoLaCanasta(canasta){
    if(dist(this.posX, this.posY, canasta.posX, canasta.posY) < 15){
      this.sumarPunto();
    }
  }
}
