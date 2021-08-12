void Boss() {
  BossBattle();
  battleSet();
  dataSet();
  Boss_cnt=0;
  if (go_item%2==1) {//3を押すごとにitem画面を表示したり消したりする
    itemset(go_item);
  }
  //starttm = millis(); 
  if (BossHP<=0) {
    level++;
    good=1;
    Boss_cnt=5;
    if (Boss_btCnt>1) {
      Boss_btCnt--;
    } else {
      Boss_btCnt=normal;
      if (BossL_cnt>1) {
        BossL_cnt--;
      }
    }
    if (BossL_cnt>0) {
      page=9;
    } else {
      page=10;
    }
  }
  if (keyPressed==true&&key=='1') {
    Hero.resize(20, 20);
    enemy_1.resize(20, 20);
    while (dist(enmemys[n].enemy_x, enmemys[n].enemy_y, hero_x, hero_y)<=15) {
      enmemys[n].enemy_x=random(enmemys[n].enemy_size, enmemys[n].MAX_X);
      enmemys[n].enemy_y=random(enmemys[n].enemy_size, enmemys[n].MAX_Y);
    }
    Boss_cnt=5;
    if(normal==1){
      boss_attack-=5;
    }else{
      boss_attack-=6;
    }
    enemy_attack--;
    b_itemCnt=6-normal;
    hero_HP=100;
    go_item=0;
    dataSet();
    go_bt=false;
    page=1;
  }
}

int boss_attack;
void BossBattle() {
  if (BossL_cnt==0) {
    image(Bossfield, 0, 0, width, height);//背景マップの表示
    Hero.resize(100, 100);
    image(Hero, 150, 350);//主人公の表示
    BossL.resize(200, 200);
    image(BossL, 550, 100);//敵の表示
  } else {
    image(battle_field, 0, 0, width, height);//背景マップの表示
    Hero.resize(100, 100);
    image(Hero, 150, 350);//主人公の表示
    if (BossL_cnt==5) {
      boss1.resize(150, 150);
      image(boss1, 500, 150);//敵の表示
    } else if (BossL_cnt==4) {
      boss2.resize(150, 150);
      image(boss2, 500, 150);//敵の表示
    } else if (BossL_cnt==3) {
      boss3.resize(150, 150);
      image(boss3, 500, 150);//敵の表示
    } else if (BossL_cnt==2) {
      bossE.resize(150, 150);
      image(bossE, 500, 150);//敵の表示
    } else if (BossL_cnt==1) {
      bossK.resize(150, 150);
      image(bossK, 500, 150);//敵の表示
    }
  }
}

int bt;
void boss_talk() {
  BossL_cnt=5;
  if (bt ==0) {
    image(Bossfield, 0, 0, width, height);//背景マップの表示
    textbox();
    bar();
    fill(255);
    textSize(20);
    BossL.resize(200, 200);
    image(BossL, width/2-100, height/4);//敵の表示
    textSize(30);
    text("BD:バカな...この我がぁぁぁぁぁぁ！！！", 100, 450);
  } else if (bt==1) {
    background(0);
    textbox();
    bar();
    fill(255);
    textSize(20);
    text("無事に敵を全て倒すことができたタロウ。", 100, 450);
    text("しかし、あたりが暗くなる。そこに一筋の光が差し込む。", 100, 490);
  } else if (bt==2) {
    background(255);
    textbox();
    bar();
    fill(255);
    textSize(20);
    text("白い光の方へ向かうタロウ。するとそこは...。", 100, 450);
  } else if (bt==3 || bt==4 || bt== 5) {
    sabaku.resize(width, height);
    image(sabaku, 0, 0, width, height);
    Hero_i.resize(100, 100);
    image(Hero_i, 200, 200);//主人公の表示
    textbox();
  }

  if (bt==3) {
    bar();
    fill(255);
    textSize(20);
    text("最初の砂漠だった。元の世界に戻れると思ったのに。", 100, 450);
  } else if (bt==4) {
    boss1_i.resize(100, 100);
    image(boss1_i, width/2+30, height/4);//敵の表示
    boss2_i.resize(100, 100);
    image(boss2_i, width/2+100, height/4-30);//敵の表示
    boss3_i.resize(100, 100);
    image(boss3_i, width/2+180, height/4+30);//敵の表示
    fill(150);
    rect(80-10, (height/2)+100-10, width-150+20, height/4+20);
    fill(0);
    rect(80, (height/2)+100, width-150, height/4);
    bar();
    fill(255);
    textSize(20);
    text("しかも...モンスターたちが復活していた！？", 100, 450);
    text("またタロウの新たな冒険が始まるのだろうか...。", 100, 490);
  } else if (bt ==5) {
    bar();
    fill(255);
    textSize(20);
    text("return Title:1         return Map:2", 200, 450);
  }
}
