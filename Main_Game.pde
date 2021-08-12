//フィールドと主人公の描画,当たり判定
void main_game() {
  //normalモード
  if (play_f) {
    Boss_cnt=5;
    BossL_cnt=5;
    b_itemCnt=6-normal;
    Boss_btCnt=normal;
    enemy_attack=4;
    boss_attack=2;
    play_f=false;
  }
  if (BossL_cnt==5 && BossL_cnt!=0) {
    image(field, 0, 0, width, height);//背景マップの表示
  } else if (BossL_cnt==4) {
    image(field_2, 0, 0, width, height);//背景マップの表示
  } else if (BossL_cnt==3) {
    image(field_3, 0, 0, width, height);//背景マップの表示
  } else if (BossL_cnt==2) {
    image(field_4, 0, 0, width, height);//背景マップの表示
  } else if (BossL_cnt==1 || BossL_cnt==0) {
    image(field_5, 0, 0, width, height);//背景マップの表示
  }
  bar();
  Hero.resize(40, 40);
  image(Hero, hero_x, hero_y);//主人公の表示
  move_hero();
  for (int k=0; k<Enemy_cnt-1; k++)enmemys[k].e_display();
  if (encount_enemy(hero_x, hero_y)) {
    hero_attack=5+level;
    page=2;
  }

  //ボス戦
  if (Boss_cnt==0) {
    if(normal==1){
      boss_attack+=5;
    }else{
      boss_attack+=6;
    }
    page=6;
  }
}
