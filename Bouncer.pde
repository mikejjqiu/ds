class Bouncer {

  float x, y, vx, vy;
  int h, s, b;

  Bouncer() {
    x = width/2; //= random(5, width-5);
    y = height/2; //random(5, height-5);
    vx = random(-5, 5);
    vy = random(-5, 5);
    h = int(random(255));
    s = 255;
    b = 255;
  }

  void act() {
    x = x + vx;
    y = y + vy;
    if (x < 5 || x > width-5)  vx = -vx;
    if (y < 5 || y > height-5) vy = -vy;

    int i = 0;
    while (i < numBouncers) {
      if (x != bouncers[i].x && y!= bouncers[i].y) {
        if (dist(x, y, bouncers[i].x, bouncers[i].y) < 10) {
          vx = (x - bouncers[i].x)/10;
          vy = (y - bouncers[i].y)/10;
        }
      }
      i++;
    }
  }

  void show() {
    //strokeWeight(6);
    //stroke(0);
    noStroke();
    fill(h, y, x);
    circle(x, y, 10);
  }
}
