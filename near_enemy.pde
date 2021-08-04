void near_enemy() {
  for (int k=0; k<Enemy_cnt-1; k++) {
    if (dist(enmemys[k].enemy_x, enmemys[k].enemy_y, hero_x, hero_y)<=60) {
      enmemys[k].alive=true;
    }else{
      enmemys[k].alive=false;
    }
  }
}

boolean useNear=true;
