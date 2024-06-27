class Obra {
  constructor(trazos) {
    this.trazos = imagenes;
    this.cantidadTrazos = 20;
    this.contador = 0;
    this.x0 = (windowWidth/2 - windowWidth* 0.35);
    this.x1 = (windowWidth/2 + windowWidth* 0.35);
    this.y0 =  (windowHeight/2 - windowHeight* 0.2);
    this.y1 = (windowHeight/2 + windowHeight* 0.2);
    this.hMax = (windowHeight* 0.4); //acomoda el alto del png para que no pase el 40% de la pantalla
    this.maxTrazos = 500; // Número máximo de trazos
    this.trazosDibujados = 0; // Contador de trazos dibujados
    this.trazosPorCiclo = 2; // Número de trazos por ciclo
    this.estado = "DIBUJAR"; // Estado inicial
  }

  dibujar() {
      for (let i = 0; i < this.trazosPorCiclo; i++) {
        if (this.trazosDibujados < this.maxTrazos) {
          let cual = int(random(this.trazos.length));
          let imag = this.trazos[cual];
          tint(this.elegirColor());
          image(imag, this.getPositionX(), this.getPositionY(), this.resizeW(imag), this.resizeH(imag));
          this.trazosDibujados++;
        }
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

  elegirColor(){
    let elegido = color(0);
    if( tono > 0.5 ){
      elegido = paletaAguda.darUnColor( 150 );
    }else{
      elegido = paletaGrave.darUnColor( 150 );
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
