void story(int n) {
  boolean returnTitle=false;
  if (mousePressed && dist(mouseX, mouseY, 150, 125)<50) {
    if (returnTitle==false) {
      returnTitle =true;
    }
  }
  if (returnTitle) {
    page=0;
  }
  st = n;
  switch(st) {
  case 0:
    prologue();
    break;
  case 1:
    boss_talk();
    break;
  default:
  }
}

void textbox() {
  fill(150);
  rect(80-10, (height/2)+100-10, width-150+20, height/4+20);
  fill(0);
  rect(80, (height/2)+100, width-150, height/4);
  rect(45, 120, 100, 50);
  fill(255);
  textSize(20);
  text("Title:1", 65, 150);
  if (pr!=9 && bt<5) {
    text("Next:2->", width-160, height-70);
  }
}
