//week02_6_ArrayList_ArrayList_Integer_for_for_mouse
PImage img;
ArrayList<Integer>x,y;
ArrayList<ArrayList<Integer>>xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>>yy = new ArrayList<ArrayList<Integer>>();
void setup(){
  size(400,400);
  img = loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255,200);
  rect(0,0,400,400);
  for(int I=0;I<xx.size();I++){
    ArrayList<Integer>x = xx.get(I);
    ArrayList<Integer>y = yy.get(I);
    for(int i=1;i<x.size();i++){
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
