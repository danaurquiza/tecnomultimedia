class Juego{
  constructor(cantidadFrutas){
    this.cantidadFrutas = cantidadFrutas;
    this.crearCanasta();
    this.crearFrutas();
  }
  
  dibujar(){
    this.canasta.dibujar();
    
    for(let i=0; i < this.cantidadFrutas;i++){
      this.frutas[i].dibujar();
    }
    
    this.controlarDisparosAEnemigos();
  }
  
    iniciar(){
  }
  
  crearFrutas(){
    this.frutas = [];
    for(let i=0; i < this.cantidadEnemigos;i++){
      this.enemigos[i] = new Enemigo(i*40, 100);
    }
  }
  
  crearCanasta(){
    this.canasta = new Canasta(width/2, 300);
  }
  
  teclaPresionada(keyCode){
    this.canasta.teclaPresionada(keyCode);
  }
