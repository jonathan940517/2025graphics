//week02_4_PImage_loadImage_background_fill_println
PImage img;
void setup(){
  size(400,400);
  img = loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255,mouseX);
  println(mouseX);
  rect(0,0,400,400);
}
