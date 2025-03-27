//week06_5_sphere_push_T_R_T_box_pop
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  
  
  fill(252,131,77);
  pushMatrix();
    translate(x,y);
    box(200,50,25);
    pushMatrix();
      translate(100,0);
      rotate(radians(frameCount));
      translate(25,0,0);
      box(50,25,50);
    popMatrix();
  popMatrix();
}
float x=0,y=0;
void mouseDragged(){
  x+= mouseX - pmouseX;
  y+= mouseY - pmouseY;
  println("x: "+x+"y: "+y);
}
