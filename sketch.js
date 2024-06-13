let obra;  
let imagenes = [];
let mic; //entrada de audio

//----CONFIGURACION-----
let AMP_MIN = 0.009; // umbral mínimo de sonido que supera al ruido de fondo
let AMP_MAX = 0.1 // amplitud máxima del sonido
let amp; //carga la amplitud de la señal del mic- VOLUMEN

let haySonido = false;
let antesHabiaSonido = false; //memoria del estado anterior

let gestorAmp; //gestor de amplitud
let amortiguacion = 0.99; //amplitud filtrada super amortiguada, el otro extremo seria 0.1

function preload(){
  for(let i = 0; i<20 ; i++){
      imagenes[i] = loadImage("data/trazo" + nf(i, 2) + ".png");
  }
}

function setup() {
  obra = new Obra(imagenes);
  createCanvas(windowWidth, windowHeight);
  background(255, 241, 214);
  imageMode(CENTER);

  //-------------MICROFONO----------------
  mic= new p5.AudioIn();  //objeto que se comunica con la entrada de microfono
  mic.start(); //inicializacion
  //userStartAudio();

  //------------GESTOR-----------------
  gestorAmp = new GestorS(AMP_MIN, AMP_MAX); // inicilizo en gestor con los umbrales mínimo y máximo de la señal
  gestorAmp.f = amortiguacion;
}

function draw() {
  gestorAmp.actualizar(mic.getLevel());
  
  amp= gestorAmp.filtrada;

  haySonido = amp > AMP_MIN; //esta comparacion hace que la variable booleana se combierta en true

  let empezoElSonido = haySonido && !antesHabiaSonido; //uno es true y el otro false
  if (empezoElSonido){
    obra.dibujar();
  }

  antesHabiaSonido = haySonido; 

  gestorAmp.dibujar(30, 50);

}
