void bar() {
  fill(0);
  rect(0, 0, width, 40);

  textSize(20);
  fill(255);
  text("Level :", 50, 25);
  text(String.valueOf(level), 115, 25);

  text("MyHP :" +String.valueOf(hero_HP), 160, 25);

  text("Boss :"+String.valueOf(Boss_cnt), 300, 25);
  
  textSize(15);
  text("次のステージまで :"+String.valueOf(Boss_btCnt), 400, 25);
  fill(255, 255, 0);
  text("タイトルに戻る:r", 550, 25);
  textSize(20);
  fill(255);
  rect(690,5,100,30);
  fill(255,0,0);
  text("STAGE "+String.valueOf(1+(5-BossL_cnt)), 700, 25);
}
