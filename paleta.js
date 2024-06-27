class Paleta {
    constructor( imagen_ ){
    this.paleta = imagen_;
    }

    darUnColor( alfa_ = 255 ) {
      //elige una posición al azar dentro de la imagen 
      let x = int( random( this.paleta.width ));
      let y = int( random( this.paleta.height ));
      let elColor = this.paleta.get( x , y );

      return color( red(elColor) , green(elColor) , blue( elColor ) , alfa_ );
    }
}