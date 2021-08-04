void move_hero() {
  if (keyPressed) {
    
    if (key == CODED) { 
      if (keyCode == UP)hero_y-=5;
      if (keyCode == RIGHT)hero_x+=5;
      if (keyCode == DOWN)hero_y+=5;
      if (keyCode == LEFT)hero_x-=5;
    }
    
  }
}
