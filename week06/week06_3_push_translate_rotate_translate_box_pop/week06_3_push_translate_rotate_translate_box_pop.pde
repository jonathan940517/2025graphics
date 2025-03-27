//week06_3_push_translate_rotate_translate_box_pop
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);
  pushMatrix();
    translate(x,y);
    if(mousePressed&&mouseButton==RIGHT)rotateZ(radians(frameCount));
    translate(-50,0,0);
    box(100,30,30);
   popMatrix();
}
float x=0,y=0;
void mouseDragged(){
  x+= mouseX - pmouseX;
  y+= mouseY - pmouseY;
}
