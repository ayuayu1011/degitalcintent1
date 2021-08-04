void EnemyAt() {
  text("敵の攻撃", 500, 150);
  hero_HP-=enemy_attack;
  if (hero_HP<=0) {
    page=5;
  }
}

void BossAt() {
  text("敵の攻撃", 500, 150);
  hero_HP-=boss_attack;
  if (hero_HP<=0) {
    page=5;
  }
}
