//week14_4_ik_inverse_kinematics2
void setup(){
  size(400,400);
}
float [] angle = new float[5];
void draw(){
  background(255);
  translate(200,350);
  ellipse(0,0,12,12);
  
  pushMatrix();
  rotate(radians(angle[0]));
  rect(0,-5,50,10);
  pushMatrix();
    translate(50,0);
    rotate(radians(angle[1]));
    rect(0,-5,50,10);
  popMatrix();
  popMatrix();
}
void mouseDragged(){
  angle[ID] += mouseX-pmouseX;
}
int ID=0;
void keyPressed(){
  if(key=='0')ID=0;
  if(key=='1')ID=1;
}
