class Fruta {
  constructor(posX, posY) {
    this.cantidadFrutas = cantidadFrutas;
    this.posX = posX;
    this.posY = posY;
this.colorFruta=
    this.contador=0;
  }

  dibujar() {
    if (this.vida) {
      fill(this.miColor);
      ellipse(this.posX, this.posY, 30, 30);
    }
  }

  sumarPunto() {
    this.contador = +1;
  }

  tocoLaCanasta(canasta) {
    if (dist(this.posX, this.posY, canasta.posX, canasta.posY) < 15) {
      this.sumarPunto();
    }
  }
}
