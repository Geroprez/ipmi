PImage naranja;


void setup(){
 size(800,400);
  naranja = loadImage("images.jpg");
  background(255);

}




void draw(){
  imageMode(CORNER);
  image(naranja, 0, 0, 400, 400);
  
  strokeWeight(6);
  stroke(112, 203, 80);
  line(600, 65, 600, 200);
  
  fill(97,175,69);
  noStroke();
  triangle(600, 100, 670, 100, 620, 80);


  
  noStroke();
  fill(255,138,28);
  circle(600, 220, 240);
  
}
