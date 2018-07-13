/*冷蔵庫トップ*/
void disp4() {
  background(255);
  fill(120, 170, 255, 35);
  rect(0, 60, width, height-60);

  for (int i = 0; i<12; i++) {
    selectMonth[i] = i+1;//表示する月を突っ込む
  }
  for (int i =0; i < 31; i++) {
    selectDay[i]=i+1;
  }

  fill(255);
  stroke(0, 0, 150, 170);
  rect(10, height-60, width/2-20, 50);//delete
  rect(width/2+10, height-60, width/2-20, 50);//regi
  fill(0);
  text("削除", 75, height-20);
  text("登録", width/2+75, height-20);
  nowBar();
  if(checker == 1){
    for (int i = 0; i<data2.length; i=i+2) {
      fill(255);
      noStroke();
      rect(20, 70+50*i, width-40, 40);
      stroke(0, 0, 150, 170);
      fill(0);
      line(20,110+50*i,width-20,110+50*i);
      text(data2[i+1], 30, 105+50*i);
      text("あと"+data2[i]+"日", width-170, 105+50*i);
    }
  }
}
