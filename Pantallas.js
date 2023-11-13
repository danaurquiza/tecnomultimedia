class Pantallas {
  constructor(){
    
    
  }
  
  dibujar(){
       if (this.estado=="menu") {
      //this.Minijuego.dibujar();
      
      image(this.imgArray[8], -200, 0, 800, 600);

      textSize(32);
      textAlign(CENTER);
      fill(0);
      text("La Ratita Presumida", 300, 100);
      //botonCircular(posX, posY, r, i, xT, yT)
      this.botones.botonCircular(300, 500, 75, 255,1);
      text("Creditos", 300, 505);
      this.botones.botonCuadrado(350, 350+30, 284, 284+65, 30, 65);     
      text("Inicio", 370, 272);
    } 
    
    //CREDITOS
    else if (this.estado=="creditos") {
      image(this.imgArray[16], 0, 0, 600, 600);
      text("HISTORIA ORIGINAL: ANONIMO\nVARIACIONES EN LA HISTORIA: DANA URQUIZA\nIMAGENES EXTRAIDAS DE YOUTUBE\nMODIFICACION DE IMAGENES : DANA URQUIZA\n EN PAINT 8)", 90, posY);
      
         //mov del texto abajo arriba
    posY=posY+1;
    if (posY>700) {
      posY = 0;
    }
    }

    //EMPIEZA HISTORIA
    else if (this.estado=="P01") {
      image(this.imgArray[9], 0, 0, 600, 600);
      this.cuadradoDeTexto(0, 405, 230, 190, 0, 15, 430, 200, 200);
      this.botones.botonCircular(520, 530, 75, 255, 1);
      
    } 
    
    else if (this.estado=="P02") {
      image(this.imgArray[17], 0, 0, 600, 600);
      this.cuadradoDeTexto( 355, 455, 230, 100, 1,  360, 480, 220, 200);
      this.botones.botonCircular(145, 505, 90, 255, 1);

    } 
    
    else if (this.estado=="P03") {
       image(this.imgArray[10], 0, 0, 600, 600);
       this.botones.botonCircular(160, 135, 190, (232, 223, 37, 150), 1);
       this.cuadradoDeTexto( 355, 455, 230, 100, 1,  360, 480, 220, 200);
       
       this.botones.botonCircular(320, 180, 140, (232, 223, 37, 150), 1);
       this.botones.botonCircular(155, 320, 145, (232, 223, 37, 150), 1);
       
    }

    //COMPRA LOS CARAMELOS
    else if (this.estado=="P04") {
      image(this.imgArray[0], 0, 0, 600, 600);
      
      this.botones.botonCircular(500, 80, 120, 255, 1); 
      this.botones.botonCircular(100, 500, 120, 255, 1);
    }

    //COMPRA EL MOÑO
    else if (this.estado=="P05") {
      image(this.imgArray[18], 0, 0, 600, 600);
    }

    //REGALA LA MONEDA
    else if (this.estado=="P06") {
      image(this.imgArray[1], 0, 0, 600, 600);
      this.cuadradoDeTexto(230, 210, 230, 200, 14, 360, 480, 220, 200);
      this.botones.botonCircular(100, 70, 100, 255, 1);
    }

    //humilde xq le sacan los diente
    else if (this.estado=="P07") {
    }

    //CAE INTERNADA
    else if (this.estado=="P08") {
    }

    //SE MUERE
    else if (this.estado=="P09") {
      image(imgArray[5], 0, 0, 600, 600);
    }

    //sigue la historia del moño LLEGA EL RATON
    else if (this.estado=="P10") {
    }

    //LLEGA GATO
    else if (this.estado=="P11") {
    }

    //GATO ATACA
    else if (this.estado=="P12") {
    }

    //RATON ESCUCHA GRITOS
    else if (this.estado=="P13") {
    }

    //RATON LA RESCATA
    else if (this.estado=="P14") {
    }

    //RATITA SE CASA FIN
    else if (this.estado=="P15") {
      image(imgArray[11], 0, 0, 600, 600);
    }

    //RATITA SALE EN LAS NOTICIAS
    else if (this.estado=="P16") {
      image(imgArray[19], 0, 0, 600, 600);
      
    }

    //RATITA DESCUBRE Q SON RE TURBIOS
    else if (this.estado=="P17") {
    }

    //RATITA DESCUBRE Q SON RE HUMILDES
    else if (this.estado=="P18") {
    }

    //RATITA REFLECCIONA
    else if (this.estado=="P19") {
    }

    //RATITA SE DEPRIME
    else if (this.estado=="P20") {
    }

    //RATITA SIGUE ADELANTE
    else if (this.estado=="P21") {
    } 
    
  }
  
}
