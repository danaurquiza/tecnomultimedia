 //TP6
 //Alumnas Ines Rozankovic y Dana Urquiza
 //Legajo 91470/0


//como llamar una clase anterior?
//vincular el minijuego con historia-clase madre
//-color de los botones
//-vincular la historia con el minijuego
//-poner texto de los botones 
//-boton dentro de creditos para volver y hacer que caigan creditos


let objHistoria;
let fondo = [];
let fondoMinijuego = [];
let texto = [];
let bot = [];
let titulo;
let regular;
let canasta,manzana;

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
  for( let i = 0 ; i < 2 ; i++ ){
    fondoMinijuego[i] = loadImage('assets/fondo'+ i +'.jpg');
  }
  
  canasta = loadImage ("assets/canasta.png");
  manzana = loadImage ("assets/manzana.png");
  
   texto = loadStrings('assets/texto.txt');
  
   bot = loadStrings('assets/bot.txt'); 
    
   titulo = loadFont('assets/titulo.ttf');
   
   regular = loadFont('assets/regular.ttf');
}

function mousePressed(){
  objHistoria.pantallas.botonPresionado(mousePressed); 
}
function keyPressed() {
  objHistoria.pantallas.Minijuego.teclaPresionada(keyCode);
}
