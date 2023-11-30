class Minijuego {

  constructor(aventuraEstado, imgCanasta, imgPlata, fondoMinijuego) {
    this.objCanasta= new Canasta(width/2, 550, this.imgCanasta);
    this.crearObjPlata();

    this.imgPlata=imgPlata;
    this.imgCanasta=imgCanasta;
    this.imgMinijuego = fondoMinijuego;
    this.contador=0;
    this.tiempoInicial=millis();
    this.tiempoActual = millis () - this.tiempoInicial;
    this.imgPlata=imgPlata;
  }


  crearObjPlata() { //metodo
    this.objPlata= [];


    for (let i = 0; i < 3; i++) {//es un arreglo de 3 Platas hecho objeto y le pasa el valor en parentesis a cada valor x separado
      this.objPlata[i] = new Plata (i*random(width), this.imgPlata);
    }
  }

  actualizar(distPlataCanasta) {


    for (let i = 0; i < 3; i++) {
      this.objPlata[i].actualizar();
    }

    let distColision = 100;
    for ( let i = 0; i < this.objPlata.length; i++ ) {  //recorro cada posicion de la lista
      let distPlataCanasta =
        dist ( this.objCanasta.posXC, this.objCanasta.posYC, this.objPlata[i].posXPlata, this.objPlata[i].posYPlata);

      if ( distPlataCanasta < distColision && !this.objPlata[i].colisiono ) {
        this.contador= this.contador+1;
        this.objPlata[i].colisiono=true;
      }

      this.tiempoActual = millis () - this.tiempoInicial;
    }
  }

  dibujar() {


    image(this.imgMinijuego[0], 0, 0, 600, 600);

    for (let i = 0; i < 3; i++) {
      this.objPlata[i].dibujar();
      this.objPlata[i].actualizar();
    }

    this.objCanasta.dibujar();

    push();
    fill(0);
    textSize(30);
    stroke(255);
    strokeWeight(5);
    textAlign(CENTER);
    text( "Billetes: "+ this.contador, 90, 30 );
    text( "Tiempo: "+ nf(floor(this.tiempoActual/1000, 0)), 500, 30 );
    pop();
  }

  reiniciarVariables() {

    this.objCanasta= new Canasta(width/2, 550, canasta);
    this.crearObjPlata();

    this.imgMinijuego = fondoMinijuego;
    this.contador=0;
    this.tiempoInicial=millis();
    this.tiempoActual = millis () - this.tiempoInicial;
  }


  teclaPresionada(keyCode) {
    this.objCanasta.teclaPresionada(keyCode);
  }
}//cierra
