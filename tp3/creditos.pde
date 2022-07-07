void creditos(){
if (pantalla == 2) {
  tiempo=frameCount;
  println(frameCount);
 background(255);
 fill(0);
  textSize(20);
  
  text("LABERINTO DEL TERROR",width/6,textoY);
  text("Realizado por: Dana Urquiza",width/6,textoY+30);
  text("Idea general sacada de Internet",width/14,textoY+90);
  text("Se desconoce el creador de este juego",width/14,textoY+110);
  text("Muchos lo conoceran de su infancia",width/14,textoY+210);
  text("o de los principios de Youtube",width/14,textoY+230);
textoY=textoY-1;

if (tiempo>tiempo%800){
pantalla=0;
}
}

  
}
