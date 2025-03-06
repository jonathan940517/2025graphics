//week03_01_P3D_translate_rotateY_radians_box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));
  box(200); 
}
