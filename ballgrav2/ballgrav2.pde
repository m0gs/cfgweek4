float x;
float ballSize = 40;
float y;
float yspeed = 5, xspeed = 5;
float gravity = 0.1;
float braking = 0.09;


void setup() {
  size(500, 500);
}
 
void draw() {
  background(#11F21A);
  fill(#F211C2);
  ellipse(x, y, 50, 50);
  if(y>height) {
    yspeed = yspeed*-1;
  }else if (y+ ballSize/2==0){
    yspeed = yspeed * -1;
  }
    x = x + xspeed;
    y = y+yspeed;
    yspeed = yspeed+gravity;
  
 if (y + ballSize/2 > height) {
   yspeed *= -(1- braking);
   y = height - ballSize/2; 
 
 
 if (x + ballSize >= width) {
   xspeed *= -(1-braking);
   x = width - ballSize/2;
 }else if (x - ballSize/2 <= 0) {
   xspeed *= -(1-braking);
   x = ballSize/2;
 }

 }
}
 

    


