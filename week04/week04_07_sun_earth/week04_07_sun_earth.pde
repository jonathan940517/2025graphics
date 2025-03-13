//week04_07_sun_earth
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  rotateY(radians(frameCount));
  sphere(50); //太陽
  pushMatrix();
    translate(150,0);
    rotateY(radians(frameCount));
    sphere(30); //地球
  popMatrix();
}
