class Ball {
  float x, y;
  float xVel, yVel;
  Wall wall;
  int r;
  int g;
  int b;
  int ballWidth;
  int ballHeight;

  Ball(float xpos, float ypos, int wid, int hei, float maxVel, Wall w, int red, int green, int blue) {
    x = xpos;
    y = ypos;
    ballWidth = wid;
    ballHeight = hei;
    xVel = maxVel;
    yVel = maxVel;
    wall = w;
    r = red;
    g = green;
    b = blue;
  }

  void render() {
    fill(255, 0, 255);
    noStroke();
    fill(r, g, b);
    rect(x, y, ballWidth, ballHeight);
  }

  void changeColor() {
    this.r = (int)random(150, 255);
    this.g = (int)random(150, 255);
    this.b = (int)random(50, 255);
    render();
  }



  void move() {
    x += xVel;
    y += yVel;

    if (x > wall.getTopR().x - ballWidth || x < wall.getTopL().x + (ballWidth / 2)) { 
      xVel *= -1;
    }
    if (y > wall.getBottomR().y - ballHeight || y < wall.getTopL().y + (ballWidth / 2)) { 
      yVel *= -1;
    }
  }

  void hitCorner() {


    if (this.x == wall.getTopLBound().x && this.y == wall.getTopLBound().y) {
      println("HIT THE TOP LEFT CORNER");
      changeColor();
    }
    if (this.x == wall.getTopRBound().x && this.y == wall.getTopRBound().y) {
      println("HIT THE TOP right CORNER");
      changeColor();
    }
    if (this.x == wall.getBottomLBound().x && this.y == wall.getBottomLBound().y) {
      println("HIT THE bottom LEFT CORNER");
      changeColor();
    }
    if (this.x == wall.getBottomRBound().x && this.y == wall.getBottomRBound().y) {
      println("HIT THE bottom right CORNER");
      changeColor();
    }
  }
}
