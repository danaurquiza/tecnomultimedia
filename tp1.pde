PFont fuente;
int tiempo, tam, tam2;
float desvanecer, letra;
PImage red, pelota;
String s= " \n Brian Cox \n Matthew Goode \n Scarlett Johansson \n  Emily Mortimer \n Jonathan Rhys Meyers \n Penelope Wilton ";



void setup() {
  size(800, 400);
  frameRate(5);
  fuente= loadFont( "WindsorBT-LightCondensed-48.vlw");
  red= loadImage("red.png");
  pelota=loadImage("pelota.png");
  desvanecer=255;
  letra=175;
  tam=38;
  tam2=25;
}


void draw() {
  tiempo=frameCount;

  println(frameCount%200);
  //frameCount=+1;

  //PANTALLA 1
  if (tiempo<=tiempo%10) {
    background(0);
    smooth();
    fill( letra);
    textAlign( CENTER, BOTTOM );  
    textFont( fuente ); 
    textSize(50);
    text( "BBC Films and Thema Production SA", width/2, height/2);
    text ("Presents", width/2, height/2+50);
  } 
  //PANTALLA 2
  else if (tiempo==tiempo%25) {

    background(0);
    text( "A Jada Production", width/2, height/2);
  }
  //PANTALLA 3
  else if (tiempo==tiempo%35) {

    background(0);
    text( "Match Point", width/2, height/2);
  }
  //PANTALLA 4
  else if (tiempo==tiempo%45) {
    //textMode(CENTER);
    background(0);
    textSize(25);
    text( "Starring", width/2, 50);
    textSize(20);
    text("\n (in alphabetical order) \n", width/2, 95);
    textSize(40);
    rectMode(CORNER);
    text( s, width/2, 350);
  } 
  //PANTALLA 5
  else if (tiempo==tiempo%55) {

    background(0);
    textSize(25);
    text( "Co-Starring", width/2, 125);
    textSize(20);
    text( "\n (in alphabetical order) \n", width/2, 165);
    textSize(40);
    text( "Ewen Bremner \n James Nesbitt \n Rupert Penry-Jones", width/2, 295);
  }
  //PANTALLA 6
  else if (tiempo==tiempo%65) {

    background(0);
    textSize(25);
    text( "Casting", width/2, 150);
    textSize(40);
    text( "Juliet Taylor \n Gail Stevens \n Patricia Kerrigan DiCerto", width/2, 295);
  }
  //PANTALLA 7
  else if (tiempo==tiempo%75) {

    background(0);
    textSize(25);
    text( "Costume Designer", width/2, 170);
    textSize(38);
    text( "Jill Taylor", width/2, height/2+20);
  }
  //PANTALLA 8
  else if (tiempo==tiempo%85) {

    background(0);
    textSize(28);
    text( "Editor", width/2, 170);
    textSize(38);
    text( "Alisa Lepselter", width/2, height/2+20);
  }
  //PANTALLA 9
  else if (tiempo==tiempo%95) {

    background(0);
    textSize(25);
    text( "Production Designer", width/2, 170);
    textSize(38);
    text( "Jim Clay", width/2, height/2+20);
  }
  //PANTALLA 10
  else if (tiempo==tiempo%105) {

    background(0);
    textSize(22);
    text( "Director of Photography", width/2, 170);
    textSize(38);
    text( "Remi Adefarasin", width/2, height/2+20);
  }
  //PANTALLA 11
  else if (tiempo==tiempo%115) {

    background(0);
    textSize(25);
    text( "Co-Executive Producers", width/2, 170);
    textSize(38);
    text( "Jack Rollins \n Charles H. Joffe", width/2, 260);
  }
  //PANTALLA 12
  else if (tiempo==tiempo%125) {

    background(0);
    textSize(25);
    text( "Executive Producer", width/2, 170);
    textSize(38);
    text( "Stephen Tenenbaum", width/2, height/2+20);
  }
  //PANTALLA 13
  else if (tiempo==tiempo%135) {

    background(0);
    textSize(25);
    text( "Co-Producers", width/2, 170);
    textSize(38);
    text( "Helen Robin \n Nicky Kentish Barnes", width/2, 260);
  }
  //PANTALLA 14
  else if (tiempo==tiempo%145) {

    fill(letra);
    background(0);
    textSize(25);
    text( "Produced by", width/2, 170);
    textSize(38);
    text( "Letty Aronson \n Gareth Wiley \n Lucy Darwin", width/2, 300);
  }
  //PANTALLA 15
  else if (tiempo==tiempo%155) {

    
    background(0);
    textSize(25);
    text( "Written and Directed by", width/2, 170);
    textSize(38);

    text( "Woody Allen", width/2, height/2+20);
   
  } //PANTALLA 16
  else if (tiempo==tiempo%160) {
    
    fill(175, desvanecer);
    background(0);
    textSize(tam2);
    text( "Written and Directed by", width/2, 170);
    textSize(tam);
    text( "Woody Allen", width/2, height/2+20);
    
    tam=tam-2;
    tam2=tam2-2;
    desvanecer=desvanecer-100;
  }
  //PANTALLA 17
  else if (tiempo>=tiempo%165) {
    frameRate(60);
    image(red, 0, 0, 800, 400);
  }
}
void mouseMoved() {

  if ( (tiempo>tiempo%165) &&
    (pmouseX>0)&&(pmouseX<800)&&(pmouseY>0)&&(pmouseY<100) ) {
    frameRate(60);

    image(pelota, pmouseX, pmouseY, 50, 50);
  }
}
