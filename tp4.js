let estado,x=250;
let vec= [];
let juego = [];
let c = 16;


function preload(){

  for ( let i = 0; i < c; i++ ) {
    juego[i] = loadImage( "assets/juego" + i + ".png" );
  }
}

function setup() {
 createCanvas(800, 600);
 estado='menu';
 for(let i=1; i< 4; i++){
   vec[i] = random(-1100,-90);
 }
}


function draw() {
 
  if(estado == 'menu'){
   inicioycreditos();
   
    image(juego[1], 50, 30, 480, 140);
   

   
  }else
   if(estado == 'juego'){
      image(juego[5], 0, 0);
      manchas();  
      image(juego[6], x, 450, 100,140);
     
      colision();
      fill(255);
      textSize(30);
      text(cant,90,90);
      tj=millis()-tiemp;
      text(int(tj/1000),490,90);
     
      x = constrain(x, 50, 450);
      if(cant == 3){
       estado='perder';
      }else
       if(tj> 30000){
         estado='ganar';
       }  
     
    }else
     if(estado== 'perder'){
  image(juego[0], 0, 0, 1000, 700);
     inicioycreditos();
    image(juego[3], 210, 490, 170, 65);
    image(juego[9], 200, 180, 200, 280);
    fill(0);
    textSize(43);
    text("P E R D I S T E",155, 120);
     }  
     else
     if(estado== 'ganar'){
       
    image(juego[0], 0, 0, 1000, 700);
    image(juego[8],  140, 170, 300, 270);
    fill(0);
    textSize(43);
    text("G A N A S T E",155,120);
    
    image(juego[3], 210, 490, 170, 65);
     }else
   if(estado == 'instrucciones'){
     inicioycreditos();
    ellipse(300, 520, 100, 50);   
    image(juego[10], 210, 490, 170, 65);
    textSize(20);
    textAlign(CENTER);
    text('Ayuda a Lilo y Stitch esquivar las manchas de\npetroleo que hay en la playa.Tienes 30 segundos.\nSi pasas por arriba de las manchas 3 veces pierdes.\nControlas al autito con las teclas de izquierda y derecha.', 300, 245);
   
    
   }else
   if(estado == 'creditos'){
     inicioycreditos();
    ellipse(300, 520, 100, 50);   
    image(juego[10], 210, 490, 170, 65);
    textSize(20);
    textAlign(CENTER);
    text('Programado por Ines Rozankovic\nInspirado en la pelicula de Lilo y Stitch\nIlustracionessacadas de Google\n', 300, 245);
   }
}
 

function mousePressed() {
 if((estado=='menu')&&(dist(mouseX,mouseY,500, 520) < 50)){
   estado = 'juego';
   cant=0;
   reiniciar(-1000,100);
 }else
  if((estado=='menu')&&(dist(mouseX,mouseY,150, 520) < 50)){
   estado = 'instrucciones';
   
 }else
   if((estado=='perder')&&(dist(mouseX,mouseY,300, 520) < 50)){
     estado= 'creditos';
     
   }else
   if((estado=='creditos')&&(dist(mouseX,mouseY,300, 520) < 50)){
     estado= 'menu';
     
   }else
   if((estado=='ganar')&&(dist(mouseX,mouseY,300, 520) < 50)){
     estado= 'creditos';
     
   }else
   if((estado=='instrucciones')&&(dist(mouseX,mouseY,300, 520) < 50)){
     estado= 'menu';
   }
}


function keyPressed() {
  if (keyCode === LEFT_ARROW) {
    x = x-200;
  } else if (keyCode === RIGHT_ARROW) {
    x = x + 200;
  }
}
