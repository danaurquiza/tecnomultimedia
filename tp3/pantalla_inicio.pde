void inicio(){
  
  if (pantalla == 0) {
   background(#EA3E3E);
   
    //TEXTO CENTRAL
   
   
    textSize(45);
    fill(0);
    text("Arrastra el mouse\ny trata de no\ntocar las paredes \ndel laberinto", 25, 100);
  
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
