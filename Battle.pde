void battle() {
  //print("a");
  image(battle_field, 0, 0, width, height);//背景マップの表示
  Hero.resize(100, 100);
  image(Hero, 150, 350);//主人公の表示
  battleSet();
  if (normal==1) {
    if (e_n==0) {
      enemy_1.resize(100, 100);
      image(enemy_1, 500, 150);//敵の表示
    } else if (e_n==1) {
      enemy_2.resize(100, 100);
      image(enemy_2, 500, 150);//敵の表示
    }
  } else if (normal==3) {
    if (e_n==0) {
      enemy_1n.resize(100, 100);
      image(enemy_1n, 500, 150);//敵の表示
    } else if (e_n==1) {
      enemy_2n.resize(100, 100);
      image(enemy_2n, 500, 150);//敵の表示
    }
  }
  enemy_attack=normal+2*(BossL_cnt%5);

  //starttm = millis(); 
  if (go_item%2==1) {//3を押すごとにitem画面を表示したり消したりする
    itemset(go_item);
  }
  if (enmemys[n].enemy_HP<=0) {
    level++;
    Boss_cnt--;
    good=0;
    page=9;
  }
  if (keyPressed==true&&key=='1') {
    Hero.resize(20, 20);
    enemy_1.resize(20, 20);
    while (dist(enmemys[n].enemy_x, enmemys[n].enemy_y, hero_x, hero_y)<=15) {
      enmemys[n].enemy_x=random(enmemys[n].enemy_size, enmemys[n].MAX_X);
      enmemys[n].enemy_y=random(enmemys[n].enemy_size, enmemys[n].MAX_Y);
    }
    hero_attack=10+level;
    b_itemCnt=6-normal;
    hero_HP=100;
    go_item=0;
    dataSet();
    page=1;
  }
}

int hero_attack;
int b_itemCnt;
int go_item=0;//item画面の表示
int enemy_attack;

void gameOver() {
  background(0);

  fill(255);
  textSize(50);
  text("GameOver", 270, 270);

  fill(100, 100, 0);
  rect(275, 355, 280, 40);

  fill(255);
  textSize(30);
  text("One More Game:1 ", 280, 380);
}

//バトル画面の表示
void battleSet() {
  fill(170);
  rect(0, 450, 450, 150);
  fill(0);
  textSize(40);
  text("How do taro ?", 20, 500);
  fill(255);
  rect(450, 450, 350, 150);
  fill(0);
  textSize(40);
  text("1▷ escape", 460, 500);
  text("2▷ attack", 460, 540);
  text("3▽item", 460, 580);


  fill(200);
  rect(220, 40, 300, 100);
  fill(255);
  rect(200, 20, 300, 100);
  fill(0);
  textSize(30);
  if (page==2) {
    text("Alian X HP :", 220, 50);
    text(String.valueOf(enmemys[n].enemy_HP), 440, 50);
    text("Power :"+String.valueOf(enemy_attack),220,100);
  } else if (page==3) {
    text(String.valueOf(BossHP), 440, 50);
    text("Power :"+String.valueOf(boss_attack),220,100);
    if (BossL_cnt==0) {
      text("B-Dorgon HP :", 220, 50);
    } else {
      if (BossL_cnt==5 || BossL_cnt==4 || BossL_cnt==3) {
        text("Alian Y HP :", 220, 50);
      } else if (BossL_cnt==2) {
        text("Alian Z HP :", 220, 50);
      } else if (BossL_cnt==1) {
        text("D-Knight HP :", 220, 50);
      }
    }
  }

  fill(200);
  rect(290, 330, 300, 100);
  fill(255);
  rect(310, 310, 300, 100);
  fill(0);
  textSize(30);
  text("Taro HP :"+String.valueOf(hero_HP), 330, 340);
  text("Power :"+String.valueOf(hero_attack),330,390);
  // print(9);
}
