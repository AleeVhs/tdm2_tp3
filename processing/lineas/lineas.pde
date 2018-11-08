void setup() {

  size(800, 600);
  smooth();
  noFill();
  textSize(25);
  textMode(LEFT);
}
void draw() {
  //
  text("Click", width/2-25, height-25);
  if (mousePressed) {
    float t = frameCount/10.0;
    for (int i = 0; i <60; i++) {
      fill(random(100, 155), random(100, 150), random(10, 155), 250);
      // fill(random(25,255));
      //   strokeWeight(3);
      bezier(
        width/2, height-75, width/2, noise(1, i, t)*height, 
        noise(2, i, t)*width, noise(4, i, t)*height, 
        noise(3, i, t)*width/2, noise(5, i, t)*height/2

        );
    }
  }
  if (keyPressed) {
    background(255);
  }
}