//week02_5_ArrayList_Integer_new_for_size_get_add_mouseDragged
ArrayList<Integer>x = new ArrayList<Integer>();
ArrayList<Integer>y = new ArrayList<Integer>();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("cute.png");
}

void draw(){
  background(img);
  fill(255,200);
  rect(0,0,400,400);
  stroke(255,0,0);
  for(int i=1;i<x.size();i++){
    line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
