class Canasta {
  constructor(posX, posY) {
    this.posX = posX;
    this.posY = posY;
    this.colorCanasta=color(0, 200, 0);
    this.fruta = new Fruta();
    this.cant=3;
  }

  dibujar() {
    fill(this.colorJ);
    rect(this.posX, this.posY, 50, 50);
  }

  teclaPresionada(keyCode) {
    if (keyCode == LEFT_ARROW) {
      this.moverIzquierda();
    } else if (keyCode == RIGHT_ARROW) {
      this.moverDerecha();
    }
  }

  moverDerecha() {
    this.posX += 10;
  }

  moverIzquierda() {
    this.posX -= 10;
  }

  colision() {
    contador++;
    this.fruta.posY+=height;
  }

  tocoLaFruta(fruta) {
    if (dist(this.fruta.posX, this.fruta.posY, this.posX, this.posY) < 15) {
      this.colision();
    }
  }
}
