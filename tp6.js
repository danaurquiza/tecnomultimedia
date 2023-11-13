let objHistoria;
let fondo = [];
let texto = [];
let bot = [];

function setup() {
createCanvas(600,600);

objHistoria = new Historia(fondo,texto);

}


function draw() {
  background(200,200,0);
  
objHistoria.dibujar(fondo,texto);

}

function preload(){
  
  for( let i = 0 ; i < 21 ; i++ ){
    fondo[i] = loadImage('assets/rata'+ i +'.png');
  }
  
    texto = loadStrings('assets/texto.txt');
  
    bot =loadStrings('assets/bot.txt'); 
}

function mousePressed(){
objHistoria.botonPresionado(mousePressed); 
}
