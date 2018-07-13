void wether(){
  fill(100,155,255);
  noStroke();
  rect(0,leng,width,height);
  fill(255);
  text(title, 60, 130);
  for(int i = 0; i < forecasts.size(); i++){
    JSONObject f = forecasts.getJSONObject(i);
    String s = f.getString("dateLabel") + ":" + f.getString("telop");
    
    text(s, 60, 210 + 80 * i);
  }
  
}
