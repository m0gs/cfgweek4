
float ballSize = 40;
PVector location, velocity;
float yspeed = 5, xspeed = 5;
float gravity = 0.1;
float braking = 0.09;

Ball bouncy; 
void setup() {
  size(640, 240);
  bouncy = new Ball(width/2, 60, 2.5, 5);
}
void draw() {
  background(#92CFED);
  bouncy.update();
}

