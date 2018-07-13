void home(){
  background(255);
  rot+=0.01;
  stroke(0);
  big.display();
  pushMatrix();
  translate(width/4*3,0);
  rotateY(rot);
  big2.display();
  big3.display();
  big4.display();
  big5.display();
  fill(0);
  text(now(),-width/2-100,height/2-50);
  PFont font = createFont("MS Gothic",48,true);//文字の作成
  textFont (font); // 選択したフォントを指定する
  text(month()+"月"+day()+"日"+today,-width/2-100,height/2);
  popMatrix();
  noStroke();
  fill(55,colorR);
  rect(0,height/5*4,reW,70);
  textMode(SHAPE);
  textSize(45);
  fill(255);
  text("START",width/5*3,height/8*7);
  
  if(0<mouseX && mouseX < width&&height/5*4<mouseY && mouseY < height/5*4+70){
    colorR=75;
  }else{
    colorR=255;
  }
  if(reW<width){
   reW+=6;
  }
}
