 //TP6
 //Alumnas Ines Rozankovic y Dana Urquiza
 //Legajo 91470/0


//cambiar nombre fruta a plata
//crear pantalla rechazo y vincular
//ver como subir a la web
//hacer la web html para mostrar trabajo
//ver si cambiamos las manzanas por otra cosa y cambiar dialogos o instrucciones etc

let objPantallas;
let fondo = [];
let fondoMinijuego = [];
let texto = [];

let titulo;
let regular;
let canasta, plata;

function setup() {
createCanvas(600,600);

objPantallas = new Pantallas();

}


function draw() {
background(200,200,0);
  
objPantallas.dibujar();

}

function preload(){
  
   for( let i = 0 ; i < 22 ; i++ ){
    fondo[i] = loadImage('assets/rata'+ i +'.png');
  }
  for( let i = 0 ; i < 2 ; i++ ){
    fondoMinijuego[i] = loadImage('assets/fondo'+ i +'.png');
  }
  
  canasta = loadImage ("assets/canasta.png");
  plata = loadImage ("assets/plata.png");
  
   texto = loadStrings('assets/texto.txt');
  

    
   titulo = loadFont('assets/titulo.ttf');
   
   regular = loadFont('assets/regular.ttf');
}

function mousePressed(){
  objPantallas.botonPresionado(mousePressed); 
}
function keyPressed() {
 objPantallas.Minijuego.teclaPresionada(keyCode);
}
