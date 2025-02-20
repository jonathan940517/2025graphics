// week01_5_Java_translate_rotate_vertex
void setup(){
  size(400,400,P3D);
}
float angle = 0;
void draw(){
  //background(0);
  translate(200,200);
  rotate(angle);
  angle+=0.01;
  beginShape(TRIANGLES);
  fill(255,0,0); vertex(0,200);
  fill(0,255,0); vertex(164,-100);
  fill(0,0,255); vertex(-164,-100);
  endShape();
}
