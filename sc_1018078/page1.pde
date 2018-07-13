/* show page 1 メニュー */
void disp1() {
  background(255);
  noStroke();
  fill(120, 170, 255, 35);
  rect(0, 60, width, height-60);
  
  nowBar();

  if (0<mouseX && mouseX < width) {
    if (0<mouseY && mouseY <60) {
      if (leng <0) {
        leng += 20;
      }
      wether();
    } else {
      menu1.display();
      menu2.display();
      menu3.display();
      menu4.display();
      menu5.display();
    }
  }
}

class MenuBox {
  String menu;
  int menuY;

  MenuBox(String m, int y) {
    menu = m;
    menuY = y;
  }


  void display() {
    fill(255, 250);
    stroke(0, 0, 150, 100);
    strokeJoin(ROUND);
    rect(50, menuY, width-100, 70);
    fill(0);
    textSize(40);
    text(menu, 70, menuY+50);
  }
}
