//week03_04_mousePressed_stroke_line
void setup(){
  size(500,500);
}
void draw(){
  //background(255);
  fill(255,0,0);
  rect(0,0,50,50);
  fill(255,255,0);
  rect(0,50,50,50);
  fill(0,255,0);
  rect(0,100,50,50);
  fill(0,0,255);
  rect(0,150,50,50);
  if(mousePressed)line(mouseX,mouseY,pmouseX,pmouseY);
}
void mousePressed(){
  if(mouseX<50){
    if(mouseY<50)stroke(255,0,0);
    else if(mouseY<100)stroke(255,255,0);
    else if(mouseY<150)stroke(0,255,0);
    else if(mouseY<200)stroke(0,0,255);
  }
}
