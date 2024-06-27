const model_url = 'https://cdn.jsdelivr.net/gh/ml5js/ml5-data-and-models/models/pitch-detection/crepe/';

let obra;  
let imagenes = [];
let paletaAguda;
let paletaGrave;
let imagenAguda;
let imagenGrave;


let mic; //entrada de audio
let audioContext;
let pitch;
let altura;
let tono;

let monitorear = false;
//----CONFIGURACION-----
let AMP_MIN = 0.0010; // umbral mínimo de sonido que supera al ruido de fondo
let AMP_MAX = 0.1 // amplitud máxima del sonido
let amp; //carga la amplitud de la señal del mic- VOLUMEN

//let haySonido = false;
let antesHabiaSonido = false; //memoria del estado anterior

let gestorAmp; //gestor de amplitud 
let gestorPitch;

let amortiguacion = 0.5; //amplitud filtrada super amortiguada, el otro extremo seria 0.1

let marcaEnElTiempo;

function preload(){
  for(let i = 0; i<19; i++){
      imagenes[i] = loadImage("data/trazo" + nf(i, 2) + ".png");
  }

  imagenAguda = loadImage( "data/frios.png" );  
  imagenGrave = loadImage( "data/calidos.png" ); 
}

function setup() {
  obra = new Obra(imagenes);
  createCanvas(windowWidth, windowHeight);
  background(255, 241, 214);
  imageMode(CENTER);

  //------PALETAS DE COLORES
  paletaAguda = new Paleta( imagenAguda );
  paletaGrave = new Paleta( imagenGrave );

  //-------------MICROFONO----------------
  audioContext = getAudioContext();
  mic= new p5.AudioIn();  //objeto que se comunica con la entrada de microfono
  mic.start( startPitch); //inicializacion
  userStartAudio();

  //------------GESTOR-----------------
  gestorAmp = new GestorS(AMP_MIN, AMP_MAX); // inicilizo en gestor con los umbrales mínimo y máximo de la señal
  gestorAmp.f = amortiguacion;
  gestorPitch = new GestorS( 40 , 80 );
}

function draw() {

  //capturar intensidad (vol) del sonido
// let vol = mic.getLevel(); //se lo paso al gestor como parametro en el actualizar

  gestorAmp.actualizar(mic.getLevel());
  amp = gestorAmp;
  tono = gestorPitch.filtrada;

  //si la intensidad supera un umbral (en este caso el valor que le paso) entonces hay sonido
  let haySonido =  gestorAmp.filtrada > 0.2;
  //amp > AMP_MIN; //esta comparacion hace que la variable booleana se combierta en true


  //let empezoElSonido = haySonido && !antesHabiaSonido; //uno es true y el otro false
  //let terminoElSonido  = !haySonido && antesHabiaSonido // valor actual y del fotograma anterior. comparacion de la variable anterior
  if (haySonido){
    frameRate (10);
    console.log ("estado:"+ obra.estado);
    console.log ("altura:"+ obra.altura);
    obra.dibujar();
  }
  if( monitorear ){
    gestorAmp.dibujar( 100 , 100 );
    gestorPitch.dibujar( 100 , 300 );
  }
  antesHabiaSonido = haySonido; 

  //gestorAmp.dibujar(30, 50);

}

//--------------------------------------------------------------------
function startPitch() {
  pitch = ml5.pitchDetection(model_url, audioContext , mic.stream, modelLoaded);
}
//--------------------------------------------------------------------

function modelLoaded() {
  //select('#status').html('Model Loaded');
  getPitch();
  //console.log( "entro aca !" );
  
  }


function getPitch() {

  //aca capturo la altura tonal del sonido
  pitch.getPitch(function(err, frequency) {
    if (frequency) {    	
      let midiNum = freqToMidi(frequency);
      //console.log( midiNum );

      gestorPitch.actualizar( midiNum );

    }
    getPitch();
  })
}
