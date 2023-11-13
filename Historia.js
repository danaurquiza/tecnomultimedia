class Historia {

  constructor(fondo, texto, titulo, regular) { 
    this.pantallas = new Pantallas(fondo, texto, titulo, regular);

    //this.textoArray = [];
  }

  dibujar() {
  this.pantallas.dibujar(fondo,texto);

  }

  crearMinijuego() {
    //this.Minijuego = new Minijuego()
  }
}
