class Juego {

  constructor() {

    this.estado = "instrucciones"; //logica de estados
    this.tiempoInicial = millis();
    this.tiempoActual = millis () - this.tiempoInicial;
    this.crearCanasta();
    this.crearFrutas();
  }

  dibujar() {
    if (this.estado == "instrucciones") { //------- MENU
      textSize (35);
      fill(255);
      text( "perdido en el bosque", 150, 100);
      textSize(20);
      text( "Instrucciones", 150, 140);
      text( "Con las flechas manejá la canasta\n Tratá de agarrar 20 manzanas\nantes de que se termine el tiempo", 30, 200);
      circle (width/2, 400, 80);
      fill(0);
      textSize(15);
      text( "Jugar", 280, 400);
    } else if (this.estado == "jugando") { //------- JUEGO
      // escenario
      background(255);
      fill (0);
      line (200, 0, 200, 600); //carriles
      line (400, 0, 400, 600); //carriles
      textSize(10);
      text ("vidas: "+ this.vidas, 10, 10 );
      text ("tiempo: "+ this.tiempoActual/1000, 10, 25 );

      // jugador
      this.Canasta.dibujar();
      this.Canasta.getVidas();
      //this.Jack.actualizar();

      //policias
      for (let i = 0; i < 3; i++) {
        this.Frutas[i].dibujar();
        this.Frutas[i].actualizar();
      }

      if ( this.tiempoActual >= 10*1000) { //pierde a los 10 segundos. Modificar
        this.estado = "perdiste";
      }
    } else if ( this.estado == "perdiste" ) { // ------ PERDISTE
      background (255, 0, 0);
      fill (0);
      textSize(50);
      text( "Te faltaron manzanas y moriste\n de hambre :/", 100, 200 );
      circle (width/2+100, 500, 80);
      textSize(20);
      fill(255);
      text( "Reiniciar", width/2+70, 450 );
    } else if ( this.estado == "ganaste" ) { // ------- GANASTE
      background (0, 255, 0);
      fill (0);
      text( "Lograste juntar todas las manzanas\n para no morir de hambre YAY", width/2, 200 );
      circle (width/2-100, 300, 80);
    }
  }


iniciar() {
}

crearFrutas() {
  this.Frutas = [];
  for (let i = 0; i < 3; i++) {
    this.Frutas[i] = new Frutas(i*200, 100);
  }
}

crearCanasta() {
  this.canasta = new Canasta(width/2, 300);
}

tiempo (mousePressed) {
  if ( this.estado == "instrucciones" && mousePressed ) { //----- MENU
    if ( dist(width/2, 400, mouseX, mouseY) < 40 ) { //boton jugar
      this.estado = "jugando";
      this.tiempoInicial = millis();
    }
  }
}

botones (mousePressed) {
  if ( this.estado == "perdiste" ) {
    if ( dist ( width/2+100, 500, mouseX, mouseY ) < 40 ) {
      this.estado = "jugando";
      this.tiempoInicial = millis ();
    }
  }
}

teclaPresionada(keyCode) {
  this.canasta.teclaPresionada(keyCode);
}
}
