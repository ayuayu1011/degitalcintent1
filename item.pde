void  item(int n) {
  if (n==0) {
    hero_attack+= 3;
  } else if (n==1) {
    hero_HP+=10+((normal-1)*5);
  } else if (n==2) {
    enemy_attack-=normal;
  } else if (n==3) {
    if (BossL_cnt==0) {
      boss_attack-=normal*2;
    } else {
      boss_attack-=normal;
    }
  }
}

void itemset(int n) {
  if (n%2==1) {
    fill(255);
    rect(150, 440, 300, 200);
    fill(0);
    textSize(20);
    text("残りアイテム数 :"+String.valueOf(b_itemCnt) +" ｺ  とじる:3", 170, 470);
    text("a : 自分のパワーUP", 170, 500);
    text("b : 回復", 170, 540);
    text("c : 敵のパワーDOWN", 170, 580);
  }
}
