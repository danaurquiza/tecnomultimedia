class Plata {

  constructor( posX, imgP) {

    this.posXPlata= posX;
    this.posYPlata =int (random (-100, -50) ); //caen todas al mismo tiempo
    this.tam=90;
    this.vel=random(2, 3);
    this.colisiono = false;
    this.plata=imgP;
  }

  actualizar() {
    this.posYPlata = this.posYPlata + this.vel;
    //reciclar los obstaculos
    if ( this.posYPlata >= height+this.tam ) {
      // reinicio la posicion en y
      this.posYPlata = int (random (-100, -50) );
      this.vel=random(2, 3);
      moverPlata();
    }
  }

  dibujar() {
    push();
    imageMode(CENTER);
    image (this.plata, this.posXPlata, this.posYPlata, this.tam, this.tam);
    pop();
    this.moverPlata();
  }

  moverPlata() {

    if ( this.posYPlata > height ) {

      this.posYPlata = int (random (-100, -50) ); //tocan base y vuelven todas xq tienen misma y

      //le da una posX random a cada una de las X
      this.posXPlata = random(width);
      this.colisiono = false;
    }
  }

}
