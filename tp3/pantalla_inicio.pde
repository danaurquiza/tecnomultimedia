void inicio(){
  
  if (pantalla == 0) {
   background(255);
   
    //TEXTO CENTRAL
   //textFont(font);
    textSize(45);
    fill(0);
    text("Trata de no\ntocar las paredes \ndel laberinto", 50, 100);
  
   //primer boton
    fill(255);
    rect(30, 325, 150, 50);
    fill(0);
   textSize(30);
    text("Jugar", 70, 360);
   
   //segundo boton
    fill(255);
    rect(225, 325, 150, 50);
    fill(0);
    text( "Creditos", 250,360);
  } 
}
