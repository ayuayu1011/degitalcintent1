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
    text("item  "+String.valueOf(b_itemCnt), 170, 470);
    text("a : power up me", 170, 500);
    text("b : heal", 170, 540);
    text("c : power down enemy", 170, 580);
  }
}
