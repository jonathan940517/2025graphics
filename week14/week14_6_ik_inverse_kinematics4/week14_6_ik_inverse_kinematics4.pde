//week14_6_ik_inverse_kinematics4
void setup(){
  size(400,400);
  for(int i=0;i<2;i++){
    p[i] = new PVector(200,350-50*i);
  }
}
PVector [] p = new PVector[6];
void draw(){
  background(255);
  for(int i=0;i<2;i++){
    if(i>0)line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);
    ellipse(p[i].x,p[i].y,8,8);
    fill(0);
    text("p:"+i,p[i].x+10,p[i].y);
  }
  PVector now = new PVector(mouseX,mouseY);
  PVector v = PVector.sub(now,p[0]).normalize().mult(50);
  p[1].x=p[0].x+v.x;
  p[1].y=p[0].y+v.y;
  ellipse(mouseX,mouseY,6,6);
  line(p[0].x,p[0].y,mouseX,mouseY);
}
