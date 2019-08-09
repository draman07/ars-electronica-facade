class Ball {
  float x, y;
  float xVel, yVel;
  Wall wall;
  int r;
  int g;
  int b;
  int ballWidth;
  int ballHeight;
  float[] stepSize = new float[] {0.5, 0.25, 0.125, 0.0625};
  int indexX, indexY;
  color[] colors = new color[10];

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

    indexX = int(random(stepSize.length));  
    indexY = int(random(stepSize.length));  
    this.addColors();
    
  }
  
  void addColors() {
    color red = color(255, 0, 0);
    color green = color(0,255,0);
    color blue = color(0,0,255);
    this.colors[0] = red;
    this.colors[1] = green;
    this.colors[2] = blue;
   
  }

  void render() {
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
    x += xVel * stepSize[indexX];
    y += yVel * stepSize[indexY];

    if (x > wall.getTopR().x - stepSize[indexX] - (ballWidth / 2) || x < wall.getTopL().x + stepSize[indexX]) { 
      xVel *= -1;
    }
    if (y > wall.getBottomR().y - (stepSize[indexY] + (ballHeight)) + 1 || y < wall.getTopL().y + stepSize[indexY]) { 
      yVel *= -1;
    }
  }

  void hitCorner() {
    if (this.x == wall.getTopLBound().x && this.y == wall.getTopLBound().y) {
      changeColor();
    }
    if (this.x == wall.getTopRBound().x && this.y == wall.getTopRBound().y) {
      changeColor();
    }
    if (this.x == wall.getBottomLBound().x && this.y == wall.getBottomLBound().y) {
      changeColor();
    }
    if (this.x == wall.getBottomRBound().x && this.y == wall.getBottomRBound().y) {
      changeColor();
    }
  }
}
