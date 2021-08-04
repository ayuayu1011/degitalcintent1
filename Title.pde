void title() {
  background(100, 0, 0);
  ch=0;
  pr=0;
  bt=0;
  int x1=120, y1=210;
  int x2=590, y2=210;


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
  text("key select", 340, 450);

  if (menu) {
    //キャラクター紹介への移動
    fill(0);
    rect(width-120, height/8-50, 120, 30);
    fill(255);
    textSize(20);
    text("character:a", width-110, height/6-50);

    //プロローグへの移動
    fill(0);
    rect(width-120, 75, 120, 30);
    fill(255);
    textSize(20);
    text("prologue:b", width-110, height/4-50);
    
    //エピローグへの移動
    fill(0);
    rect(width-120, 125, 120, 30);
    fill(255);
    textSize(20);
    text("epilogue:c", width-110, height/3-50);
    
    fill(0);
    textSize(15);
    text("close:1", width-80, 20);
  }else{
    fill(0);
    rect(width-140, height/25, 120, 50);
    fill(255);
    textSize(15);
    text("OpenMenu:1", width-130, height/10);
  }
}
