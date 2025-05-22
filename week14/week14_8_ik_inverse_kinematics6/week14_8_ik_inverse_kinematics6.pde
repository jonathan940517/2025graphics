//week14_8_ik_inverse_kinematics6
void setup(){
  size(400,400);
  for(int i=0;i<6;i++){
    p[i] = new PVector(200,350-50*i);
  }
}
PVector [] p = new PVector[6];
void draw(){
  background(255);
  for(int i=0;i<6;i++){
    if(i>0)line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);
    ellipse(p[i].x,p[i].y,8,8);
    fill(0);
    text("p:"+i,p[i].x+10,p[i].y);
  }
  PVector now = new PVector(mouseX,mouseY);
  for(int i=5;i>=1;i--){
    PVector v = PVector.sub(now,p[i]).normalize().mult(50);
    p[i].x=now.x-v.x;
    p[i].y=now.y-v.y;
    now = p[i];
  }
    ellipse(mouseX,mouseY,6,6);
    //line(p[4].x,p[4].y,mouseX,mouseY);
}
