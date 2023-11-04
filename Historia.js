class Historia{

constructor(){
  this.pantalla= "menu";
//this.crearMinijuego();
//this.arregloImagenes= [];

}

dibujar(imgArray,textoArray){

  if(this.pantalla=="menu"){
//this.Minijuego.dibujar();
image(imgArray[8],0,0,600,600);

fill(200,0,200);
text(textoArray[1],200,200);
//this.estoyDentrodeBotonCircular(12);
  }

}

configuracionDeTexto(){

}

botones(){

}
  
estoyDentrodeBotonCircular(tam){
//textSize(tam);
}

estoyDentrodeBotonCuadrado(){

}

crearMinijuego(){
//this.Minijuego = new Minijuego()

}


}
