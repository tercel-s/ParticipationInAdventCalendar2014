State state;

void setup() {
  size(400, 300, P3D);  
  frameRate(20);
  
  fill(255);
  noStroke();
  
  state = new Opening();
}

void draw() {
  background(255);
  camera();

  state = state.update(); 
}
