/*冷蔵庫登録ページ*/
void disp6() {
  background(255);

  fill(120, 170, 255, 35);
  rect(0, 60, width, height-60);
  if (check3 != 1) {
    st=170;
  }
  /*完了ボタン*/
  stroke(0, 0, 150, st);
  fill(255);
  rect(width-140, height-70, 110, 60);
  fill(0);
  text("追加", width-130, height-20);


  if (check3 == 1) {
    st = 0;
    fill(255);
    stroke(0, 0, 150, 170);
    rect(340, 190, 80, 450);
    for (int i = 0; i<31; i++) {
      fill(0);
      textSize(30);
      text(selectDay[i], 350, moveH+35 *i);
      fill(240, 245, 255);
      stroke(240, 245, 255);
      rect(350, 60, 100, 90);
    }

    fill(0);
    beginShape();
    vertex(400, 200);
    vertex(390, 210);
    vertex(410, 210);
    endShape(CLOSE);
    beginShape();
    vertex(400, 630);
    vertex(390, 620);
    vertex(410, 620);
    endShape(CLOSE);
  }

  /*年月日*/
  stroke(0, 0, 150, 170);
  fill(255);
  rect(20, 150, 140, 40);
  rect(210, 150, 80, 40);
  rect(340, 150, 80, 40);
  fill(0);
  textSize(40);
  text("年", 160, 190);
  text("月", 290, 190);
  text("日", 420, 190);

  beginShape();
  vertex(150, 160);
  vertex(130, 160);
  vertex(140, 180);
  endShape(CLOSE);

  beginShape();
  vertex(280, 160);
  vertex(260, 160);
  vertex(270, 180);
  endShape(CLOSE);

  beginShape();
  vertex(410, 160);
  vertex(390, 160);
  vertex(400, 180);
  endShape(CLOSE);

  /*食べ物の種類check4*/
  fill(255);
  rect(20, 280, 180, 40);
  fill(0);
  beginShape();
  vertex(190, 290);
  vertex(170, 290);
  vertex(180, 310);
  endShape(CLOSE);

  if ( check1 == 1) {
    fill(255);
    rect(20, 190, 140, 75 );
    for (int i = 0; i < 2; i++) {
      textSize(30);
      fill(0);
      text(selectYear[i], 30, 220+35*i);
    }
  }

  if (check2 == 1 ) {
    fill(255);
    rect(210, 190, 80, 420);
    for (int i = 0; i< 12; i++) {
      textSize(30);
      fill(0);
      text(selectMonth[i], 220, 220+35*i);
    }
  }

  if (check4 == 1) {
    fill(255);
    rect(20, 320, 180, 150);
    for (int i = 0; i<4; i++) {
      textSize(30);
      fill(0);
      text(genre[i], 30, 355+35*i);
    }
  }

  if (check1 == 2) {
    fill(0);
    textSize(40);
    text(writeY, 30, 190);
  }

  if ( check2 == 2) {
    fill(0);
    textSize(40);
    text(writeM, 220, 190);
  }

  if (check3 == 2) {
    fill(0);
    textSize(40);
    text(writeD+1, 350, 190);
  }

  if (check4 == 2) {//野菜
    fill(255);
    rect(20, 320, 180, height-320);
    textSize(30);
    for ( int i =0; i<13; i++) {
      if (moveH2 + 35 * i>320) {
        fill(0);
      } else {
        noFill();
      }
      if ( i == 0) {
        text(detailGenre[i], 0, moveH2+35*i);
      } else {
        text(detailGenre[i], 30, moveH2+35*i);
      }
    }
    fill(0);
    beginShape();
    vertex(190, 340);
    vertex(170, 340);
    vertex(180, 330);
    endShape(CLOSE);

    beginShape();
    vertex(190, height-20);
    vertex(170, height-20);
    vertex(180, height-10);
    endShape(CLOSE);
  }
  if (check4 == 3) {//肉
    fill(255);
    rect(20, 320, 180, 160);
    textSize(30);
    for ( int i =13; i<17; i++) {
      fill(0);
      text(detailGenre[i], 30, moveH2+35*(i-13));
    }
  }
  if (check4 == 4) {//飲み物
    fill(255);
    rect(20, 320, 180, 250);
    for (int i =17; i<24; i++) {
      fill(0);
      textSize(30);
      text(detailGenre[i], 25, moveH3+35*(i-17));
    }
  }
  if (check4 == 5) {//その他
    fill(255);
    rect(20, 320, 180, 220);
    for (int i = 24; i<30; i++) {
      fill(0);
      textSize(30);
      text(detailGenre[i], 25, moveH4 + 35 * (i-24));
    }
  }
  /*冷蔵庫の内容*/
  if (check4 == 6) {
    fill(0);
    textSize(30);
    text(writeG, 25, 310);
  }
  textSize(40);
  nowBar();
}

int gapData(int years, int months, int days) {
  int thisMonth = allDay[month()-1]-day();
  int gap = months - month();
  if (years - year() == 0) {
    if (gap == 0) {
      return days - day()+1;
    } else if (gap == 1) {
      return thisMonth+days+1;
    } else if (gap == 2) {
      return thisMonth + days + allDay[month()]+1;
    } else if (gap == 3) {
      return thisMonth + days + allDay[month()]+ allDay[month()+1]+1;
    } else if (gap == 4) {
      return thisMonth + days + allDay[month()]+ allDay[month()+1]+ allDay[month()+2]+1;
    } else if (gap == 5) {
      return thisMonth + days + allDay[month()]+ allDay[month()+1]+ allDay[month()+2]+ allDay[month()+3]+1;
    } else if (gap == 6) {
      return thisMonth + days + allDay[month()]+ allDay[month()+1]+ allDay[month()+2]+ allDay[month()+3]+ allDay[month()+4]+1;
    } else if (gap == 7) {
      return thisMonth + days + allDay[month()]+ allDay[month()+1]+ allDay[month()+2]+ allDay[month()+3]+ allDay[month()+4]+ allDay[month()+5]+1;
    } else if (gap == 8) {
      return thisMonth + days + allDay[month()]+ allDay[month()+1]+ allDay[month()+2]+ allDay[month()+3]+ allDay[month()+4]+ allDay[month()+5]+ allDay[month()+6]+1;
    } else if (gap == 9) {
      return thisMonth + days + allDay[month()]+ allDay[month()+1] +allDay[month()+2]+ allDay[month()+3]+ allDay[month()+4]+ allDay[month()+5]+ allDay[month()+6]+ allDay[month()+7]+1;
    } else if (gap == 10) {
      return thisMonth + days + allDay[month()]+ allDay[month()+1]+ allDay[month()+2]+ allDay[month()+3]+ allDay[month()+4]+ allDay[month()+5]+ allDay[month()+6]+ allDay[month()+7]+ allDay[month()+8]+1;
    } else if (gap == 11) {
      return thisMonth + days + allDay[month()]+ allDay[month()+1]+ allDay[month()+2]+ allDay[month()+3]+ allDay[month()+4]+ allDay[month()+5]+ allDay[month()+6]+ allDay[month()+7]+ allDay[month()+8]+ allDay[month()+9]+1;
    }
  }return 0;
}
