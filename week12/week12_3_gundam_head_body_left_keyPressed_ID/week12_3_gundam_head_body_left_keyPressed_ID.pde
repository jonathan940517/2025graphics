//week12_2_gundam_head_body_uparm_upuparm_hand
PShape body,head;
PShape uparm1,upuparm1,hand1;
void setup(){
  size(400,400,P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
}
float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 0;
void mouseDragged(){
  angleX[ID] += radians(mouseX - pmouseX);
  angleY[ID] += radians(mouseY - pmouseY);
}

void draw(){
  background(204);  
  translate(200,300);
  sphere(10);
  
  scale(10,-10,10);
  shape(body,0,0);
  pushMatrix();
    translate(0,22.5);
    rotateY(angleX[0]);
    rotateX(angleY[0]);
    translate(0,-22.5);
    shape(head,0,0);
  popMatrix();
  
  
  pushMatrix();
    shape(upuparm1,0,0);
    pushMatrix();
      translate(-4.1,19.9);
      //rotateZ(radians(mouseX));
      rotateZ(angleY[2]);
      rotateY(angleX[2]);
      translate(4.1,-19.9);
      shape(uparm1,0,0);
      pushMatrix();
        translate(-4.5,16.9);
        rotateX(angleY[3]);
        rotateY(angleX[3]);
        translate(4.5,-16.9);
        //translate(mouseX/10.0,-mouseY/10.0);
        //println(mouseX/10.0,-mouseY/10.0);
        shape(hand1,0,0);
      popMatrix();
    popMatrix();
  popMatrix();
}
