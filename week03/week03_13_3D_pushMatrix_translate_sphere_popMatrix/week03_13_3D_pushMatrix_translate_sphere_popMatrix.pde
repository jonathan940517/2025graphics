//week03_13_3D_pushMatrix_translate_sphere_popMatrix
void setup(){
  size(600,400,P3D);
}
void draw(){
  background(128);
  lights();
  pushMatrix();
    translate(300,200);
    sphere(100);
  popMatrix();
  pushMatrix();
    translate(100,100);
    sphere(100);
  popMatrix();
}
