class Enemy {
  int MAX_X=750, MAX_Y=550;//ランダムの上限
  float enemy_x, enemy_y, enemy_size=40;
  int enemy_HP, enemy_PW;
  boolean alive = false;
  int e_na;

  Enemy() {
    enemy_x = random(enemy_size, MAX_X);
    enemy_y = random(enemy_size, MAX_Y);
    enemy_HP=100;
    enemy_PW=20;
    e_na=int(random(0, 2));
  }

  int return_e_n() {
    return e_na;
  }
  void e_display() {
    if (useNear && normal==3) {
      near_enemy();
    } else {
      alive=true;
    }
    if (normal==1) {
      if (e_na==0) {
        if (alive)image(enemy_1, enemy_x, enemy_y);//敵の表示
      } else if (e_na==1) {
        if (alive)image(enemy_2, enemy_x, enemy_y);//敵の表示
      }
    } else if (normal==3) {
      if (e_na==0) {
        if (alive)image(enemy_1n, enemy_x, enemy_y);//敵の表示
      } else if (e_na==1) {
        if (alive)image(enemy_2n, enemy_x, enemy_y);//敵の表示
      }
    }
  }
}
