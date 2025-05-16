import processing.sound.*;
SoundFile mySound;
PShape head, armUpperL, armLowerL, armUpperR, armLowerR;
PShape legUpperL, legLowerL, legUpperR, legLowerR;
PShape feetL, feetR, body, wingL, wingR, tail;

float[][] angle = new float[3][15]; // 關節角度
int XYZ = 0;
int ID = 0, R = 0;
ArrayList<String> lines = new ArrayList<String>();
boolean playInterp = false;

float rotationY = 0;
float lastMouseX;
boolean dragging = false;

void setup() {
  size(1600, 1000, P3D);
  mySound = new SoundFile(this,"music.mp3");
  head = loadShape("head.obj");
  armUpperL = loadShape("arm_upper_L.obj");
  armLowerL = loadShape("arm_lower_L.obj");
  armUpperR = loadShape("arm_upper_R.obj");
  armLowerR = loadShape("arm_lower_R.obj");
  legUpperL = loadShape("leg_upper_L.obj");
  legLowerL = loadShape("leg_lower_L.obj");
  legUpperR = loadShape("leg_upper_R.obj");
  legLowerR = loadShape("leg_lower_R.obj");
  feetL = loadShape("feet_L.obj");
  feetR = loadShape("feet_R.obj");
  body = loadShape("body.obj");
  wingL = loadShape("wing_L.obj");
  wingR = loadShape("wing_R.obj");
  tail = loadShape("tail.obj");
}

int interpFrame = 14;  // 插值用幾幀完成
int holdFrame = 23;    // 插值後停幾幀
int totalFrame = interpFrame + holdFrame;

void draw() {
  background(#FFDF8A);
  
  translate(800, 900);
  rotateY(rotationY);
  scale(500, -500, 500);

  if (playInterp && lines.size() >= 2) {
  int R2 = (R + 1) ;
  if(R2==lines.size()){
     playInterp=false;
     return;
  }
  float[] oldAngle = float(split(lines.get(R), ' '));
  float[] newAngle = float(split(lines.get(R2), ' '));
  int t = frameCount % totalFrame;

  if (t < interpFrame) {
    float alpha = t / float(interpFrame);
    for (int i = 0; i < angle.length; i++) {
      for (int j = 0; j < angle[0].length; j++) {
        angle[i][j] = lerp(oldAngle[j + i*15], newAngle[j + i*15], alpha);
      }
    }
  } else {
    for (int i = 0; i < angle.length; i++) {
      for (int j = 0; j < angle[0].length; j++) {
        angle[i][j] = newAngle[j + i*15];
      }
    }
    if(t == totalFrame-1) R = R2;
  }
}

  drawbody();
  drawHead();
  drawArms();
  drawWings();
  drawTail();
  drawLegs();
}

void drawHead() {
  pushMatrix();
  translate(0, 1.1, 0);
  rotateX(angle[0][0]);
  rotateY(angle[1][0]);
  rotateZ(angle[2][0]);
  translate(0, -1.1, 0);
  shape(head);
  popMatrix();
}

void drawArms() {
  pushMatrix();
  translate(0.11, 1.05, -0.03);
  rotateX(angle[0][1]);
  rotateY(angle[1][1]);
  rotateZ(angle[2][1]);
  translate(-0.11, -1.05, 0.03);
  shape(armUpperL);
  pushMatrix();
  translate(0.28, 0.94, -0.03);
  rotateX(angle[0][2]);
  rotateY(angle[1][2]);
  rotateZ(angle[2][2]);
  translate(-0.28, -0.94, 0.03);
  shape(armLowerL);
  popMatrix();
  popMatrix();

  pushMatrix();
  translate(-0.11, 1.05, -0.03);
  rotateX(angle[0][3]);
  rotateY(angle[1][3]);
  rotateZ(angle[2][3]);
  translate(0.11, -1.05, 0.03);
  shape(armUpperR);
  pushMatrix();
  translate(-0.28, 0.94, -0.03);
  rotateX(angle[0][4]);
  rotateY(angle[1][4]);
  rotateZ(angle[2][4]);
  translate(0.28, -0.94, 0.03);
  shape(armLowerR);
  popMatrix();
  popMatrix();
}

void drawWings() {
  float flap = sin(radians(frameCount * 4)) * 0.4;

  pushMatrix();
  translate(0.025, 0.97, -0.08);
  rotateZ(flap);
  translate(-0.025, -0.97, 0.08);
  shape(wingL);
  popMatrix();

  pushMatrix();
  translate(-0.025, 0.97, -0.08);
  rotateZ(-flap);
  translate(0.025, -0.97, 0.08);
  shape(wingR);
  popMatrix();
}

void drawTail() {
  float wag = sin(radians(frameCount * 2)) * 0.2;
  pushMatrix();
  translate(0, 0.7, -0.13);
  rotateZ(wag);
  translate(0, -0.7, 0.13);
  shape(tail);
  popMatrix();
}

void drawLegs() {
  // 右腳（可動畫）
  pushMatrix();
  translate(-0.06, 0.75, -0.1);
  rotateX(angle[0][5]);
  rotateY(angle[1][5]);
  rotateZ(angle[2][5]);
  translate(0.06, -0.75, 0.1);
  shape(legUpperR);
  pushMatrix();
  translate(-0.06, 0.42, -0.04);
  rotateX(angle[0][6]);
  rotateY(angle[1][6]);
  rotateZ(angle[2][6]);
  translate(0.06, -0.42, 0.04);
  shape(legLowerR);
  pushMatrix();
  translate(-0.08, 0.22, -0.04);
  rotateX(angle[0][7]);
  rotateY(angle[1][7]);
  rotateZ(angle[2][7]);
  translate(0.08, -0.22, 0.04);
  shape(feetR);
  popMatrix();
  popMatrix();
  popMatrix();

  // 左腳（靜止）
  pushMatrix();
  translate(0.06, 0.75, -0.1);
  rotateX(angle[0][8]);
  rotateY(angle[1][8]);
  rotateZ(angle[2][8]);
  translate(-0.06, -0.75, 0.1);
  shape(legUpperL);
  pushMatrix();
  translate(0.06, 0.42, -0.04);
  rotateX(angle[0][9]);
  rotateY(angle[1][9]);
  rotateZ(angle[2][9]);
  translate(-0.06, -0.42, 0.04);
  shape(legLowerL);
  pushMatrix();
  translate(0.08, 0.22, -0.04);
  rotateX(angle[0][10]);
  rotateY(angle[1][10]);
  rotateZ(angle[2][10]);
  translate(-0.08, -0.22, 0.04);
  shape(feetL);
  popMatrix();
  popMatrix();
  popMatrix();
}

void drawbody(){
  pushMatrix();
  translate(0, 0.8, 0);
  rotateX(angle[0][11]);
  rotateY(angle[1][11]);
  rotateZ(angle[2][11]);
  translate(0, -0.8, 0);
  shape(body);
  popMatrix();
}

void mouseDragged() {
  if (mouseButton == LEFT) {
    angle[XYZ][ID] += (mouseX - pmouseX) * 0.005;
  } else if (mouseButton == RIGHT) {
    rotationY += radians(mouseX - pmouseX);
  }
}

void mousePressed() {
  lastMouseX = mouseX;
}

void mouseReleased() {
  dragging = false;
}

void keyPressed() {
  if (key >= '0' && key <= '9') ID = key - '0';
  if (key == '-') ID = 10;
  if (key == '=') ID = 11;
  
  if (key == 'z') XYZ = 0;
  if (key == 'x') XYZ = 1;
  if (key == 'c') XYZ = 2;
  
  if (key == '/'){
     angle[0][ID] = 0;
     angle[1][ID] = 0;
     angle[2][ID] = 0;
  }

  if (key == 's') {
    String now = "";
    for (int i = 0; i < angle.length; i++) {
      for (int j = 0; j < angle[0].length; j++){
        now += angle[i][j] + " ";
      } 
    }
    lines.add(now);
    saveStrings("angles.txt", lines.toArray(new String[0]));
  }

  if (key == 'r') {
    lines.clear();
    String[] file = loadStrings("angles.txt");
    if (file != null) for (String line : file) lines.add(line);
    if (lines.size() > 0) {
      float[] now = float(split(lines.get(0), ' '));
      for (int i = 0; i < angle.length; i++){
        for (int j = 0; j < angle[0].length; j++){
          angle[i][j] = now[i*15+j];
        }
      }
      R = 0;
    }
  }

  if (key == 'p') {
    mySound.play();
    playInterp = !playInterp;
  }
}
