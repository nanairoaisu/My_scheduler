void disp8(){
  colorMode(RGB,255);
  background(255);
  colorMode(HSB,150);
  int numberData[][] = new int [data1.length-1][];
  fill(0);
  textSize(25);
  
  for(int i = 1; i < data1.length; i++){
    stroke(0);
    numberData[i-1] = data1[i];
  }
  
  for(int i = 0; i < data1.length; i++){
    stroke(0);
    bandGraph(numberData,70,70);
    //line(numberData,70,70);
  }
  for(int i = 0; i < 7; i++){
    fill(0);
    textSize(30);
    text(week[i], 3, 70 * (i+1)+40 );
  }
  colorMode(RGB,255);
  textSize(40);
  stroke(0);
  nowBar();
}
void bandGraph(int d[][],float x, float y){
  float element[][] = new float [d.length][6];
  int sum[] = new int [d.length];//段々と合計値に近づく関数
  int sum2[] = new int [d.length];//最初から合計値が入る関数
  int sum0[] = new int [d.length];//次の日の値を足していくアレ。
  
  for(int i = 0; i < d.length; i++){
    for(int j = 0; j < 6; j++){
      sum2[i] += d[i][j];
      sum[i] = 0;
      sum0[i]=0;
    }
  }
  
  for(int i = 0; i < d.length; i++){
    for(int j = 0; j < 6; j++){
      element[i][j] = 400 * d[i][j] / sum2[i];//帯グラフの幅を500にするための。
      setColor(j*20-25,150);//色設定

      rect(x + sum[i], y * (i+1) + 20, element[i][j], 30);//帯グラフ生成
      if(element[i][j] > 0){
        fill(0);
        text(d[i][j],x+sum[i]+element[i][j]/2-20,y*(i+1)+45);
      }
      sum[i] += element[i][j];
    }
  }
  for(int i = 0; i < d.length; i++){
      sum[i] = 0;
      sum0[i]=0;
  }
  for(int i = 0, m =0; i < d.length && m < 6; i++, m++){
    for(int j = 0; j < 6; j++){
      line(x+sum[m],y*(i+1)+50,x+sum0[m], y* (i+2)+20);
      
      sum[i] += element[i][j];
      sum0[i] += element[m+1][j];
    }
  } 
}
void setColor(int i, int n){
  i = i % n;
  colorMode(HSB, n);
  fill(i, n, n);
  
}
