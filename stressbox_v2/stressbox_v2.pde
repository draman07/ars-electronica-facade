AEC aec; 
Ball q1Ball, q2Ball, q3Ball, q4Ball;

//  int leftX, rightX, topY, bottomY;
//Wall 1
PVector q1tl= new PVector (0, 1);
PVector q1tr= new PVector (9,1);
PVector q1bl= new PVector (0,22);
PVector q1br= new PVector (9,22);

//Wall 2
PVector q2tl= new PVector (10,1);
PVector q2tr= new PVector (19,1);
PVector q2bl= new PVector (10,20);
PVector q2br= new PVector (19,20);

//Wall 3
PVector q3tl= new PVector (20,2);
PVector q3tr= new PVector (29,2);
PVector q3bl= new PVector (20,21);
PVector q3br= new PVector (29,21);

//Wall 4
PVector q4tl= new PVector (30,2);
PVector q4tr= new PVector (39,2);
PVector q4bl= new PVector (30,24);
PVector q4br= new PVector (39,24);

Wall q1 = new Wall(q1tl, q1tr, q1bl, q1br, 2, 3);
Wall q2 = new Wall(q2tl, q2tr, q2bl, q2br, 2, 3);
Wall q3 = new Wall(q3tl, q3tr, q3bl, q3br, 2, 3);
Wall q4 = new Wall(q4tl, q4tr, q4bl, q4br, 2, 3);

void setup() {
  size(1200, 220);
  frameRate(16);
  aec = new AEC();
  aec.init();
  PVector q1Position = new PVector(0,9);
  PVector q2Position = new PVector(10,1);
  PVector q3Position = new PVector(25,5); //change this bc its wierd
  PVector q4Position = new PVector(30,2);
  
  //blue
  q1Ball = new Ball(q1Position.x, q1Position.y, 2, 3, 1, q1, 0,0,255);
  //light blue
  q2Ball = new Ball(q2Position.x, q2Position.y, 2,3, 1, q2, 0, 204,204);
  //pink
  q3Ball = new Ball(q3Position.x, q3Position.y, 2, 3, 1, q3,255,0,255);
  //purple
  q4Ball = new Ball(q4Position.x, q4Position.y, 2, 3, 1, q4,178,102,255);
}


void draw() {
  aec.beginDraw();
  background(0);

  q1Ball.move();
  q1Ball.render();
  //q1Ball.hitCorner();
  
  q2Ball.move();
  q2Ball.render();
 // q2Ball.hitCorner();
  
  q3Ball.move();
  q3Ball.render();
  //q3Ball.hitCorner();
  
  
  q4Ball.move();
  q4Ball.render();
  q4Ball.hitCorner();
  
  
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
