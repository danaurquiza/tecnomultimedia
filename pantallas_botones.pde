void mousePressed() {
  //PANTALLA0
   if (pantalla == 0) {
//rect(200, 580, 400, 90);

     if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 1;
    }
    if (mouseX<250 && mouseX >25 && mouseY <70 && mouseY >0) {

      pantalla = 20;
  }
   }
  //PANTALLA 1
  
  //BOTONNNNNNN
  if (pantalla == 1) {

    if (mouseX > 550  && mouseX <750 && mouseY >600 && mouseY < 650) {

      pantalla = 3;
    }
    if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 2;
    }
  } 
 

  //PANTALLA2
  //boton izq   

  else if (pantalla == 2) {
//boton
    if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 4;
    }
    //boton derech
    if (mouseX>550 && mouseX < 750 && mouseY > 600 && mouseY < 650) {

      pantalla = 3;
    }
  } 


  //PANTALLA3
  //boton izq 
  else if (pantalla == 3) {

    if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 8;
    }

    //boton derecha
    if (mouseX>550 && mouseX < 750 && mouseY > 600 && mouseY < 650) {

      pantalla = 9;
    }
  } 

  //PANTALLA 4

  //boton izq
  else if (pantalla == 4) {

    if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 5;
    }
  
  //boton derecho
    if (mouseX>500 && mouseX < 750 && mouseY > 600 && mouseY < 650) {

      pantalla = 3;
    }
  }

  //PANTALLA 5

  //boton izq
  else if (pantalla == 5) {

    if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 6;
    }
    
   //boton derecho
    if (mouseX>500 && mouseX < 750 && mouseY > 600 && mouseY < 650) {

      pantalla = 17;
    }
  }

  //PANTALLA 6

  //boton izq
  else if (pantalla == 6) {

     if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 7;
    }
    //boton derecho
    if (mouseX>500 && mouseX < 750 && mouseY > 600 && mouseY < 650) {

      pantalla = 19;
    }
  }
  //PANTALLA 7
  else if (pantalla == 7) {

   if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 0;
    }
  }
  //PANTALLA 8
//boton izq
  else if (pantalla == 8) {

     if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 10;
    }
    //boton derecho
    if (mouseX>500 && mouseX < 750 && mouseY > 600 && mouseY < 650) {

      pantalla = 11;
    }
  }
  //PANTALLA 9
//boton izq
  else if (pantalla == 9) {
//rect(200, 580, 400, 90);

     if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 10;
    }
    
  }
  //PANTALLA 10
//boton izq
  else if (pantalla == 10) {

     if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 12;
    }
    //boton derecho
    if (mouseX>500 && mouseX < 750 && mouseY > 600 && mouseY < 650) {

      pantalla = 13;
    }
  }
  //PANTALLA 11
//boton izq
  else if (pantalla == 11) {
if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 13;
    }
    //boton derecho
    if (mouseX>500 && mouseX < 750 && mouseY > 600 && mouseY < 650) {

      pantalla = 16;
    }
  }
  //PANTALLA 12
//boton izq
  else if (pantalla == 12) {
//rect(200, 580, 400, 90);

     if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 1;
    }
    
  }
   //PANTALLA 13
//boton izq
  else if (pantalla == 13) {
if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 14;
    }
    //boton derecho
    if (mouseX>500 && mouseX < 750 && mouseY > 600 && mouseY < 830) {

      pantalla = 15;
    }
  }
    //PANTALLA 14
//boton izq
  else if (pantalla == 14) {
//rect(200, 580, 400, 90);

      if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 2;
    }
    
  }
     //PANTALLA 15
//boton izq
  else if (pantalla == 15) {
//rect(200, 580, 400, 90);

      if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 2;
    }
    
  }
  //PANTALLA 16
//boton izq
  else if (pantalla == 16) {
//rect(200, 580, 400, 90);

      if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 0;
    }
    
  }
   //PANTALLA 17
//boton izq
  else if (pantalla == 17) {
if (mouseX>50 && mouseX < 250 && mouseY > 600 && mouseY < 650) {

      pantalla = 18;
    }
    //boton derecho
    if (mouseX>500 && mouseX < 750 && mouseY > 600 && mouseY < 650) {

      pantalla = 16;
    }
  }
  //PANTALLA 18
//boton izq
  else if (pantalla == 18) {
//rect(200, 580, 400, 90);

      if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 0;
    }
    
  }
  //PANTALLA 19
//boton izq
  else if (pantalla == 19) {
//rect(200, 580, 400, 90);

      if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 0;
    }
    
  }
  else if (pantalla == 20) {
//rect(200, 580, 400, 90);

      if (mouseX>200 && mouseX < 600 && mouseY > 580 && mouseY < 650) {

      pantalla = 0;
    }
    
  }
}
