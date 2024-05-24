  PImage miImagen;
  PImage miOtraImagen;
  PImage Otraimagenmas;
  PFont LETRAS;
  int pantalla = 1;
  float visibilidad = 0;
  float movimiento1 = -200;
  float movimiento2 = 600;
  float vision = 0;
  
  void setup(){
    size(640,480);
    textSize(30);
    
    miImagen = loadImage("imagen1.jpg");
    miOtraImagen = loadImage("imagen2.jpg");
    Otraimagenmas = loadImage("imagen3.jpeg");
    LETRAS = loadFont("Raleway-SemiBoldItalic-48.vlw");
    
  }
  
  void draw(){
    background(200);
    
    if (pantalla == 1) {
      image(miImagen, 0, 0, 640, 480);
      textFont(LETRAS,40);
      fill(0);
      text("Wade Winston Wilson \nmejor conocido como Deadpool \nes un personaje ficticio, \nmercenario y anti-héroe \nel cual aparece en los cómics \npublicados por Marvel.", 0, movimiento1);
      movimiento1 = movimiento1 + 0.9;
  } else if (pantalla == 2) {
      image(miOtraImagen, 0, 0, 640, 480);
      textFont(LETRAS,35);
      fill(0);
      text("Creado por el artista Rob Liefeld \ny el escritor Fabian Nicieza \nDeadpool apareció por primera vez en \nNew Mutants (vol. 1) #98 (1991). \nComo un mercenario mentalmente \ninestable y desfigurado \nDeadpool apareció originalmente \ncomo un villano \nen una edición del cómic New Mutants \ny más tarde en ediciones de X-Force \nDesde entonces, el personaje ha \nprotagonizado varias series en curso, \ny comparte títulos con otros personajes, \ncomo Cable.", 0, movimiento2);
      movimiento2 = movimiento2 - 1.2;
  } else if (pantalla == 3) {
      image(Otraimagenmas, 0 ,0, 640, 480);
      textFont(LETRAS,40);
      fill(255,255,255,vision);
      text("El principal poder de Deadpool \nes su acelerado factor de curación \nrepresentado por varios escritores con \ndiferentes niveles de eficiencia. \nesto le permite regenerar \ncualquier tejido destruido \na un ritmo sobrehumano y \nhacerlo inmune a todas \nlas enfermedades conocidas.", 0,30);
      vision = vision + 0.4;
  }
      if(frameCount % 900 == 0){
    pantalla = pantalla + 1;
  }
    if(pantalla > 3) {
      pantalla = pantalla - 1;
  } if(frameCount > 3600) {
      fill(255);
      rect(510,410,80,45);
      fill(255,46,46);
      textSize(18);
      text("Reiniciar",514,445);
      
  }  
     
}
  void mouseClicked(){
    if(mouseX > 510 && mouseY > 410 && mouseX < 590 && mouseY < 455 && pantalla == 3){
      pantalla = 1;
      frameCount = 0;
      movimiento1 = -200;
      movimiento2 = 600;
      vision = 0;
    }
  }
