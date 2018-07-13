 /* show page 1 */
void disp3() {
  background(255);
  nowS = second();
  noStroke();
  background(255);
  fill(120, 170, 255, 35);
  rectMode(CORNER);
  rect(0, 0, width, height);
  fill(0);
  textAlign(CENTER);
  textSize(90);
  text(timer(), width/2, height/2);
  //stroke(0, 0, 150, 200);
 // noFill();
  //arc(width/2,height/2,width-70,width-70,-PI/2,PI/2*3);
  fill(255);
  stroke(0, 0, 150, 170);
  rectMode(CENTER);
  rect(width/2, height/2+100, 130, 60);
  rect(width/2,height/2+170,130,60);
  fill(0);
  textSize(40);
  text("START",width/2,height/2+120);
  text("STOP",width/2,height/2+190);
  rectMode(CORNER);
  textAlign(BASELINE);
  nowBar();
  
}

String timer() {
  int nowS = second();  // Values from 0 - 59
  if(checkTimer == 1){
  s = nowS - initialS;

  if (checkTime == 0 && nowS ==59) {
    checkTime = 1;
  }
  
  if (nowS == 0 &&checkTime ==1) {
    initialS = initialS - 60;
    checkTime = 0;
  }

  if (s == 60) {
    m +=1;
    initialS += 60;
  }
  }
  return(conv(m)+":"+conv(s));
}
