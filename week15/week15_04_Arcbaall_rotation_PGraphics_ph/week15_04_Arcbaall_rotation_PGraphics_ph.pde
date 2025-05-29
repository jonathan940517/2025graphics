//week15_04_Arcbaall_rotation_PGraphics_ph
PGraphics pg,pg2,pg3,pg4;
Arcball arcball;
void setup(){
  size(400,400,P3D);
  arcball = new Arcball(this,200);
  pg = createGraphics(200,200,P3D);
  pg2 = createGraphics(200,200,P3D);
  pg3 = createGraphics(200,200,P3D);
  pg4 = createGraphics(200,200,P3D);
}
void mousePressed(){
  arcball.mousePressed();
}
void mouseDragged(){
  arcball.mouseDragged();
}


void draw(){
  background(255,0,0);
  pg.beginDraw();
  pg.background(255,0,0);
  arcball.run();
  //pg.translate(100,100);
  //pg.rotateY(radians(frameCount));
  pg.box(100);
  pg.endDraw();
  
  pg2.beginDraw();
  pg2.background(0,255,0);
  pg2.translate(100,100);
  pg2.rotateY(radians(frameCount));
  pg2.box(100);
  pg2.endDraw();
  
  pg3.beginDraw();
  pg3.background(0,0,255);
  pg3.translate(100,100);
  pg3.rotateY(radians(frameCount));
  pg3.box(100);
  pg3.endDraw();
  
  pg4.beginDraw();
  pg4.background(255,0,255);
  pg4.translate(100,100);
  pg4.rotateY(radians(frameCount));
  pg4.box(100);
  pg4.endDraw();
  
  image(pg,0,0);
  image(pg2,200,0);
  image(pg3,0,200);
  image(pg4,200,200);
}
