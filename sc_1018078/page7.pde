void disp7() {
  if (checkImg == 0) {
    image(img, 0, 0);
    checkImg = 1;
  }
  if (checkColor == 0) {
    stroke(0);
    fill(0);
  }
  if (checkColor == 1) {
    stroke(255, 0, 0);
    fill(255, 0, 0);
  }
  if (checkColor == 2) {
    stroke(0, 255, 0);
    fill(0, 255, 0);
  }
  if (checkColor == 3) {
    stroke(0, 0, 255);
    fill(0, 0, 255);
  }
  if (checkPress == 1) {
    if (60<mouseY && mouseY <520) {
      if (60 < pmouseY && pmouseY <520) {
        if (selectMode ==1) {
          stroke(240, 245, 255);
        }
        strokeWeight(10);
        line(mouseX, mouseY, pmouseX, pmouseY);
        strokeWeight(1);
      }
    }
  }
  rect(width/2+30, 530, 40, 40);
  nowBar();
  if (mousePressed) {
    if (525 < mouseY && mouseY <625) {
      if (10<mouseX && mouseX <115 ) {
        selectMode = 0;//pen
      } else if (135 < mouseX && mouseX <235) {
        selectMode = 1;//消しゴム
      }
    }
    /*if (width/2+30< mouseX && mouseX < width/2 + 70) {
     if (530 < mouseY && mouseY <570) {
     if (checkColor==0) {
     checkColor =1;
     } else if (checkColor==1) {
     checkColor=2;
     } else if (checkColor==2) {
     checkColor = 3;
     } else if (checkColor==3) {
     checkColor= 0;
     }
     }
     }*/
    if (270<mouseX && mouseX <455) {
      if (585 < mouseY && mouseY < 630) {
        save("memo.png");
      }
    }
    if (0<mouseX&&mouseX < width) {
      if (0 < mouseY &&mouseY < 60) {
        page = 1;
        leng = 0-height;
      }
    }
    checkPress = 1;
  } else {
    checkPress =0;
  }
}

void mouseClicked() {
  if (width/2+30< mouseX && mouseX < width/2 + 70) {
    if (530 < mouseY && mouseY <570) {
      if (checkColor==0) {
        checkColor =1;
      } else if (checkColor==1) {
        checkColor=2;
      } else if (checkColor==2) {
        checkColor = 3;
      } else if (checkColor==3) {
        checkColor= 0;
      }
    }
  }
}
