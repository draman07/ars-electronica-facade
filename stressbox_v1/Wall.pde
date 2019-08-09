class Wall {
  int leftX, rightX, topY, bottomY;

  Wall(int x1, int x2, int y1, int y2) {
    leftX = x1;
    rightX = x2;
    topY = y1;
    bottomY = y2;
  }
  
  int getLeftX() {
    return this.leftX;
  }
  
    int getRightX() {
    return this.rightX;
  }
  
    int getTopY() {
    return this.topY;
  }
  
    int getBottomY() {
    return this.bottomY;
  }
}
