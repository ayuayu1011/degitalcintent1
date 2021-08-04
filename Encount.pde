boolean encount_enemy(float hx,float hy){
     
  for (int k=0; k<Enemy_cnt-1; k++) {
    if (dist(enmemys[k].enemy_x,enmemys[k].enemy_y,hx,hy)<=15) {
      n = k;
      e_n=enmemys[k].return_e_n();
      return true;
    }
  }
  return false;
}
