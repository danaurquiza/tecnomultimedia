class Pantallas {
  constructor(fondo, texto, titulo, regular){
    this.botones = new Botones();
    this.estado = "menu"; 
    this.textoArray = texto;
    this.imgArray = fondo;
  }
  
  dibujar(){
       if (this.estado=="menu") {
      //this.Minijuego.dibujar();
      
      image(this.imgArray[8], -200, 0, 800, 600);
      textFont(titulo);
      textSize(40);
      textAlign(CENTER);
      fill(0);
      text("La Ratita Presumida", 300, 100);
      
      textFont(regular);
      this.botones.botonCircular(300, 500, 75, 255, 180);
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

    //EMPIEZA HISTORIA, ETSTA BARRIENDO
    else if (this.estado=="P01") {
      image(this.imgArray[9], 0, 0, 600, 600);
      this.cuadradoDeTexto(15, 385, 230, 190, 0, 35, 410, 200, 200);
      this.botones.botonCircular(520, 530, 75, 255, 180);
      
    } 
    
    //ENCUENTRTA MONEDA
    else if (this.estado=="P02") {
      image(this.imgArray[17], 0, 0, 600, 600);
      this.cuadradoDeTexto( 350, 485, 230, 70, 1,  355, 515, 220, 200);
      this.botones.botonCircular(145, 505, 90, 255, 180);

    } 
    
    //QUE PUEDE HACER CON LA MONEDA? COMPRAR CARAMELOS, COMPRAR MOÑO O REGALAR MONEDA
    else if (this.estado=="P03") {
       image(this.imgArray[10], 0, 0, 600, 600);
       this.botones.botonCircular(160, 135, 190, 255, 180);
       this.botones.botonCircular(320, 180, 140, 255, 180);
       this.botones.botonCircular(155, 320, 145, 255, 180);
       
    }

    //SI COMPRO LOS CARAMELOS - LE DUELE LA BOCA
    else if (this.estado=="P04") {
      image(this.imgArray[0], 0, 0, 600, 600);
      this.textoFlotando(2, 100, 265, 220, 200 );
      this.botones.botonCircular(500, 100, 120, 255, 180); 
      this.botones.botonCircular(100, 500, 120, 255, 180);
    }

    //SI COMPR0 EL MOÑO
    else if (this.estado=="P05") {
      image(this.imgArray[18], 0, 0, 600, 600);
      this.textoFlotando(6, 117, 250, 230, 200 );      
      this.botones.botonCuadrado(316, 316+60, 490, 490+40 , 60, 40);  
      text("Seguir", 346, 515);
    }

    //SI REGALA LA MONEDA
    else if (this.estado=="P06") {
      image(this.imgArray[1], 0, 0, 600, 600);
      this.botones.botonCircular(100, 70, 100, 255, 180);
      this.textoFlotando(13, 230, 250, 250, 200);
    }

    //NO VA AL DENTISTA-SE PONE MAL SU BOCA
    else if (this.estado=="P07") {
      image(this.imgArray[4], 0, 0, 600, 600);
      this.textoFlotando(4, 290, 190, 220, 200 );
      this.botones.botonCircular(100, 100, 120, 255, 180); 
      this.botones.botonCircular(500, 500, 120, 255, 180);
    }

   //VA AL DENTISTA-LE SACAN LAS MUELAS
    else if (this.estado=="P08") {
      image(this.imgArray[3], 0, 0, 600, 600);
      this.cuadradoDeTexto( 15, 410, 240, 160, 3, 25, 435, 220, 200);
      this.botones.botonCuadrado(430, 430+145, 520, 520+50, 145, 50);
      text("Volver a Menu", 500, 550);
      textFont(titulo);
      textSize(20);
      text( "Fin", 510, 335);
    }

    //SE MUERE
    else if (this.estado=="P09") {
      image(this.imgArray[5], 0, 0, 600, 600);   
      this.cuadradoDeTexto(180, 20, 240, 70, 5, 200, 50, 200, 100);
      this.botones.botonCuadrado(430, 430+145, 520, 520+50, 145, 50);
      text("Volver a Menu", 500, 550);
      textFont(titulo);
      textSize(20);
      text( "Fin", 510, 475);
    }

    //LLEGA EL RATON
    else if (this.estado=="P10") {
      image(this.imgArray[14], 0, 0, 600, 600);
      this.cuadradoDeTexto( 150, 438, 280, 145, 7, 170, 465, 250, 200 );      
      this.botones.botonCuadrado(500, 500+60, 460, 460+40, 60, 40);
      text("Seguir", 530, 485);
    }

    //LLEGA GATO
    else if (this.estado=="P11") {
      image(this.imgArray[12], 0, 0, 600, 600);
      this.cuadradoDeTexto(150, 458, 280, 125, 8, 170, 488, 250, 200 );    
      this.botones.botonCuadrado (40, 40+60, 30, 30+40, 60, 40);
      text("Seguir", 70, 55);
    }

    //GATO ATACA
    else if (this.estado=="P12") {
      image(this.imgArray[6], 0, 0, 600, 600);
      this.cuadradoDeTexto(150, 438, 280, 145, 9, 170, 465, 250, 200 );    
      this.botones.botonCuadrado (490, 490+60, 30, 30+40, 60, 40);
      text("Seguir", 520, 55);
    }

    //RATON ESCUCHA GRITOS
    else if (this.estado=="P13") {
      image(this.imgArray[15], 0, 0, 600, 600);
      this.cuadradoDeTexto(15, 405, 230, 170, 10, 30, 435, 200, 200);
      this.botones.botonCuadrado (470, 470+60, 475, 475+40, 60, 40);
      text("Seguir", 500, 500);
    }

  
    ////RATITA SE CASA FIN
    //else if (this.estado=="P15") {
    //  image(this.imgArray[11], 0, 0, 600, 600);
    //}

    //RATITA SALE EN LAS NOTICIAS
    else if (this.estado=="P16") {
      image(this.imgArray[19], 0, 0, 600, 600);      
      this.botones.botonCircular(450, 100, 120, 255, 180); 
      this.botones.botonCircular(100, 100, 120, 255, 180); 
    }

    //RATITA DESCUBRE Q SON RE TURBIOS
    else if (this.estado=="P17") {
      image(this.imgArray[7], 0, 600, 600);
    }

    //RATITA DESCUBRE Q SON RE HUMILDES
    else if (this.estado=="P18") {
      image(this.imgArray[20], 0, 0, 600, 600);
      this.textoFlotante(18, 310, 15, 220, 160);
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
    
      //RATON LA RESCATA
    else if (this.estado=="P14") {
      image(this.imgArray[1], 0, 0, 600, 600);
      
    }
  }
  
  botonPresionado(mousePressed) {
    //SIEMEPRE PONER LOS PARAMETROS!!!!!!!!!!!!!!!!!
    
    //PASA DE MENU A CREDITOS 
    if (this.estado == "menu" && this.botones.estoyDentrodeBotonCircular (300, 500, 75/2) ) {
      this.estado = "creditos"; //CREDITOS
    }
    
    //PASA DE MENU A BARRER
    if (this.estado == "menu" && this.botones.estoyDentrodeBotonCuadrado(350, 350+30, 284, 284+65) ) {
      this.estado = "P01"; //
    }
    
    //PASA DE BARRER A ENCONTRAR MONEDA
    if (this.estado == "P01" && this.botones.estoyDentrodeBotonCircular (520, 530, 75/2) ){
      this.estado = "P02"; //
    }
    
    //PASA DE ENCONTRAR MONEDA A PENSAR QUE PUEDE HACER CON LA MONEDA,
    if (this.estado == "P02" && this.botones.estoyDentrodeBotonCircular (145, 505, 90/2) ){
      this.estado = "P03"; //
    }
    
    //PASA DE PENSAR A ELEGIR CARAMELOS
      if (this.estado == "P03" && this.botones.estoyDentrodeBotonCircular ( 160, 135, 190/2) ){
      this.estado = "P04"; //
    }
    
    //PASA DE PENSAR A ELEGIR REGALAR LA MONEDA
    if (this.estado == "P03" && this.botones.estoyDentrodeBotonCircular ( 155, 320, 145/2) ){
      this.estado = "P06"; //
    }
    
    //PASA DE PENSAR A ELEGIR EL MONO
    if (this.estado == "P03" && this.botones.estoyDentrodeBotonCircular ( 320, 180, 140/2) ){
      this.estado = "P05"; //
    }
    
    //
    if (this.estado == "P05" && this.botones.estoyDentrodeBotonCuadrado(316, 316+40, 490, 490+50 ) ) {
      this.estado = "P10"; //
    }
    
    //PASA DE QUE LE DUELE LA BOCA A QUE LE DUELA LA BOCA
    if(this.estado == "P04" && this.botones.estoyDentrodeBotonCircular (100, 500, 120/2) ){
     this. estado = "P07"; 
    }
    
    //PASA DE QUE LE DUELE LA BOCA A ATENDERSE EN EL DENTISTA
    if(this.estado == "P04" && this.botones.estoyDentrodeBotonCircular (500, 100, 120/2) ){
     this. estado = "P08"; 
    }
    
    if(this.estado == "P06" && this.botones.estoyDentrodeBotonCircular ( 100, 70, 100/2 ) ){
      this.estado = "P16";
    }
    
    //PASA DE COMPRAR CAARAMELO A QUE LE DUELE LA BOCA    
    if(this.estado == "P07" && this.botones.estoyDentrodeBotonCircular (500, 500, 120/2) ){
     this. estado = "P09"; 
    }
    
     //PASA DE COMPRAR CAARAMELO A QUE LE DUELE LA BOCA    
    if(this.estado == "P07" && this.botones.estoyDentrodeBotonCircular (100, 100, 120/2) ){
     this. estado = "P08"; 
    }
    
    //PASA DE SACARSE LAS MUELAS AL MENU
     if (this.estado == "P08" && this.botones.estoyDentrodeBotonCuadrado(430, 430+145, 520, 520+50) ) {
      this.estado = "menu"; //
    }
    
    //PASA DE MORIR A MENU
     if (this.estado == "P09" && this.botones.estoyDentrodeBotonCuadrado(430, 430+145, 520, 520+50) ) {
      this.estado = "menu"; //
    }
   
     //PASA DE MORIR A MENU
     if (this.estado == "P09" && this.botones.estoyDentrodeBotonCuadrado(430, 430+145, 520, 520+50) ) {
      this.estado = "menu"; //
    }
    
    //PASA DE MORIR A MENU
     if (this.estado == "P10" && this.botones.estoyDentrodeBotonCuadrado(500, 500+60, 460, 460+40) ) {
      this.estado = "P11"; //
    }
    
    //PASA DE LLEGAR EL GATO A ATACAR
     if (this.estado == "P11" && this.botones.estoyDentrodeBotonCuadrado(40, 40+60, 30, 30+40) ) {
      this.estado = "P12"; //
    }
    
     //PASA DE EL GATO ATACARLA A EL RATON ESCUCHAR LOS GRITOS
     if (this.estado == "P12" && this.botones.estoyDentrodeBotonCuadrado(490, 490+60, 30, 30+40) ) {
      this.estado = "P13"; //
    }
    
     //PASA DE EL RATON ESCUCHAR LOS GRITOS A RESCATAR A RATITA
     if (this.estado == "P13" && this.botones.estoyDentrodeBotonCuadrado(470, 470+60, 475, 475+40) ) {
      this.estado = "P17"; //
    }    
    
    //  //PASA DE RESCATAR GATITA A CASARSE
    // if (this.estado == "P14" && this.botones.estoyDentrodeBotonCuadrado(470, 470+60, 475, 475+40) ) {
    //  this.estado = "P15"; //
    //}    
   
  }
  
  
  
   cuadradoDeTexto(x1, y1, ancho, alto, i, x, y, xT, yT) {
    fill(255, 201, 246, 120);
    stroke(4);
    rect(x1, y1, ancho, alto);
    textFont(regular);
    textAlign(CENTER);
    noStroke();
    fill(0);
    textSize(20);
    text(this.textoArray[i], x, y, xT, yT);
  }
  
  
  
    textoFlotando( i, x, y, xT, yT) {
    textFont(regular)
    textAlign(LEFT);
    fill(0);
    textSize(20);
    text(this.textoArray[i], x, y, xT, yT);
  }
  
}
