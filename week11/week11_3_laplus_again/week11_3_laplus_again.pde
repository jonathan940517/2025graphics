//week11_3_laplus_again
PImage laplus,head,body,lefthand,righthand,leftleg1,rightleg1,leftleg2,rightleg2;
float []angleX = new float[10];
float []angleY = new float[10];
int ID = 0;
void mouseDragged(){
  angleX[ID] += (mouseX - pmouseX)*0.1;
  angleY[ID] += (mouseY - pmouseY)*0.1;
}
void keyPressed(){
  if(key>='1'&&key<='9')ID = key-'0';
  if(key=='s'){
    String now = "";
    for(int i=0;i<10;i++){
      now += angleX[i] + " "; 
      now += angleY[i] + " "; 
    }
    lines.add(now);
    String [] arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
    println("現在存檔:"+now);
  }
  if(key=='r'){
     String [] file = loadStrings("angles.txt");
     if(file!=null){
        for(int i=0;i<file.length;i++){
          lines.add(file[i]);
          println("現在讀檔:"+file[i]);
        }
      }
   if(key=='p')playing =! playing;
  }
}
boolean playing = false;
ArrayList<String>lines = new ArrayList<String>();

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
int R=0;
void myinterpolate(){
   if(lines.size()>=2){
     float alpha = (frameCount%30)/30.0;
     if(alpha==0.0)R = (R+1)%lines.size();
     int R2=(R+1)%lines.size();
     float [] oldAngle = float(split(lines.get(R)," "));
     float [] newAngle = float(split(lines.get(R2),' '));
     for(int i=0;i<10;i++){
       angleX[i] = oldAngle[i*2+0]*(1-alpha) +newAngle[i*2+0]*alpha;
       angleY[i] = oldAngle[i*2+1]*(1-alpha) +newAngle[i*2+1]*alpha;
     }
  }
}
void draw(){
  myinterpolate();
  background(#FFFFF2);
  image(laplus,0,0);
  fill(255,0,255,128);
  rect(0,0,450,700);
  pushMatrix();
    translate(228,180);
    rotate(angle[1]);
    translate(-228,-180);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
  pushMatrix();
    translate(170,260);
    rotate(angle[2]);
    translate(-170,-260);
    image(lefthand,0,0);
  popMatrix();
  pushMatrix();
    translate(280,260);
    rotate(angle[3]);
    translate(-280,-260);
    image(righthand,0,0);
  popMatrix();
  pushMatrix();
    translate(190,410);
    rotate(angle[4]);
    translate(-190,-410);
    image(leftleg1,0,0);
    pushMatrix();
      translate(170,500);
      rotate(angle[6]);
      translate(-170,-500);
      image(leftleg2,0,0);
    popMatrix();
  popMatrix();
  pushMatrix();
    translate(260,410);
    rotate(angle[5]);
    translate(-260,-410);
    image(rightleg1,0,0);
    pushMatrix();
      translate(270,500);
      rotate(angle[7]);
      translate(-270,-500);
      image(rightleg2,0,0);
    popMatrix();
  popMatrix();

  
}
