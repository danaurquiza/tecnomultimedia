class Botones{
  
  constructor(){
  }
  
  dibujar(){ 
  }
  
  boton(posX,posY,r) { //METODO PARA DIBUJAR LOS BOTONES
  
    if (this.estoyDentrodeBotonCircular(posX,posY,r) ) {
      fill(86,31,108);
    } else {
      fill(216,118,255); 
    }
    
    noStroke();
    circle(posX, posY, 100);
    this.textoBotones();
  }
  
  textoBotones() { //COMO ES EL TEXTO DE LOS BOTONES
    fill(0);
    textSize(17);
    textAlign(CENTER);

  }
  
estoyDentrodeBotonCircular( posX, posY, r ) {
    return dist(mouseX, mouseY, posX, posY) <= r;
  }
  
 
}
