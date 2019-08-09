class Ball {
  float x, y;
  float xVel, yVel;
  Wall wall;
  color currColor;
  int ballWidth;
  int ballHeight;
  float[] stepSize = new float[] {0.5, 0.25, 0.125, 0.0625};
  int indexX, indexY;
  color[] colors = new color[11];

  Ball(float xpos, float ypos, int wid, int hei, float maxVel, Wall w, color c) {
    x = xpos;
    y = ypos;
    ballWidth = wid;
    ballHeight = hei;
    xVel = maxVel;
    yVel = maxVel;
    wall = w;
    currColor = c;

    indexX = int(random(stepSize.length));  
    indexY = int(random(stepSize.length));  
    this.addColors();
    
  }
  
  void addColors() {
    color red = color(255, 0, 0);
    color green = color(57,181,16);
    color blue = color(0,0,255);
    color orange = color(235,131,52);
    color purple = color(158,52,235);
    color teal = color(36,181,169);
    color white = color(255, 255, 255);
    color coral = color(255,112,112);
    color magenta = color(235,61,209);
    color yellow = color(255,224,66);
    
    
    this.colors[0] = red;
    this.colors[1] = green;
    this.colors[2] = blue;
    this.colors[3] = orange;
    this.colors[4] = purple;
    this.colors[5] = teal;
    this.colors[6] = white;
    this.colors[7] = coral;
    this.colors[9] = magenta;
    this.colors[10] = yellow;
    
 
  }

  void render() {
    noStroke();
    fill(this.currColor);
    rect(x, y, ballWidth, ballHeight);
  }

  void changeColor() {
    this.currColor = (colors[int(random(0,this.colors.length - 1))]); 
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
