//week10_5_laplus_many_angle_ID_mouseDragged
PImage laplus,head,body,lefthand,righthand,leftleg1,rightleg1,leftleg2,rightleg2;
float []angle = new float[20];
int ID = 0;
void mouseDragged(){
  angle[ID] += mouseX - pmouseX;
}
void keyPressed(){
  if(key>='1'&&key<='9')ID = key-'0';
}


void setup(){
  size(450,700);
  laplus = loadImage("laplus.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  lefthand = loadImage("lefthand.png");
  righthand = loadImage("righthand.png");
  leftleg1 = loadImage("leftupleg.png");
  rightleg1 = loadImage("rightupleg.png");
  leftleg2 = loadImage("leftleg.png");
  rightleg2 = loadImage("rightleg.png");
}
void draw(){
  background(#FFFFF2);
  image(laplus,0,0);
  fill(255,0,255,128);
  rect(0,0,450,700);
  pushMatrix();
    translate(228,180);
    rotate(sin(angle[1]));
    translate(-228,-180);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
  pushMatrix();
    translate(170,260);
    rotate(sin(angle[2]));
    translate(-170,-260);
    image(lefthand,0,0);
  popMatrix();
  pushMatrix();
    translate(280,260);
    rotate(sin(angle[3]));
    translate(-280,-260);
    image(righthand,0,0);
  popMatrix();
  pushMatrix();
    translate(190,410);
    rotate(-cos(angle[4]));
    translate(-190,-410);
    image(leftleg1,0,0);
    pushMatrix();
      translate(170,500);
      rotate(cos(angle[6]));
      translate(-170,-500);
      image(leftleg2,0,0);
    popMatrix();
  popMatrix();
  pushMatrix();
    translate(260,410);
    rotate(cos(angle[5]));
    translate(-260,-410);
    image(rightleg1,0,0);
    pushMatrix();
      translate(270,500);
      rotate(cos(angle[7]));
      translate(-270,-500);
      image(rightleg2,0,0);
    popMatrix();
  popMatrix();

  
}
