class Ball {
  float x, y;
  float xVel, yVel;
  Wall wall;

  Ball(float xpos, float ypos, float maxVel, Wall w) {
    x = xpos;
    y = ypos;
    xVel = maxVel;
    yVel = maxVel;
    wall = w;
  }

  void render() {
    fill(255, 0, 255);
    noStroke();
    rect(x, y, 2,3);
  }

  void move() {
    x += xVel;
    y += yVel;
    
    if (x > wall.getRightX() - 2 || x < wall.getLeftX() + 1) { 
      xVel *= -1;
    }
    if (y > wall.getBottomY() - 3 || y < wall.getTopY() + 1) { 
      yVel *= -1;
    }
  }
}
