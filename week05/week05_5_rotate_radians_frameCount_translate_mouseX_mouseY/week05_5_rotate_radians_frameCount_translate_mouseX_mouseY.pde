//week05_5_rotate_radians_frameCount_translate_mouseX_mouseY
void setup(){
  size(400,400);
}

void draw(){
  background(204);
  //translate(mouseX,mouseY);
  //在繪製圖片前translate()才會有效果
  rotate(radians(frameCount)*10);
  translate(mouseX,mouseY);
  rect(-50,-5,100,10); //(x,y,w,h)
  

  
}
