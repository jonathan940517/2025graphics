//week04_14_sun_earth_moon_setTexture
PShape sun,earth,moon;
void setup(){
  size(400,400,P3D);
  sun = createShape(SPHERE,50);
  PImage img = loadImage("sun.jpg");
  sun.setTexture(img);
  earth = createShape(SPHERE,30);
  img = loadImage("earth.jpg");
  earth.setTexture(img);
  moon = createShape(SPHERE,10);
  img = loadImage("moon.jpg");
  moon.setTexture(img);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  shape(sun); //太陽
  rotateY(radians(frameCount));
  pushMatrix();
    translate(150,0);
    rotateY(radians(frameCount));
    shape(earth); //地球
    pushMatrix();
      translate(50,0);
      rotateY(radians(frameCount));
      shape(moon); //月球
    popMatrix();
  popMatrix();
}
