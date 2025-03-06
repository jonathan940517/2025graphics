//week03_05_mouse_cat_x_y
void setup(){
  size(400,400);
}
float x,y;
void draw(){
  background(255);
  ellipse(mouseX,mouseY,40,20);
  ellipse(x,y,40,40);
  x = (x*20+mouseX) / 21;
  y = (y*20+mouseY) / 21;
}
