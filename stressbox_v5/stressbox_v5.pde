AEC aec; 
Ball q1Ball, q2Ball, q3Ball, q4Ball, sarahq1Ball, kiraq1Ball, sarahq2Ball, kiraq2Ball, sarahq3Ball, kiraq3Ball, sarahq4Ball, kiraq4Ball;

//  int leftX, rightX, topY, bottomY;
//Wall 1
PVector q1tl= new PVector (0, 1);
PVector q1tr= new PVector (9, 1);
PVector q1bl= new PVector (0, 22);
PVector q1br= new PVector (9, 22);

//Wall 2
PVector q2tl= new PVector (10, 1);
PVector q2tr= new PVector (19, 1);
PVector q2bl= new PVector (10, 20);
PVector q2br= new PVector (19, 20);

//Wall 3
PVector q3tl= new PVector (20, 2);
PVector q3tr= new PVector (29, 2);
PVector q3bl= new PVector (20, 21);
PVector q3br= new PVector (29, 21);

//Wall 4
PVector q4tl= new PVector (30, 2);
PVector q4tr= new PVector (39, 2);
PVector q4bl= new PVector (30, 24);
PVector q4br= new PVector (39, 24);

Wall q1 = new Wall(q1tl, q1tr, q1bl, q1br, 2, 3);
Wall q2 = new Wall(q2tl, q2tr, q2bl, q2br, 2, 3);
Wall q3 = new Wall(q3tl, q3tr, q3bl, q3br, 2, 3);
Wall q4 = new Wall(q4tl, q4tr, q4bl, q4br, 2, 3);

void setup() {
  size(1200, 220);
  frameRate(25);
  aec = new AEC();
  aec.init();
  PVector q1Position = new PVector(0, 9);
  PVector q2Position = new PVector(10, 1);
  PVector q3Position = new PVector(25, 5); 
  PVector q4Position = new PVector(30, 2);

  color green = color(153, 204, 0);
  color coral = color(255, 153, 102);
  color purple = color(153, 0, 255);
  color teal = color(0, 153, 153);
  

  //blue
  q1Ball = new Ball(q1Position.x, q1Position.y, 2, 3, 1, q1, green);

  //  sarahq1Ball = new Ball(q1Position.x + 7, q1Position.y + 2, 2, 3, 1, q1, 17, 150, 255);
  //  kiraq1Ball = new Ball(q1Position.x + 2, q1Position.y + 9, 2, 3, 1, q1, 143, 17, 200);

  //light blue
  q2Ball = new Ball(q2Position.x, q2Position.y, 2, 3, 1, q2, coral);

  //  sarahq2Ball = new Ball(q2Position.x + 7, q2Position.y + 2, 2, 3, 1, q2, 17, 150, 255);
  //  kiraq2Ball = new Ball(q2Position.x + 7, q2Position.y + 7, 2, 3, 1, q2, 143, 17, 200);

  //pink
  q3Ball = new Ball(q3Position.x, q3Position.y, 2, 3, 1, q3, purple);

  //  sarahq3Ball = new Ball(q3Position.x + 1, q3Position.y + 8, 2, 3, 1, q3, 17, 150, 255);
  //  kiraq3Ball = new Ball(q3Position.x - 4, q3Position.y + 2, 2, 3, 1, q3, 143, 17, 200);

  //purple
  q4Ball = new Ball(q4Position.x, q4Position.y, 2, 3, 1, q4, teal);

  //  sarahq4Ball = new Ball(q4Position.x + 7, q4Position.y + 2, 2, 3, 1, q4, 17, 150, 255);
  //  kiraq4Ball = new Ball(q4Position.x + 7, q4Position.y + 15, 2, 3, 1, q4, 143, 17, 200);
}


void draw() {
  aec.beginDraw();
  background(0);

  q1Ball.move();
  q1Ball.render();
  q1Ball.hitCorner();

  //  sarahq1Ball.move();
  //  sarahq1Ball.render();
  //  sarahq1Ball.hitCorner();

  //  kiraq1Ball.move();
  //  kiraq1Ball.render();
  //  kiraq1Ball.hitCorner();

  q2Ball.move();
  q2Ball.render();
  q2Ball.hitCorner();

  //sarahq2Ball.move();
  //sarahq2Ball.render();
  //sarahq2Ball.hitCorner();

  //kiraq2Ball.move();
  //kiraq2Ball.render();
  //kiraq2Ball.hitCorner();

  q3Ball.move();
  q3Ball.render();
  q3Ball.hitCorner();

  //sarahq3Ball.move();
  //sarahq3Ball.render();
  //sarahq3Ball.hitCorner();

  //kiraq3Ball.move();
  //kiraq3Ball.render();
  //kiraq3Ball.hitCorner();


  q4Ball.move();
  q4Ball.render();
  q4Ball.hitCorner();

  //sarahq4Ball.move();
  //sarahq4Ball.render();
  //sarahq4Ball.hitCorner();

  //kiraq4Ball.move();
  //kiraq4Ball.render();
  //kiraq4Ball.hitCorner();

  noStroke();

  //QUADRANT 4 BOUNDS (blue)
  //top left
  fill(0, 153, 153);
  rect(30, 2, 1, 1);

  //top right
  fill(0, 255, 255);
  rect(39, 2, 1, 1);  

  //bottom right 
  fill(102, 255, 255);
  rect(39, 24, 1, 1);

  //bottom left
  fill(204, 255, 255);
  rect(30, 24, 1, 1);

  //QUADRANT 3 BOUNDS (purple)
  //light blue = top left
  fill(153, 0, 255);
  rect(20, 2, 1, 1); 

  //top right
  fill(153, 102, 255);
  rect(29, 2, 1, 1);

  //bottom right 
  fill(204, 204, 255);
  rect(20, 21, 1, 1);

  // bottom left
  fill(153, 153, 255);
  rect(29, 21, 1, 1);

  //QUADRANT 2 BOUNDS (coral)
  //top right
  fill(255, 153, 102);
  rect(19, 1, 1, 1);

  //top left
  fill(255, 80, 80);
  rect(10, 1, 1, 1);  

  //bottom left
  fill(255, 255, 204);
  rect(10, 20, 1, 1);

  //bottom right
  fill(255, 204, 153);

  rect(19, 20, 1, 1);

  //QUADRANT 1 BOUNDS (green)
  //top right
  fill(153, 204, 0);
  rect(9, 1, 1, 1);

  //top left
  fill(102, 153, 0);
  rect(0, 1, 1, 1);  

  //bottom left
  fill(204, 255, 153);
  rect(0, 22, 1, 1);

  //bottom right
  fill(204, 255, 102);
  rect(9, 22, 1, 1);

  aec.endDraw();
  aec.drawSides();
}

void keyPressed() {
  aec.keyPressed(key);
}
