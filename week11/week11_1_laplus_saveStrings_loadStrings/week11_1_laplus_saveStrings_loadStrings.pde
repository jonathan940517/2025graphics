//week11_1_laplus_saveStrings_loadStrings
PImage laplus,head,body,lefthand,righthand,leftleg1,rightleg1,leftleg2,rightleg2;
float []angle = new float[20];
int ID = 0;
void mouseDragged(){
  angle[ID] += mouseX - pmouseX;
}
void keyPressed(){
  if(key>='1'&&key<='9')ID = key-'0';
  if(key=='s'){
    String now = "";
    for(int i=0;i<20;i++){
      now += angle[i] + " "; 
    }
    lines.add(now);
    String [] arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
  }
  if(key=='r'){
    if(R==0){
      String [] file = loadStrings("angles.txt");
      if(file!=null){
        for(int i=0;i<file.length;i++){
          lines.add(file[i]);
        }
      }
    }
    if(R<lines.size()){
      float [] now = float(split(lines.get(R),' '));
      for(int i=0;i<20;i++)angle[i] = now[i];
      R = (R+1) % lines.size();
    }
  }
}
int R=0;
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
    rotate(sin(angle[4]));
    translate(-190,-410);
    image(leftleg1,0,0);
    pushMatrix();
      translate(170,500);
      rotate(sin(angle[6]));
      translate(-170,-500);
      image(leftleg2,0,0);
    popMatrix();
  popMatrix();
  pushMatrix();
    translate(260,410);
    rotate(sin(angle[5]));
    translate(-260,-410);
    image(rightleg1,0,0);
    pushMatrix();
      translate(270,500);
      rotate(sin(angle[7]));
      translate(-270,-500);
      image(rightleg2,0,0);
    popMatrix();
  popMatrix();

  
}
