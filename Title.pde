void title() {
  background(100, 0, 0);
  ch=0;
  pr=0;
  bt=0;
  int x1=120, y1=210;
  int x2=590, y2=210;
  hero_HP=100;
  if (normal==1) {
    levelE=level;
    Boss_cntE=Boss_cnt;
    BossL_cntE=BossL_cnt;
    Boss_btCntE=Boss_btCnt;
    enemy_attackE=enemy_attack;
    boss_attackE=boss_attack;
  }
  if (normal==3) {
    levelN=level;
    Boss_cntN=Boss_cnt;
    BossL_cntN=BossL_cnt;
    Boss_btCntN=Boss_btCnt;
    enemy_attackN=enemy_attack;
    boss_attackN=boss_attack;
  }
  image(easy_mode, x1, y1);
  image(normal_mode, x2, y2);


  fill(255);
  textSize(20);
  text("easy:e", 140, 200);

  fill(255);
  textSize(20);
  text("normal:n", 595, 200);

  fill(255);
  textSize(40);
  text("LEVEL UP GAME", 250, 150);

  fill(255);
  textSize(20);
  text("文字キーで選択", 340, 450);

  if (menu) {
    //キャラクター紹介への移動
    fill(0);
    rect(width-150, height/8-50, 170, 30);
    fill(255);
    textSize(20);
    text("キャラクター:a", width-140, height/6-50);

    //プロローグへの移動
    fill(0);
    rect(width-150, 75, 170, 30);
    fill(255);
    textSize(20);
    text("プロローグ:b", width-140, height/4-50);

    //エピローグへの移動
    fill(0);
    rect(width-150, 125, 170, 30);
    fill(255);
    textSize(20);
    text("エピローグ:c", width-140, height/3-50);

    fill(255);
    textSize(15);
    text("とじる:1", width-100, 20);
  } else {
    fill(0);
    rect(width-140, height/25, 120, 50);
    fill(255);
    textSize(15);
    text("メニューを開く:1", width-140, height/10);
  }
}
