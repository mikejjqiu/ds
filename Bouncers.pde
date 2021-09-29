Bouncer[] bouncers;
int numBouncers = 500;
PImage bg;

void setup() {
  size(1000, 800);
  //frameRate(70);
  //colorMode(HSB);
  bouncers = new Bouncer[numBouncers];
  int i = 0;
  while (i < numBouncers) {
    bouncers[i] = new Bouncer();
    i++;
  }
  bg = loadImage("1.jpg");
}


void draw() {
  tint(255, 70);
  image(bg, 0, 0, width, height);
  int i = 0;
  while (i < numBouncers) {
    bouncers[i].act();
    bouncers[i].show();
    i++;
  }
}
