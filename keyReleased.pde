void keyReleased() {
  if (page ==0) { //title
    if (key=='1') {
      if (menu==false) {
        menu=true;
      } else {
        menu=false;
      }
    }
    if (key == 'e') {
      level=levelE;
      Boss_cnt=Boss_cntE;
      BossL_cnt=BossL_cntE;
      Boss_btCnt=Boss_btCntE;
      enemy_attack=enemy_attackE;
      boss_attack=boss_attackE;
      normal=1;
      page=1;
    }
    if (key == 'n') {
      level=levelN;
      Boss_cnt=Boss_cntN;
      BossL_cnt=BossL_cntN;
      Boss_btCnt=Boss_btCntN;
      enemy_attack=enemy_attackN;
      boss_attack=boss_attackN;
      normal =3;
      page =1;
    }
    if (menu==true) {
      if (key=='a') {
        page=4;
      }
      if (key=='b') {
        page=7;
      }
      if (key =='c') {
        page=10;
      }
    }
  }

  if (page ==1) { //main_game
    if (key == 'z') {
      BossL_cnt=0;
      page=6;
    }
    if (key=='d') {
      BossL_cnt=1;
      page=6;
    }
    if (key == '5') {
      boss_attack+=5+(normal-1);
      page=6;
    }
    if (key == 'p') {
      if (useNear) {
        useNear=false;
      } else {
        useNear=true;
      }
    }
    if (key=='r') {
      page=0;
      menu=false;
    }
  }

  if (page == 2) { //battle
    if (key == '2' ) { 
      enmemys[n].enemy_HP-=hero_attack;
      EnemyAt() ;
    }
    if (key=='3'&& b_itemCnt>0) {
      go_item++;
    }
    if (key=='a' && b_itemCnt>0 && go_item%2==1) {
      item(0);
      b_itemCnt--;
      EnemyAt() ;
    }
    if (key=='b'&& b_itemCnt>0 && go_item%2==1) {
      item(1);
      b_itemCnt--;
      EnemyAt() ;
    }
    if (key=='c'&& b_itemCnt>0 && enemy_attack<=1 && go_item%2==1) {
      item(2);
      b_itemCnt--;
      EnemyAt() ;
    }
  }

  if (page == 3) { //Boss
    if (key == '2' ) { 
      BossHP-=hero_attack;
      BossAt() ;
    }
    if (key=='3'&& b_itemCnt>0) {
      go_item++;
    }
    if (key=='a'&&b_itemCnt>0 &&go_item%2==1) {
      item(0);
      b_itemCnt--;
      BossAt() ;
    }
    if (key=='b'&&b_itemCnt>0 &&go_item%2==1) {
      item(1);
      b_itemCnt--;
      BossAt() ;
    }
    if (key=='c'&& b_itemCnt>0 && boss_attack!=1 && go_item%2==1) {
      item(3);
      b_itemCnt--;
      BossAt() ;
    }

    //即死
    if (key == '0') {
      BossHP=0;
    }
  }

  if (page==4) { //character_info
    if (key == '1') {
      ch=0;
      bc=0;
      page=0;
      menu=false;
    }
    if (key == '2' && ch<5) {
      ch+=1;
      if (ch>2 && bc<3)bc++;
    }
  }

  if (page ==5) { //gameover
    if (key == '1') {
      hero_HP=100;
      level=1;
      normal=1;
      play_f=true;
      page=0;
    }
  }
  if (page ==6) { //Bossmap
    if (go_bt) {
      if (key=='1') {
        Boss_cnt=5;
        if (normal==1) {
          boss_attack-=5;
        } else {
          boss_attack-=6;
        }
        go_bt=false;
        page=1;
      }
      if (key =='2') {
        page=3;
      }
    } else {
      if (key =='2') {
        go_bt=true;
      }
    }
  }

  if (page==7) { //prologue
    if (key == '1') {
      page=0;
      menu=false;
    }
    if (key == '2' && pr<9) {
      pr+=1;
    }
  }
  if (page==9) { //celebrate
    if (key == 'r') {
      enemy_attack+=normal;
      if (BossL_cnt!=1) {
        page=1;
      } else {
        if (Boss_bt) {
          BossL_cnt=0;
          page=6;
        } else {
          Boss_bt=true;
          page=1;
        }
      }
    }
  }

  if (page==10) { //epilogue
    if (key == '1') {
      play_f=true;
      menu=false;
      bt=0;
      page=0;
    }
    if (key == '2') {
      if (bt<5) {
        bt+=1;
      } else {
        bt=0;
        play_f=true;
        page=1;
      }
    }
  }
}

boolean Boss_bt=false;
