import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.awt.Color; 
import org.aec.facade.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class rarah_v3 extends PApplet {

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

public void setup() {
  
  frameRate(4);
  aec = new AEC();
  aec.init();
  PVector q1Position = new PVector(0, 9);
  PVector q2Position = new PVector(10, 1);
  PVector q3Position = new PVector(25, 5); //change this bc its wierd
  PVector q4Position = new PVector(30, 2);

  //blue
  q1Ball = new Ball(q1Position.x, q1Position.y, 2, 3, 1, q1, 0, 0, 255);

  sarahq1Ball = new Ball(q1Position.x + 7, q1Position.y + 2, 2, 3, 1, q1, 17, 150, 255);
  kiraq1Ball = new Ball(q1Position.x + 2, q1Position.y + 9, 2, 3, 1, q1, 143, 17, 200);

  //light blue
  q2Ball = new Ball(q2Position.x, q2Position.y, 2, 3, 1, q2, 0, 204, 204);

  sarahq2Ball = new Ball(q2Position.x + 7, q2Position.y + 2, 2, 3, 1, q2, 17, 150, 255);
  kiraq2Ball = new Ball(q2Position.x + 7, q2Position.y + 7, 2, 3, 1, q2, 143, 17, 200);

  //pink
  q3Ball = new Ball(q3Position.x, q3Position.y, 2, 3, 1, q3, 255, 0, 255);

  sarahq3Ball = new Ball(q3Position.x + 1, q3Position.y + 8, 2, 3, 1, q3, 17, 150, 255);
  kiraq3Ball = new Ball(q3Position.x - 4, q3Position.y + 2, 2, 3, 1, q3, 143, 17, 200);

  //purple
  q4Ball = new Ball(q4Position.x, q4Position.y, 2, 3, 1, q4, 178, 102, 255);

  sarahq4Ball = new Ball(q4Position.x + 7, q4Position.y + 2, 2, 3, 1, q4, 17, 150, 255);
  kiraq4Ball = new Ball(q4Position.x + 7, q4Position.y + 15, 2, 3, 1, q4, 143, 17, 200);
}


public void draw() {
  aec.beginDraw();
  background(0);

  q1Ball.move();
  q1Ball.render();
  q1Ball.hitCorner();

  sarahq1Ball.move();
  sarahq1Ball.render();
  sarahq1Ball.hitCorner();

  kiraq1Ball.move();
  kiraq1Ball.render();
  kiraq1Ball.hitCorner();

  q2Ball.move();
  q2Ball.render();
  q2Ball.hitCorner();

  sarahq2Ball.move();
  sarahq2Ball.render();
  sarahq2Ball.hitCorner();

  kiraq2Ball.move();
  kiraq2Ball.render();
  kiraq2Ball.hitCorner();

  q3Ball.move();
  q3Ball.render();
  q3Ball.hitCorner();

  sarahq3Ball.move();
  sarahq3Ball.render();
  sarahq3Ball.hitCorner();

  kiraq3Ball.move();
  kiraq3Ball.render();
  kiraq3Ball.hitCorner();


  q4Ball.move();
  q4Ball.render();
  q4Ball.hitCorner();

  sarahq4Ball.move();
  sarahq4Ball.render();
  sarahq4Ball.hitCorner();

  kiraq4Ball.move();
  kiraq4Ball.render();
  kiraq4Ball.hitCorner();


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

public void keyPressed() {
  aec.keyPressed(key);
}




class AEC {
  AECPlugin plugin = new AECPlugin();
  HouseDrawer house = new HouseDrawer(plugin);
  
  public AEC() {
  }

  public void init() {
    plugin.setFrameWidth(width);
    plugin.init();
    loadConfig();
  }
    
  public void loadConfig() {
    plugin.loadConfig();
  }
  
  public void beginDraw() {
    scale(2 * plugin.scale, plugin.scale);
  }
  
  public void endDraw() {
    // reset of the transformation
    resetMatrix();
    
    loadPixels();
    plugin.update(pixels);
  }
  
  public void drawSides() {
    house.draw();
  }
  
  public void keyPressed(int value) {
    plugin.keyPressed(value, keyCode);
    
    if (value == 'i') {
      house.toggleIds();
    }
  }

  public void setActiveColor(Color c) {
    plugin.setActiveColor(c);
  }

  public void setInActiveColor(Color c) {
    plugin.setInActiveColor(c);
  }
  
  public int getScaleX() {
    return 2 * plugin.scale;
  }
  
  public int getScaleY() {
    return plugin.scale;
  }  
}
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

  public void render() {
    fill(255, 0, 255);
    noStroke();
    fill(r, g, b);
    rect(x, y, ballWidth, ballHeight);
  }

  public void changeColor() {
    this.r = (int)random(150, 255);
    this.g = (int)random(150, 255);
    this.b = (int)random(50, 255);
    render();
  }



  public void move() {
    x += xVel;
    y += yVel;

    if (x > wall.getTopR().x - ballWidth || x < wall.getTopL().x + (ballWidth / 2)) { 
      xVel *= -1;
    }
    if (y > wall.getBottomR().y - ballHeight || y < wall.getTopL().y + (ballWidth / 2)) { 
      yVel *= -1;
    }
  }

  public void hitCorner() {


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


class HouseDrawer {
  AECPlugin aec;
  int size = 10;  
  PFont font;
  boolean showIds = false;
  
  public HouseDrawer(AECPlugin aec_) {
    aec = aec_;
    font = loadFont("LucidaConsole-8.vlw"); 
  }
  
  public void toggleIds() {
    showIds = !showIds;
  }
  
  public void draw() {
    resetMatrix();
    
    for (int i = 0; i < Building.SIDE.values().length; ++i) {
      Building.SIDE sideEnum = Building.SIDE.values()[i];
      Side side = aec.getSide(sideEnum);
      
      stroke(side.getColor().getRed(), side.getColor().getGreen(), side.getColor().getBlue(), side.getColor().getAlpha());
      noFill();
      drawSide(side);     
    }
  }
  
  public void drawSide(Side s) {
    int[][] adr = s.getWindowAddress();
    int pWidth = s.getPixelWidth();
    int pHeight = s.getPixelHeight();

    for (int y = 0; y < adr.length; ++y) {
      for (int x = 0; x < adr[y].length; ++x) {
        if (adr[y][x] > -1) {
          int fx = (s.getX() + x * pWidth) * aec.scale;
          int fy = (s.getY() + y * pHeight) * aec.scale;
          rect(fx, fy, pWidth * aec.scale, pHeight * aec.scale);
          
          if (showIds) {
            textFont(font, 8); 
            text("" + adr[y][x], fx + pWidth * aec.scale / 4, fy + pHeight * aec.scale * 0.9f);
          }
        }
      }
    }
  }
}
class Wall {
  PVector  topL, topR, bottomL, bottomR;
  int ballWidth;
  int ballHeight;
  
  Wall(PVector tl, PVector tr, PVector bl, PVector br, int bw, int bh) {
    topL = tl;
    topR = tr;
    bottomL = bl;
    bottomR = br;
    ballWidth = bw;
    ballHeight = bh;
  }

  public PVector getTopL() {
    return this.topL;
  }

  public PVector getTopR() {
    return this.topR;
  }

  public PVector getBottomL() {
    return this.bottomL;
  }

  public PVector getBottomR() {
    return this.bottomR;
  }
  
    public PVector getTopLBound() {
    return this.topL;
  }

  public PVector getTopRBound() {
    return new PVector((this.topR.x - (this.ballWidth / 2)), this.topR.y);
  }

  public PVector getBottomLBound() {
    return new PVector(this.bottomL.x, this.bottomL.y - this.ballHeight);
  }

  public PVector getBottomRBound() {
    return new PVector((this.bottomR.x - (this.ballWidth / 2)), (this.bottomR.y - this.ballHeight));
  }
  
  
}
  public void settings() {  size(1200, 220); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "rarah_v3" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
