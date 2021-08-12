void prologue() {
  boolean returnTitle=false;
  if (mousePressed && dist(mouseX, mouseY, 150, 125)<100) {
    if (returnTitle==false) {
      returnTitle =true;
    }
  }
  if (returnTitle) {
    page=0;
  }
  if (pr==0) {
    background(0);
    Hero_i.resize(100, 100);
    image(Hero_i, 350, 200);//主人公の表示
    fill(255);
    textSize(30);
    text("タロウの冒険記　~プロローグ~", 200, 150);
    fill(255);
    rect(width-170, height-100, 150, 50);
    fill(0);
    textSize(25);
    text("つぎへ:2->", width-160, height-70);
  }
  if (pr==1 || pr==2) {
    image(mori1, 0, 0, width, height);
    textbox();
    Hero_i.resize(100, 100);
    image(Hero_i, 300, 200);//主人公の表示
    if (pr==1) {
      fill(255);
      textSize(20);
      text("日本の陸軍自衛隊にいたタロウは深い森の中で訓練を行っていた。", 100, 450);
    } else {
      fill(255);
      textSize(20);
      text("一人で行動していたタロウだったが訓練終了の時刻を過ぎても", 100, 450);
      text("訓練が終了しない。", 100, 490);
    }
  } else if (pr==3) {
    image(mori2, 0, 0, width, height);
    textbox();
    fill(255);
    textSize(20);
    text("そんな森の中から一筋の光が差し込む。", 100, 450);
  } else if (pr==4) {
    background(255);
    textbox();
    fill(255);
    textSize(20);
    text("その光へと向かうと・・・", 100, 450);
  } else if (pr==5 || pr==6 || pr==7 || pr==8 || pr==9) {
    sabaku.resize(width, height);
    image(sabaku, 0, 0, width, height);
      textbox();
    if (pr==5) {
      Hero_i.resize(100, 100);
      image(Hero_i, 300, 200);//主人公の表示
      fill(255);
      textSize(30);
      text("向かった先には砂漠が広がっていた！！！", 100, 450);
      textSize(20);
      text("さらにタロウは目を疑った・・・", 100, 490);
    } else if (pr==6) {
      enemy1_i.resize(200, 200);
      image(enemy1_i, width/2, height/4);//敵の表示
      fill(255);
      textSize(20);
      text("砂漠には見たことの無い怪物がいたのだ！", 100, 450);
    } else if (pr==7 || pr==8 || pr==9) {
      Hero_i.resize(100, 100);
      image(Hero_i, 200, 220);//主人公の表示
      enemy1_i.resize(200, 200);
      image(enemy1_i, width/2, height/4);//敵の表示
      if (pr==7) {
        fill(255);
        textSize(20);
        text("タロウの武器は銃のみ。", 100, 450);
      } else if (pr==8) {
        text("他に使えそうなのは、力を上げるドリンク、", 100, 450);
        text("回復する食料、相手の力を下げる薬だけ", 100, 490);
      } else {
        text("タロウはこの先どうなってしまうのだろうか･･･", 100, 450);
      }
    }
  }
}
