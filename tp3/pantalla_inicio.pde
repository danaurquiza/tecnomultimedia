void inicio() {

  if (pantalla == 0) {
    background(#B42828);

    //TEXTO CENTRAL


    textSize(50);
    fill(0);
    text("Arrastra el mouse\ny trata de no\ntocar las paredes \ndel laberinto", 25, 100);

    //primer boton
    fill(0);
    rect(30, 325, 150, 50);
    fill(255);
    textSize(40);
    text("Jugar", 70, 360);

    //segundo boton
    fill(0);
    rect(225, 325, 150, 50);
    fill(255);
    text( "Creditos", 250, 360);
  }
}
