let objHistoria;
let fondo = [];
let texto = [];
let bot = [];
let titulo;
let regular;

function setup() {
createCanvas(600,600);

objHistoria = new Historia(fondo,texto, titulo, regular);

}


function draw() {
  background(200,200,0);
  
objHistoria.dibujar();

}

function preload(){
  
  for( let i = 0 ; i < 21 ; i++ ){
    fondo[i] = loadImage('assets/rata'+ i +'.png');
  }
  
    texto = loadStrings('assets/texto.txt');
  
    bot = loadStrings('assets/bot.txt'); 
    
   titulo = loadFont('assets/titulo.ttf');
   
    regular = loadFont('assets/regular.ttf');
}

function mousePressed(){
  objHistoria.pantallas.botonPresionado(mousePressed); 
}
