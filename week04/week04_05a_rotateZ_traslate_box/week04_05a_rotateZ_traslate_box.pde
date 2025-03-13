//week04_05a_rotateZ_traslate_box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  //分別註解，觀察變化
  rotateZ(radians(mouseX));
  translate(0,-50);
  box(10,100,10);
}
