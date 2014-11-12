State state;
PImage logo;

void setup() {
  size(400, 300, P3D);  
  frameRate(20);
  
  fill(255);
  noStroke();
  
  logo = loadImage("./background.png");
  state = new Opening();
}

void draw() {
  background(255);
  camera();

  state = state.update(); 
}
