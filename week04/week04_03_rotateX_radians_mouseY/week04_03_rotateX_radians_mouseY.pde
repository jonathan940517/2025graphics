//week04_03_rotateX_radians_mouseY
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  rotateX(radians(-mouseY));
  box(200);
}
