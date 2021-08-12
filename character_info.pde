void character() {
  background(255);
  fill(0);
  text("とじる:1", 100, 100);
  if (ch<5) {
    text("つぎへ:2", 650, 100);
  }
  boolean returnTitle=false;
  if (mousePressed && dist(mouseX, mouseY, 150, 125)<50) {
    if (returnTitle==false) {
      returnTitle =true;
    }
  }
  if (returnTitle) {
    page=0;
  }
  switch(ch) {
  case 0:
    Hero_In();
    break;
  case 1:
    Enemy1_In();
    break;
  case 2:
    EnemyB_In();
    break;
  case 3:
    EnemyB_In();
    break;
  case 4:
    EnemyB_In();
    break;
  case 5:
    Enemy2_In();
    break;
  default:
  }
}
void Hero_In() {
  Hero_i.resize(100, 100);
  image(Hero_i, 350, 200);//主人公の表示
  fill(0);
  rect(50, (height/2)+50, width-100, height/3);
  fill(255);
  textSize(20);
  text("タロウ(25) ", 120, 400);
  text("日本の陸上自衛隊員。足が速い、銃の腕前も上級者。", 120, 440);
}

void Enemy1_In() {
  enemy1_i.resize(80, 80);
  image(enemy1_i, 200, 200);//敵の表示
  enemy2_i.resize(80, 80);
  image(enemy2_i, 300, 200);//敵の表示
  enemy1n_i.resize(80, 80);
  image(enemy1n_i, 400, 200);//敵の表示
  enemy2n_i.resize(80, 80);
  image(enemy2n_i, 500, 200);//敵の表示
  fill(0);
  rect(50, (height/2)+50, width-100, height/3);
  fill(255);
  textSize(20);
  text("エイリアンX", 120, 400);
  text("全長5m以上のモンスター。動きはそこまで早くないが,", 120, 440);
  text("こちらが攻撃してくるのをじっと待っている。", 120, 480);
}


void EnemyB_In() {
  if (bc == 0) {
    boss1_i.resize(100, 100);
    image(boss1_i, 200, 150);//敵の表示
    boss2_i.resize(100, 100);
    image(boss2_i, 350, 150);//敵の表示
    boss3_i.resize(100, 100);
    image(boss3_i, 500, 150);//敵の表示
    fill(0);
    rect(50, (height/2)+50, width-100, height/3);
    fill(255);
    textSize(20);
    text("エイリアンY:ボス", 120, 400);
    text("全長10m以上のモンスター。", 120, 440);
    text("エイリアンXより攻撃力が高い。", 120, 480);
  } else if (bc ==1) {
    bossE_i.resize(200, 200);
    image(bossE_i, 300, 100);//敵の表示
    fill(0);
    rect(50, (height/2)+50, width-100, height/3);
    fill(255);
    textSize(20);
    text("エイリアンZ:ボス", 120, 400);
    text("全長2m以上の人型モンスター。X,Yを束ねている。", 120, 440);
    text("高度な知性を持つ。ボスドラゴンの側近の一人。", 120, 480);
  } else if (bc ==2) {
    bossK_i.resize(200, 200);
    image(bossK_i, 300, 100);//敵の表示
    fill(0);
    rect(50, (height/2)+50, width-100, height/3);
    fill(255);
    textSize(20);
    text("ダークナイト:ボス", 120, 400);
    text("黒い鎧(よろい)を着た騎士。剣術の達人。", 120, 440);
    text("ボスドラゴンの側近の一人。正体は謎。", 120, 480);
  }
}

void Enemy2_In() {
  Boss_i.resize(200, 200);
  image(Boss_i, 300, 100);//敵の表示
  fill(0);
  rect(50, (height/2)+50, width-100, height/3);
  fill(255);
  textSize(20);
  text("ボスドラゴン:ラストボス", 120, 400);
  text("全長20m以上の巨大なモンスター。", 120, 440);
  text("他のモンスターより攻撃力が高く火の玉を飛ばしてくる。", 120, 480);
}
