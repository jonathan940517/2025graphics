//week05_6_pushMatrix_popMatrix_good
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  popMatrix();
  
  pushMatrix();
  translate(width/2-100,height/2);
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  popMatrix();

}
