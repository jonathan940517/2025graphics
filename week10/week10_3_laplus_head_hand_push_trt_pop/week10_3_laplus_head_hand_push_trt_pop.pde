//week10_3_laplus_head_hand_push_trt_pop
PImage laplus,head,body,lefthand,righthand;
void setup(){
  size(450,700);
  laplus = loadImage("laplus.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  lefthand = loadImage("lefthand.png");
  righthand = loadImage("righthand.png");
}
void draw(){
  background(#FFFFF2);
  image(laplus,0,0);
  fill(255,0,255,128);
  rect(0,0,450,700);
  pushMatrix();
    translate(228,180);
    rotate(sin(radians(mouseX)));
    translate(-228,-180);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
  pushMatrix();
    translate(170,260);
    rotate(sin(radians(mouseX)));
    translate(-170,-260);
    image(lefthand,0,0);
  popMatrix();
  pushMatrix();
    translate(280,260);
    rotate(sin(radians(-mouseX)));
    translate(-280,-260);
    image(righthand,0,0);
  popMatrix();
}
