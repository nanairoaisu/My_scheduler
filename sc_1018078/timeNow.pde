void nowBar(){
  fill(100,155,255);
  noStroke();
  rect(0,0,width,60);
  fill(255);
  text(conv(hour())+":"+conv(minute()),350,50);
  text(month()+"月"+day()+"日"+today,30,50);

}
