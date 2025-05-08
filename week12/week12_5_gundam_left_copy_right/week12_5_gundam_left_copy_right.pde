//week12_5_gundam_head_body_push+trt_pop_again
PShape body,head;
PShape uparm1,upuparm1,hand1;
PShape uparm2,upuparm2,hand2;
void setup(){
  size(400,400,P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
  uparm2 = loadShape("uparm2.obj");
  upuparm2 = loadShape("upuparm2.obj");
  hand2 = loadShape("hand2.obj");
}
float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 0;
void mouseDragged(){
  angleX[ID] += radians(mouseX - pmouseX);
  angleY[ID] += radians(mouseY - pmouseY);
}
void keyPressed(){
  if(key>='0'&&key<='9')ID = key-'0';
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
    translate(-2.9,20.8);
    rotateX(angleY[1]);
    rotateY(angleX[1]);
    translate(2.9,-20.8);
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
    
    pushMatrix(); // 右邊的手臂系列
    translate(+2.9, 20.8);
    rotateY(angleX[4]);
    rotateX(angleY[4]);
    translate(-2.9, -20.8); // 把剛剛印出來的數值, 拿來用
    shape(upuparm2, 0, 0); // 上上手臂
    pushMatrix();
      translate(+4.1, 19.9); // 再掛回去原本的位置
      rotateZ(angleY[5]); // week12_2 y方向 上下拖曳, 是對Z軸轉
      rotateY(angleX[5]); // week12_2 x方向 上下拖曳, 是對Y軸轉
      translate(-4.1, -19.9); // 把物體的旋轉中心, 放到座標中心
      shape(uparm2, 0, 0); // 上手臂
      pushMatrix();
        translate(+4.5, +16.9);
        rotateX(angleY[6]); // week12_2 y方向 上下拖曳, 是對X軸轉
        rotateY(angleX[6]); // week12_2 x方向 上下拖曳, 是對Y軸轉
        translate(-4.5, -16.9); // 剛剛把手移到座標中心的移動量
        shape(hand2, 0, 0);
      popMatrix();
    popMatrix();
  popMatrix();
}
