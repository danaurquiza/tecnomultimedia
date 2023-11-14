class Canasta {
  constructor(posX, posY, canasta) {
    this.posXC = posX; //width/2
    this.posYC = posY; //300
  }

  dibujar() {
    imageMode(CENTER)
    image (canasta, this.posXC, this.posYC, 200, 200);
  }

  teclaPresionada(keyCode) {
    if (keyCode == LEFT_ARROW) {
      this.moverIzquierda();
    } else if (keyCode == RIGHT_ARROW) {
      this.moverDerecha();
    }
  }

  moverDerecha() {
    this.posXC += 100;
  }

  moverIzquierda() {
    this.posXC -= 100;
  }


}
