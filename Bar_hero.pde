void bar() {
  fill(0);
  rect(0, 0, width, 40);

  textSize(20);
  fill(255);
  text("Level :", 50, 25);
  text(String.valueOf(level), 115, 25);

  text("MyHP :" +String.valueOf(hero_HP), 160, 25);

  text("Boss :"+String.valueOf(Boss_cnt), 300, 25);

  text("new Stage :"+String.valueOf(Boss_btCnt), 400, 25);
  text("STAGE "+String.valueOf(1+(5-BossL_cnt)), 550, 25);
  textSize(15);
  fill(255, 255, 0);
  text("Title:r", 700, 25);
}
