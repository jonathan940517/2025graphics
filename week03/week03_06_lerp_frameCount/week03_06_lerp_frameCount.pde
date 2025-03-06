//week03_06_lerp_frameCount
void setup(){
  size(400,400);
}
float startX = 10,startY = 10;
float stopX = 390,stopY = 390;
void draw(){
  ellipse(startX,startY,10,10);
  ellipse(stopX,stopY,10,10);
  float midX = lerp(startX,stopX,frameCount/200.0);
  float midY = lerp(startY,stopY,frameCount/200.0);
  //frameCount 數影格
  ellipse(midX,midY,10,10);
}
