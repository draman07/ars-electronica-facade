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

  PVector getTopL() {
    return this.topL;
  }

  PVector getTopR() {
    return this.topR;
  }

  PVector getBottomL() {
    return this.bottomL;
  }

  PVector getBottomR() {
    return this.bottomR;
  }
  
    PVector getTopLBound() {
    return this.topL;
  }

  PVector getTopRBound() {
    return new PVector((this.topR.x - (this.ballWidth / 2)), this.topR.y);
  }

  PVector getBottomLBound() {
    return new PVector(this.bottomL.x , this.bottomL.y - this.ballWidth);
  }

  PVector getBottomRBound() {
    return new PVector((this.bottomR.x - (this.ballWidth / 2)), (this.bottomR.y - this.ballWidth));
  }
  
  
}
