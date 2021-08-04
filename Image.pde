void dataSet() {
  Hero=loadImage("hero.png");
  Hero.resize(40, 40);
  field=loadImage("field.png");
  enemy_1=loadImage("enemy_1.png");
  enemy_1.resize(40, 40);
  enemy_1n=loadImage("enemy_1n.png");
  enemy_1n.resize(40, 40);
  enemy_2=loadImage("enemy_2.png");
  enemy_2.resize(40, 40);
  enemy_2n=loadImage("enemy_2n.png");
  battle_field=loadImage("b_field.png");
  enemy_2n.resize(40, 40);
  for (int i = 0; i < Enemy_cnt; i++)enmemys[i]=new Enemy();
}

void dataSet2() {
  field_2=loadImage("field_2.jpeg");
  field_3=loadImage("field_3.jpeg");
  field_4=loadImage("field_4.jpeg");
  field_5=loadImage("field_5.jpeg");
  Bossfield=loadImage("Bossfield.png");
  BossL=loadImage("x5.gif");
  mori1=loadImage("mori1.jpeg");
  mori2=loadImage("mori2.jpeg");
  sabaku=loadImage("sabaku.jpeg");
  Boss_i=loadImage("x5_info.gif");
  easy_mode=loadImage("x7.gif");
  easy_mode.resize(100, 50);
  normal_mode = loadImage("x8.gif");
  normal_mode.resize(100, 50);
  boss1=loadImage("boss1.gif");
  boss2=loadImage("boss2.gif");
  boss3=loadImage("boss3.gif");
  bossE=loadImage("bossE.gif");
  bossK=loadImage("bossK.png");
  great=loadImage("great.png");
  cong=loadImage("conglatulation.png");
  Hero_i=loadImage("hero_info.png");
  enemy1_i=loadImage("enemy_1_info.png");
  enemy2_i=loadImage("enemy_2_info.png");
  enemy1n_i=loadImage("enemy_1n_info.png");
  enemy2n_i=loadImage("enemy_2n_info.png");
  boss1_i=loadImage("boss1_info.gif");
  boss2_i=loadImage("boss2_info.gif");
  boss3_i=loadImage("boss3_info.gif");
  bossE_i=loadImage("bossE_info.gif");
  bossK_i=loadImage("bossK.png");
}
