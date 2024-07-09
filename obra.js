class Obra {
  constructor(trazos) {
    this.trazos = imagenes;
    this.cantidadTrazos = 20;
    this.contador = 0;
    this.x0 = (1000/2 - 1000* 0.45);
    this.x1 = (1000/2 + 1000* 0.45);
    this.y0 =  (900/2 - 900* 0.30);
    this.y1 = (900/2 + 900* 0.35);
    this.hMax = (900* 0.4); //acomoda el alto del png para que no pase el 40% de la pantalla
    this.maxTrazos = 1000; // Número máximo de trazos
    this.trazosDibujados = 0; // Contador de trazos dibujados
    this.trazosPorCiclo = 2; // Número de trazos por ciclo
    this.estado = "DIBUJAR"; // Estado inicial
  }

  dibujar(opacidad) {
      for (let i = 0; i < this.trazosPorCiclo; i++) {
        
          let cual = int(random(this.trazos.length));
          let imag = this.trazos[cual];
          tint(this.elegirColor(opacidad));
          image(imag, this.getPositionX(), this.getPositionY(), this.resizeW(imag), this.resizeH(imag));
          this.trazosDibujados++;
        
      }
  }
  resizeW(imag){
    let w = imag.width;
    let h = imag.height;
    if ( h > this.hMax){
      return w* this.hMax/ h;
    } else {
      return w;
    }
  }
  resizeH(imag){
    let h = imag.height;
    if (h > this.hMax){
      return this.hMax;
    } else{
      return h;
    }
  }
  getPositionX (){
    return random (this.x0, this.x1);
  }
  getPositionY (){
    return random (this.y0, this.y1);
  }
  //-------DIAGRAMA DE ESTADOS
  if ( estado = "DIBUJAR") {
    dibujar();
    this.estado = "ACTIVO"
  }

  elegirColor(opacidad=255){
    
    let elegido = color(0);
    if( tono > 0.5 ){
      elegido = paletaAguda.darUnColor( opacidad );
    }else{
      elegido = paletaGrave.darUnColor( opacidad );
    }
    return elegido;
  }

  // pintarColores(){
  //   //if (frec grave){
  //   //tint (colores calidos )
  //   //} else (frec agudo){
  //   //(tint (colores frios)}
  // }

  // modificarOpacidad(){
  //   //declarar una variable de amplitud que este mapeando la amplitud min y max 
    
  // }
}
