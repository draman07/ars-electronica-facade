AEC aec; 
Ball q1Ball, q2Ball, q3Ball, q4Ball;

//  int leftX, rightX, topY, bottomY;

Wall q1 = new Wall(0, 9, 1, 22);
Wall q2 = new Wall(10, 19, 1, 20);
Wall q3 = new Wall(20, 29, 2, 21);
Wall q4 = new Wall(30, 39, 2, 24);

void setup() {
  size(1200, 220);
  frameRate(6);
  aec = new AEC();
  aec.init();
  q1Ball = new Ball(0, 9, 1, q1);

  q2Ball = new Ball(10, 10, 1, q2);
  q3Ball = new Ball(23, 2, 1, q3);
  fill(255);
  rect(20,2,5,5);

  q4Ball = new Ball(30, 2, 1, q4);
  println("scale: " + aec.getScaleY());
}


void draw() {
  aec.beginDraw();
  background(0);

  q1Ball.move();
  q1Ball.render();
  
  q2Ball.move();
  q2Ball.render();
  
  q3Ball.move();
  q3Ball.render();
  
  q4Ball.move();
  q4Ball.render();

  noStroke();

 
  //QUADRANT 4 BOUNDS
  //red = top left
  fill(0, 244, 244);

  rect(30, 2, 1, 1);

  //light blue = top right
  fill(255, 0, 0);

  rect(39, 2, 1, 1);  

  //green = bottom right 
  fill(0, 0, 255);

  rect(39, 24, 1, 1);

  //blue bottom left
  fill(0, 255, 0);

  rect(30, 24, 1, 1);

  //QUADRANT 3 BOUNDS
  //red = top right
  fill(255, 0, 0);
  rect(29, 2, 1, 1);

  //light blue = top left
  fill(0, 244, 244);
  rect(20, 2, 1, 1);  

  //green = bottom left 
  fill(0, 255, 0);
  rect(20, 21, 1, 1);

  //blue bottom right
  fill(0, 0, 255);
  rect(29, 21, 1, 1);

  //QUADRANT 2 BOUNDS
  //red = top right
  fill(255, 0, 0);
  rect(19, 1, 1, 1);

  //light blue = top left
  fill(0, 244, 244);
  rect(10, 1, 1, 1);  

  //green = bottom left
  fill(0, 255, 0);
  rect(10, 20, 1, 1);

  //blue bottom right
  fill(0, 0, 255);
  rect(19, 20, 1, 1);

  //QUADRANT 1 BOUNDS
  //red = top right
  fill(255, 0, 0);
  rect(9, 1, 1, 1);

  //light blue = top left
  fill(0, 244, 244);
  rect(0, 1, 1, 1);  

  //green = bottom left
  fill(0, 255, 0);
  rect(0, 22, 1, 1);

  //blue bottom right
  fill(0, 0, 255);
  rect(9, 22, 1, 1);

  aec.endDraw();
  aec.drawSides();
}

void keyPressed() {
  aec.keyPressed(key);
}
