class Canasta {
  constructor(posX, posY, canasta) {
    this.posXC = posX; //width/2
    this.posYC = posY; //300
    this.contador=0;
    this.colisiono = false;
  }

  dibujar() {
    imageMode(CENTER)
      image (canasta, this.posXC, this.posYC, 200, 200);
  }

  //puntosSumando() {
  //  return this.contador;
  //}
  teclaPresionada(keyCode) {
    if (keyCode == LEFT_ARROW && this.posXC > 100) {
      this.moverIzquierda();
    } else if (keyCode == RIGHT_ARROW && this.posXC < width-100) {
      this.moverDerecha();
    }
  }

  moverDerecha() {
    this.posXC += 50;
  }

  moverIzquierda() {
    this.posXC -= 50;
  }

  //tocoLaCanasta(arrayFrutas) {
  //  let distColision = 20;
  //  for ( let i = 0; i < arrayFrutas.length; i++ ) {  //recorro cada posicion de la lista
  //    let distFrutaCanasta = dist ( this.posXC, this.posYC, arrayFrutas[i].posXfruta, arrayFrutas[i].posYfruta);
  //                               //frutaX[i]>canastaX&&frutaX[i]<canastaX+200&&frutaY>450
  //                               //if ( this.arrayFrutas.posXfruta>this.posXC && arrayFrutas[i].posXfruta<this.posXC+200 && arrayFrutas[i].posYfruta>450){
      
  //    if ( distFrutaCanasta < distColision ) {
  //      this.contador = this.contador + 1;
  //      this.colisiono =  true;
  //      //frutaY+=height;
  //    }
  //    if (this.colisiono== true && distFrutaCanasta > distColision ) {
  //      this.colisiono = false;
       
  //    }
  //    //if ( distFrutaCanasta > distColision && this.colisiono == true) {
  //    //  this.colisiono = false;
        
  //    //}
  //  }
  //}
}
