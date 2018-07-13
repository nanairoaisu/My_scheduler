void mouseReleased() {
  if (page == 0) {
    if (0<mouseX&&mouseX<width &&height/5*4<mouseY && mouseY < height/5*4+70) {
      page=1;
      leng = 0-height;
    }
  }

  if (page == 1) {

    if (50<mouseX && mouseX < width-100) {
      if (70 < mouseY && mouseY < 140) {
        page = 2;//n分タイマー
        m=1;
        s=0;
        initialS = second();
        checkTimer = 0;
      } else if (150<mouseY && mouseY < 220) {
        page =3;//ストップウォッチ
        m=0;
        s=0;
        checkTimer = 0;
      } else if (230<mouseY && mouseY <300) {
        page = 4;//冷蔵庫
      } else if (310 < mouseY && mouseY < 380) {
        page = 7;//memo
        checkImg = 0;
        background(255);
      } else if (390<mouseY && mouseY < 460) {
        page = 8;
        background(255);
      }
    }
  }
  /*n分タイマー*/
  if (page == 2) {
    if (checkTimer == 0) {
      /*分を上げたり下げたり*/
      if (width/2-50 < mouseX && mouseX < width/2-10) {
        if (height/2 -100 < mouseY && mouseY < height/2 -80) {
          if (m<59) {
            //selectM++;
            m++;
          }
        } else if (height/2+15<mouseY && mouseY < height/2+35) {
          if (m>0) {
            //selectM--;
            m--;
          }
        }
      }
      /*１０の位の分を上げたり下げたり*/
      if (width/2-100<mouseX&&mouseX < width/2-60) {
        if (height/2 -100 < mouseY && mouseY < height/2 -80) {
          if (m<49) {
            m=m+10;
          } else {
            m=59;
          }
        } else if (height/2+15<mouseY && mouseY < height/2+35) {
          if (m>10) {
            m=m-10;
          } else {
            m=1;
          }
        }
      }
    }
  }
  if (page == 2 || page ==3) {
    /*STARTとSTOPのあれ*/
    if (width/2-65 < mouseX && mouseX < width/2+65) {
      if (height/2+70 < mouseY && mouseY < height/2 + 130) {
        if (checkTimer == 0) {
          initialS = second();
          checkTimer =1;
        }
      } else if (height/2+140<mouseY && mouseY < height/2+200) {
        if (checkTimer ==1) {
          checkTimer = 0;
        }
      }
    }
    if (0<mouseX&&mouseX < width) {
      if (0 < mouseY &&mouseY < 60) {
        page = 1;
        leng = 0-height;
      }
    }
  }
  if (page==4) {
    if (height-60 < mouseY && mouseY<height-10) {
      if (10<mouseX&&mouseX<width/2-10) {
        //page = 5;//delete
      } else  if (width/2+10 < mouseX && mouseX < width-10) {
        page = 6;//登録
      }
    }
    if (0<mouseX&&mouseX < width) {
      if (0 < mouseY &&mouseY < 60) {
        page = 1;
        leng = 0-height;
      }
    }
  }
  if (page==6) {
    data2 = loadStrings("outputer.txt");
    /*数一覧を表示*/
    if (0<mouseX&&mouseX < width) {
      if (0 < mouseY &&mouseY < 60) {
        page = 4;
      }
    }
    if (150 < mouseY && mouseY < 190) {
      if (20 < mouseX && mouseX < 160) {
        if (check1 == 0||check1 == 2) {
          check1 = 1;
        }
      } else if (210< mouseX && mouseX < 290) {
        if (check2 == 0|| check2 ==2) {
          check2 = 1;
        }
      } else if (340 < mouseX && mouseX < 420) {
        if ( check3 == 0 || check3 == 2) {
          check3 = 1;
        }
      }
    }
    if (20< mouseX && mouseX < 200) {
      if (280< mouseY && mouseY < 320) {
        if (check4 == 0||check4 ==6) {
          check4 = 1;
        }
      }
    }

    /*日付のスクロール*/
    if (390 < mouseX && mouseX < 410) {
      if (200< mouseY && mouseY < 210) {
        if (220> moveH) {
          moveH=moveH+30;
        }
      } else if (620 < mouseY && mouseY < 630) {
        if (moveH > -440) {
          moveH=moveH-30;
        }
      }
    }
    if (check1 ==1) {
      /*選択した数を表示*/
      if (20 < mouseX&& mouseX < 160) {
        if (190< mouseY && mouseY <220) {
          writeY = year();
          check1 = 2;
        } else if (220<mouseY && mouseY < 265) {
          writeY = year()+1;
          check1 =2;
        }
      }
    }
    if (check2 == 1) {
      /*選択した数を表示*/
      if (210 < mouseX && mouseX <290) {
        if (190<mouseY && mouseY <225) {
          writeM = selectMonth[0];
        } else if (225<mouseY && mouseY <260) {
          writeM = selectMonth[1];
        } else if (260<mouseY && mouseY <295) {
          writeM = selectMonth[2];
        } else if (295<mouseY && mouseY <330) {
          writeM = selectMonth[3];
        } else if (330<mouseY && mouseY <365) {
          writeM = selectMonth[4];
        } else if (365<mouseY && mouseY <400) {
          writeM = selectMonth[5];
        } else if (400<mouseY && mouseY <435) {
          writeM = selectMonth[6];
        } else if (435<mouseY && mouseY <470) {
          writeM = selectMonth[7];
        } else if (470<mouseY && mouseY <505) {
          writeM = selectMonth[8];
        } else if (505<mouseY && mouseY <540) {
          writeM = selectMonth[9];
        } else if (540<mouseY && mouseY <575) {
          writeM = selectMonth[10];
        } else if (575<mouseY && mouseY <610) {
          writeM = selectMonth[11];
        } 
        if (190 < mouseY && mouseY <610) {
          check2 = 2;
        }
      }
    }
    if (check3 == 1) {
      if (340 < mouseX && mouseX < 390) {
        if (190<mouseY && mouseY < height) {
          if (moveH < mouseY && mouseY < moveH+35) {
            writeD = selectDay[0];
          } else if (moveH+35 < mouseY && mouseY < moveH+70) {
            writeD = selectDay[1];
          } else if (moveH+70 < mouseY && mouseY < moveH+105) {
            writeD = selectDay[2];
          } else if (moveH+105 < mouseY && mouseY < moveH+140) {
            writeD= selectDay[3];
          } else if (moveH+140 < mouseY && mouseY < moveH+175) {
            writeD = selectDay[4];
          } else if (moveH+175 < mouseY && mouseY < moveH+210) {
            writeD = selectDay[5];
          } else if (moveH+210 < mouseY && mouseY < moveH+245) {
            writeD = selectDay[6];
          } else if (moveH+245 < mouseY && mouseY < moveH+280) {
            writeD = selectDay[7];
          } else if (moveH+280 < mouseY && mouseY < moveH+315) {
            writeD = selectDay[8];
          } else if (moveH+315 < mouseY && mouseY < moveH+350) {
            writeD = selectDay[9];
          } else if (moveH+350 < mouseY && mouseY < moveH+385) {
            writeD = selectDay[10];
          } else if (moveH+385 < mouseY && mouseY < moveH+420) {
            writeD = selectDay[11];
          } else if (moveH+420 < mouseY && mouseY < moveH+455) {
            writeD = selectDay[12];
          } else if (moveH+455 < mouseY && mouseY < moveH+490) {
            writeD = selectDay[13];
          } else if (moveH+490 < mouseY && mouseY < moveH+525) {
            writeD = selectDay[14];
          } else if (moveH+525 < mouseY && mouseY < moveH+560) {
            writeD = selectDay[15];
          } else if (moveH+560 < mouseY && mouseY < moveH+595) {
            writeD = selectDay[16];
          } else if (moveH+595 < mouseY && mouseY < moveH+630) {
            writeD = selectDay[17];
          } else if (moveH+630 < mouseY && mouseY < moveH+665) {
            writeD = selectDay[18];
          } else if (moveH+665 < mouseY && mouseY < moveH+700) {
            writeD = selectDay[19];
          } else if (moveH+700 < mouseY && mouseY < moveH+735) {
            writeD = selectDay[20];
          } else if (moveH+735 < mouseY && mouseY < moveH+770) {
            writeD = selectDay[21];
          } else if (moveH+770 < mouseY && mouseY < moveH+805) {
            writeD = selectDay[22];
          } else if (moveH+805 < mouseY && mouseY < moveH+840) {
            writeD = selectDay[23];
          } else if (moveH+840 < mouseY && mouseY < moveH+875) {
            writeD = selectDay[24];
          } else if (moveH+875 < mouseY && mouseY < moveH+910) {
            writeD = selectDay[25];
          } else if (moveH+910 < mouseY && mouseY < moveH+945) {
            writeD = selectDay[26];
          } else if (moveH+945 < mouseY && mouseY < moveH+980) {
            writeD = selectDay[27];
          } else if (moveH+980 < mouseY && mouseY < moveH+1015) {
            writeD = selectDay[28];
          } else if (moveH+1015 < mouseY && mouseY < moveH+1050) {
            writeD = selectDay[29];
          } else if (moveH+1050 < mouseY && mouseY < moveH+1080) {
            writeD = selectDay[30];
          }
          check3 = 2;
        }
      }
    }
    if (check4 == 1) {
      if (20 < mouseX && mouseX <200) {
        if (320 < mouseY && mouseY <355) {
          check4 = 2;//野菜
          moveH2=355;
        } else if (355< mouseY && mouseY <355+35) {
          check4 = 3;//肉
          moveH2 = 355;
        } else if (355+35 < mouseY && mouseY <355 +35*2) {
          check4 = 4;//飲み物
          moveH2 = 355;
        } else if (355 + 35 *2 < mouseY && mouseY < 355 + 35 * 3) {
          check4 = 5;//その他
          moveH2 =355;
        }
      }
    }
    if (check4 == 2) {//野菜
      /*上下移動*/
      if (170<mouseX && mouseX <190) {
        if (330<mouseY && mouseY <340) {//上三角
          if (moveH2<355) {
            moveH2 =moveH2 +30;
          }
        } else if (height-20 < mouseY && mouseY <height-10) {
          if (moveH2>205) { 
            moveH2 = moveH2 -30;
          }
        }
      }
      if (20<mouseX && mouseX <170) {
        if (320< mouseY && mouseY < moveH2) {
          writeG = detailGenre[0];
        } else if (moveH2 < mouseY && mouseY <moveH2 +35) {
          writeG = detailGenre[1];
        } else if (moveH2 +35 <mouseY && mouseY < moveH2 +35*2) {
          writeG = detailGenre[2];
        } else if (moveH2 +35 * 2<mouseY && mouseY <moveH2 + 35 *3) {
          writeG = detailGenre[3];
        } else if (moveH2 +35 * 3<mouseY && mouseY <moveH2 + 35 *4) {
          writeG = detailGenre[4];
        } else if (moveH2 +35 * 4<mouseY && mouseY <moveH2 + 35 *5) {
          writeG = detailGenre[5];
        } else if (moveH2 +35 * 5<mouseY && mouseY <moveH2 + 35 *6) {
          writeG = detailGenre[6];
        } else if (moveH2 +35 * 6<mouseY && mouseY <moveH2 + 35 *7) {
          writeG = detailGenre[7];
        } else if (moveH2 +35 * 7<mouseY && mouseY <moveH2 + 35 *8) {
          writeG = detailGenre[8];
        } else if (moveH2 +35 * 8<mouseY && mouseY <moveH2 + 35 *9) {
          writeG = detailGenre[9];
        } else if (moveH2 +35 * 9<mouseY && mouseY <moveH2 + 35 *10) {
          writeG = detailGenre[10];
        } else if (moveH2 +35 * 10<mouseY && mouseY <moveH2 + 35 *11) {
          writeG = detailGenre[11];
        } else if (moveH2 +35 * 11<mouseY && mouseY <moveH2 + 35 *12) {
          check4 = 1;
        }
        if (320 < mouseY && mouseY <moveH2 + 35*11) {
          check4 =6;
        }
      }
    }
    if (check4 == 3) {//肉
      if (20<mouseX && mouseX <170) {
        if (320< mouseY && mouseY < moveH2) {
          writeG = detailGenre[13];
        } else if (moveH2 < mouseY && mouseY <moveH2 +35) {
          writeG = detailGenre[14];
        } else if (moveH2 +35 <mouseY && mouseY < moveH2 +35*2) {
          writeG = detailGenre[15];
        } else if (moveH2 +35 * 2<mouseY && mouseY <480) {
          check4 =1 ;
        }
        if (320<mouseY&&mouseY<480) {
          check4 = 6;
        }
      }
    }
    if (check4 == 4) {//飲み物
      if (20<mouseX && mouseX <170) {
        if (320< mouseY && mouseY < moveH3) {
          writeG = detailGenre[17];
        } else if (moveH3 < mouseY && mouseY <moveH3 +35) {
          writeG = detailGenre[18];
        } else if (moveH3 +35 <mouseY && mouseY < moveH3 +35*2) {
          writeG = detailGenre[19];
        } else if (moveH3 +35 * 2<mouseY && mouseY <moveH3 + 35*3) {
          writeG = detailGenre[20];
        } else if (moveH3 + 35 *3 < mouseY && mouseY < moveH3 +35 * 4) {
          writeG = detailGenre[21];
        } else if (moveH3 + 35 *4 <mouseY && mouseY < moveH3 + 35 * 5) {
          writeG = detailGenre[22];
        } else if (moveH3 + 35 * 5 < mouseY && mouseY < 570) {
          check4 =1 ;
        }
        if (320<mouseY&&mouseY<550) {
          check4 = 6;
        }
      }
    }
    if (check4 == 5) {//その他
      if (20<mouseX && mouseX < 170) {
        if (320 < mouseY && mouseY < moveH4) {
          writeG = detailGenre[24];
        } else if (moveH4 <mouseY && mouseY < moveH4+35) {
          writeG = detailGenre[25];
        } else if (moveH4 +35 < mouseY && mouseY < moveH4 +35 * 2) {
          writeG = detailGenre[26];
        } else if (moveH4 + 35 *2 < mouseY && mouseY <moveH4 + 35 *3) {
          writeG = detailGenre[27];
        } else if (moveH4 + 35 * 3 < mouseY && mouseY <moveH4 + 35 *4) {
          writeG = detailGenre[28];
        } else if (moveH4 +35 * 4 < mouseY && mouseY < 540) {
          check4 = 1;
        }
        if (320 < mouseY && mouseY < 520) {
          check4 = 6;
        }
      }
    }
    if (width - 140 < mouseX && mouseX < width - 30) {
      if (height-70 < mouseY && mouseY < height-10) {
        if (check1 == 2 && check2 == 2 &&check3 == 2 && check4 ==6) {
          output.print(gapData(writeY, writeM, writeD));
          output.println("");
          output.print(writeG);
          output.println("");
          output.flush();
          checker = 1;
        }
      }
    }
  }
  if (page == 8) {
    if (0<mouseX&&mouseX < width) {
      if (0 < mouseY &&mouseY < 60) {
        page = 1;
        leng = 0-height;
        colorMode(RGB,255);
      }
    }
  }
}
