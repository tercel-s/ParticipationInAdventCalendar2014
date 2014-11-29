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
  
  // jsモードでテクスチャ読み込みの成功率を上げるためのコード
  // by @Hau-Kun
  if(logo.get(0, 0) == 0) return;
  camera();

  state = state.update(); 
}
