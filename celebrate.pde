void Celebrate(int n) {
  Hero.resize(20, 20);
  enemy_1.resize(20, 20);
  while (dist(enmemys[n].enemy_x, enmemys[n].enemy_y, hero_x, hero_y)<=15) {
    enmemys[n].enemy_x=random(enmemys[n].enemy_size, enmemys[n].MAX_X);
    enmemys[n].enemy_y=random(enmemys[n].enemy_size, enmemys[n].MAX_Y);
  }
  b_itemCnt=6-normal;
  hero_HP=100;
  go_item=0;
  go_bt=false;
  dataSet();
  if (n==0) {
    image(great, 0, 0, width, height);//great賛辞
  } else if (n==1) {
    image(cong, 0, 0, width, height);//conglatulation賛辞
  }
}
