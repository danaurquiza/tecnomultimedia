class Obra {
  constructor(trazos) {
    this.trazos = imagenes;
    this.cantidadTrazos = 20;
    this.contador = 0;
    this.x0 = (windowWidth/2 - windowWidth* 0.3);
    this.x1 = (windowWidth/2 + windowWidth* 0.3);
    this.y0 =  (windowHeight/2 - windowHeight* 0.2);
    this.y1 = (windowHeight/2 + windowHeight* 0.2);
    this.hMax = (windowHeight* 0.4); //acomoda el alto del png para que no pase el 40% de la pantalla
    this.maxTrazos = 40; // Número máximo de trazos
    this.trazosDibujados = 0; // Contador de trazos dibujados
    this.trazosPorCiclo = 4; // Número de trazos por ciclo
    this.estado = "DIBUJAR"; // Estado inicial
  }

  //mapeo del valor de entrada del diametro. pasarle a los trazos diam y velocidad
  // actualizar (amplitud){
  //   this.diam = map (amplitud, AMP_MIN, AMP_MAX, 15, 40);
  //   this.vel = map (amplitud, AMP_MIN, AMP_MAX, 2, 10);
  // }

  dibujar() {
    if (this.estado == "DIBUJAR") {
      //let x = this.getPositionX();
      //let y = this.getPositionY();
      for (let i = 0; i < this.trazosPorCiclo; i++) {
        if (this.trazosDibujados < this.maxTrazos) {
          let cual = int(random(this.trazos.length));
          let imag = this.trazos[cual];
          tint(random(255), random(255), random(255), 200);
          image(imag, this.getPositionX(), this.getPositionY(), this.resizeW(imag), this.resizeH(imag));
          this.trazosDibujados++;
        } else {
          this.estado = "COMPLETADO";
          break;
        }
      }
    } else if (this.estado == "COMPLETADO") {
      // Código para el estado completado, si es necesario
      this.trazosDibujados = 0;
      this.estado = "DIBUJAR";
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

  pintarColores(){
    //if (frec grave){
    //tint (colores calidos )
    //} else (frec agudo){
    //(tint (colores frios)}
  }

  modificarOpacidad(){
    //declarar una variable de amplitud que este mapeando la amplitud min y max 
    
  }
}
