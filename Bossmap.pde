void Bossmap() {
  if (BossL_cnt==0) {
    BossHP=500;
    hero_HP=500;
    Boss_cnt=0;
    hero_attack=5+level;
    boss_attack=30*normal+10;
    image(Bossfield, 0, 0, width, height);//背景マップの表示
    fill(0);
    rect(width/2-150, height/2+30, 300, 50);
    fill(150);
    rect(80-10, (height/2)+100-10, width-150+20, height/4+20);
    fill(0);
    rect(80, (height/2)+100, width-150, height/4);
    bar();
    BossL.resize(200, 200);
    image(BossL, width/2-100, height/4);//敵の表示
    fill(255);
    textSize(30);
    text("ボスドラゴン", width/2-90, height/2+70);
    if (go_bt) {
      text("にげる:1         たたかう:2", 200, 450);
    } else {
      text("BD:よくここまで来たな！我が相手だ！！！", 100, 450);
      text("つぎへ:2->", width-240, height-70);
    }
  } else {
    BossHP=100;
    hero_HP=100;
    Boss_cnt=0;
    hero_attack=5+level;
    image(battle_field, 0, 0, width, height);//背景マップの表示
    fill(150);
    rect(80-10, (height/2)+100-10, width-150+20, height/4+20);
    fill(0);
    rect(80, (height/2)+100, width-150, height/4);
    fill(0);
    rect(width/2-150, height/2+30, 300, 50);
    if (BossL_cnt==5) {
      boss1.resize(150, 150);
      image(boss1, width/2-75, 150);//敵の表示
      fill(255);
      textSize(30);
      text("エイリアン Y", width/2-80, height/2+70);
      if (go_bt) {
        text("にげる:1         たたかう:2", 200, 450);
      } else {
        text("AY:#%&%$+*?<!%$#&%#~%$#@?%", 100, 450);
        text("つぎへ:2->", width-240, height-70);
      }
    } else if (BossL_cnt==4) {
      boss2.resize(150, 150);
      image(boss2, width/2-75, 150);//敵の表示
      fill(255);
      textSize(30);
      text("エイリアン Y", width/2-80, height/2+70);
      if (go_bt) {
        text("にげる:1         たたかう:2", 200, 450);
      } else {
        text("AY:#%&%$+*?<!%$#&%#~%$#", 100, 450);
        text("つぎへ:2->", width-240, height-70);
      }
    } else if (BossL_cnt==3) {
      boss3.resize(150, 150);
      image(boss3, width/2-75, 150);//敵の表示
      fill(255);
      textSize(30);
      text("エイリアン Y", width/2-80, height/2+70);
      if (go_bt) {
        text("にげる:1         たたかう:2", 200, 450);
      } else {
        text("AY:#%&%$+*?<!%$#&%#~%$#", 100, 450);
        text("つぎへ:2->", width-240, height-70);
      }
    } else if (BossL_cnt==2) {
      bossE.resize(150, 150);
      image(bossE, width/2-75, 150);//敵の表示
      fill(255);
      textSize(30);
      text("エイリアン Z", width/2-80, height/2+70);
      if (go_bt) {
        text("にげる:1         たたかう:2", 200, 450);
      } else {
        text("AZ:オマエタオス。コレオレノシメイ。", 100, 450);
        text("つぎへ:2->", width-240, height-70);
      }
    } else if (BossL_cnt==1) {
      bossK.resize(150, 150);
      image(bossK, width/2-75, 150);//敵の表示
      fill(255);
      textSize(30);
      text("ダークナイト", width/2-80, height/2+70);
      if (go_bt) {
        text("にげる:1         たたかう:2", 200, 450);
      } else {
        text("DK:ボスのところへは行かせん！！", 100, 450);
        text("つぎへ:2->", width-240, height-70);
      }
    }
  }
}
