//week10_2_laplus_head_body_push_trt_pop
PImage laplus,head,body;
void setup(){
  size(450,700);
  laplus = loadImage("laplus.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
}
void draw(){
  background(#FFFFF2);
  image(laplus,0,0);
  fill(255,0,255,128);
  rect(0,0,450,700);
  pushMatrix();
    translate(228,180);
    rotate(radians(mouseX));
    translate(-228,-180);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
