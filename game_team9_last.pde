//画面を管理する変数
int page=0;
//それぞれのキャラクターに関する変数
int ch=0;
int bc=0;//ボスの番号
float hero_x=400, hero_y=500;
int hero_HP=100, level=1;
int BossHP = 100;
//システムに関する変数
int current, starttm;
//画像に関する変数
PImage Hero, field, battle_field, enemy_1, easy_mode, normal_mode;
PImage BossL, Hero_i, enemy1_i, Bossfield, mori1, mori2, sabaku, Boss_i;
PImage enemy2_i, enemy1n_i, enemy2n_i;
PImage field_2, field_3, field_4, field_5;
PImage enemy_2, enemy_1n, enemy_2n;
PImage boss1, boss2, boss3, bossE, bossK;
PImage enemy_2_i, enemy_1n_i, enemy_2n_i, boss1_i, boss2_i, boss3_i, bossE_i, bossK_i;
PImage great, cong;
//敵に関する
int Enemy_cnt=8;
int e_n;
//敵の番号
int n=0;
//メニューに関する変数
boolean menu=false;
//key入力
boolean KEY = true;
Enemy[] enmemys = new Enemy[Enemy_cnt];
//ストーリーに関する変数
int st=0, pr=0;
boolean go_bt=false;
//ボス戦に関する変数
int Boss_cnt, BossL_cnt, Boss_btCnt;
boolean play_f=true;
//ノーマルに関する変数
int normal=0;
//賛辞に関する変数
int good=0;
//イージー、ノーマルそれぞれの変数を補完
int levelE=1,levelN=1;
int Boss_cntE=5, BossL_cntE=5, Boss_btCntE=1;
int Boss_cntN=5, BossL_cntN=5, Boss_btCntN=3;
int enemy_attackE=4,enemy_attackN=4;
int boss_attackE=2,boss_attackN=2;
void setup() {
  size(800, 600);
  dataSet();
  dataSet2();
  PFont font=createFont("Meiryo", 50);
  textFont(font);
  ;
}
void draw() {
  background(255);
  switch(page) {
  case 0:
    title();
    break;
  case 1:
    main_game();
    break;
  case 2:
    battle();
    break;
  case 3:
    Boss();
    break;
  case 4:
    character();
    break;
  case 5:
    gameOver();
    break;
  case 6:
    Bossmap();
    break;
  case 7:
    story(0);
    break;
  case 9:
    Celebrate(good);
    break;
  case 10:
    story(1);
    break;
  default:
  }
}
