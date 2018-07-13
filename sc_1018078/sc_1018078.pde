/*import系*/
import java.util.*;
import processing.opengl.*;

/*天気予報*/
String baseURL = "http://weather.livedoor.com/forecast/webservice/json/v1?city=";
String city = "017010";
String title;
JSONArray forecasts;
int leng;

/*冷蔵庫のテキストファイル*/
PrintWriter output;

/*classのあれこれ*/
BigTriangle big, big2, big3, big4, big5;
MenuBox menu1, menu2, menu3, menu4,menu5;

int page = 0;//初期ページ宣言

/*page0Home*/
float rot=0;
int reW=0;
int colorR=255;

/*曜日取得*/
String day[] = {"", "(日)", "(月)", "(火)", "(水)", "(木)", "(金)", "(土)"};
String today;

/*n分タイマー*/
int initialS;//始まった時の秒数
int checkTime;//補助
int s;//表示する秒
int m;//表示する分
int nowS;  // Values from 0 - 59
int checkTimer;//補助２
/*選択する冷蔵庫*/
int selectYear[] ={year(),year()+1};
int selectMonth[] = new int [12];
int selectDay[]= new int [31];
int check1=0;
int check2=0;
int check3=0;
int check4 = 0;
int moveH=220;
int moveH2 =355;//野菜
int moveH3 = 355;//飲み物
int moveH4 = 355;//その他
int writeY;
int writeM;
int writeD;
String genre[] = {"野菜","肉","飲み物","その他"};
String detailGenre[];
String writeG;
int st =170;
int allDay[] = {31,29,31,30,31,30,31,31,30,31,30,31};
String data[];
String data2[];
int checker = 0;
/*メモ帳*/
PImage img;
int checkColor = 0;
int checkPress = 0;
int checkImg = 0;
int selectMode = 0;
/*生活*/
String original_data[];//全てのデータを突っ込む配列
int data1[][];
String week[] = {"SUN", "MUN", "TUE", "WED", "THU", "FRI", "SAT"};

void setup() {
  /*size、と３D使うよってあれ*/
  size(480, 640, OPENGL);
  /*表紙オブジェクト*/
  big = new BigTriangle(width/4*3, height/5*2, 0, 5);
  big2 = new BigTriangle(width/4, height/5*2, 0, 2);
  big3 = new BigTriangle(width/2, height/5*2, 0, 1);
  big4 = new BigTriangle(width/4*3, height/5*2, 0, 2);
  big5 = new BigTriangle(width, height/5*2, 0, 0.8);
  /*メニューたち*/
  menu1 = new MenuBox("n分タイマー", 70);
  menu2 = new MenuBox("ストップウォッチ", 150);
  menu3 = new MenuBox("冷蔵庫管理", 230);
  menu4 = new MenuBox("メモ帳", 310);
  menu5 = new MenuBox("自分の生活",390);
  /*曜日取得*/
  Calendar cal = Calendar.getInstance();
  cal.set(year(), month()-1, day());
  today = day[cal.get(Calendar.DAY_OF_WEEK)];
  /*n分タイマー、ストップウォッチ*/
  initialS=second();
  checkTime=0;
  m=1;
  checkTime=0;
  checkTimer = 0;
  /*冷蔵庫管理*/
  detailGenre = loadStrings("refrigerator.txt");
  output = createWriter("outputer.txt");
  /*天気*/
  JSONObject w = loadJSONObject(baseURL + city);
  title = w.getString("title");
  forecasts = w.getJSONArray("forecasts");
  /*メモ帳*/
  img = loadImage("memo.jpg");
  /*生活*/
  original_data=loadStrings("week1_1018078.txt");//0が一行目、1が二行目…、以下七行目まで。
  data1 = new int [original_data.length][];
  for(int i = 0; i < original_data.length; i++){
    data1[i] = int(original_data[i].split(","));//二重配列中に数を投下。
  }
  background(255);
}

void draw() {
  switch(page) {
  case 1:
    disp1();//menu
    break;
  case 2:
    disp2();//n分ウォッチ
    break;
  case 3:
    disp3();//ストップウォッチ
    break;
  case 4:
    disp4();//冷蔵庫管理
    break;
  case 5:
    //disp5();//冷蔵庫delete
    break;
  case 6:
    disp6();//冷蔵庫登録
    break;
  case 7:
    disp7();//メモ帳
    break;
  case 8:
    disp8();
    break;
  default:
    home();//表紙
    break;
  }
}

String now() {
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23

  return(conv(h)+":"+conv(m)+":"+conv(s));
}
