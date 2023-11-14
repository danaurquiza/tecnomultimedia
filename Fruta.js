class Fruta {

  constructor(posX, posY,canasta) {
    
    //posX de cada una de las frutas, todas distintas
    this.posXF1 = posX;
    this.posXF2 = posX;
    this.posXF3 = posX;
    this.posY =posY; //caen todas al mismo tiempo
    this.canasta=canasta;
  }

  dibujar() {
    imageMode(CENTER);
    image (fruta [0], this.posXF1, this.posY, 50, 50);
    image (fruta [1], this.posXF2, this.posY, 50, 50);
    image (fruta [2], this.posXF3, this.posY, 50, 50);
    this.moverFruta();
  }

  moverFruta() {

    this.posY+=5; //cae fruta

    if ( this.posY > height ) {

      this.posY = 0; //tocan base y vuelven todas xq tienen misma y

//le da una posX random a cada una de las X
      this.posXF1 = random(width);
      this.posXF2 = random(width);
      this.posXF3 = random(width);
    }
  }
  
  tocoLaCanasta(canasta) {
    if ( posX[i] > this.canasta.posXC && frutaX[i] < this.canasta.posXC+200 && frutaY > 450) {
      this.colision();
    }
  }

  colision() {
    contador++;
    this.fruta.posY+=height;
  }
  
}
