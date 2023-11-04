let objHistoria;
let fondo = [];
let texto = [];

function setup() {
createCanvas(600,600);

objHistoria = new Historia(fondo,texto);

}


function draw() {
  background(200,200,0);
  
objHistoria.dibujar(fondo,texto);

}

function preload(){
  
  for( let i = 0 ; i < 17 ; i++ ){
    fondo[i] = loadImage('assets/rata'+ i +'.png');
  }
  
  for( let x = 0 ; x < 20 ; x++ ){
    texto = loadStrings('assets/texto.txt');
  }
  
}
