class BigTriangle{
  float x;
  float y;
  float z;
  float le;
  
  BigTriangle(float centerX, float centerY, float centerZ,float leng){
    x=centerX;
    y=centerY;
    z=centerZ;
    le=leng;
  }
  void display(){
    fill(0,25,200,40);
    pushMatrix();
    translate(x,y,z);
    rotateY(rot);
    beginShape();
    vertex(-10*le, 0,0);//左
    vertex(0,40*le,0);//下
    vertex(0,0,10*le);//真ん中手前
    vertex(-10*le,0,0);//左
    vertex(0,-40*le,0);//上
    vertex(0,0,10*le);//真ん中手前
    vertex(-10*le,0,0);
    endShape(CLOSE);
    fill(0,25,200,40);
    beginShape();
    vertex(-10*le,0,0);//左
    vertex(0,40*le,0);//下
    vertex(0,0,-10*le);//真ん中奥
    vertex(-10*le,0,0);//左
    vertex(0,-40*le,0);//上
    vertex(0,0,-10*le);//真ん中奥
    vertex(-10*le,0,0);//左
    endShape(CLOSE);
    fill(0,25,200,40);
    beginShape();
    vertex(10*le, 0,0);//左
    vertex(0,40*le,0);//下
    vertex(0,0,10*le);//真ん中手前
    vertex(10*le,0,0);//左
    vertex(0,-40*le,0);//上
    vertex(0,0,10*le);//真ん中手前
    vertex(10*le,0,0);
    endShape(CLOSE);
    fill(0,25,200,40);
    beginShape();
    vertex(10*le,0,0);//左
    vertex(0,40*le,0);//下
    vertex(0,0,-10*le);//真ん中奥
    vertex(10*le,0,0);//左
    vertex(0,-40*le,0);//上
    vertex(0,0,-10*le);//真ん中奥
    vertex(10*le,0,0);//左
    endShape(CLOSE);
    popMatrix();
  }
}
