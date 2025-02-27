//week02_8_homework
PImage img;
ArrayList<Integer>x,y;
ArrayList<ArrayList<Integer>>xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>>yy = new ArrayList<ArrayList<Integer>>();
void setup(){
  size(400,400);
  img = loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255,200);
  rect(0,0,400,400);
  for(int I=0;I<xx.size();I++){
    ArrayList<Integer>x = xx.get(I);
    ArrayList<Integer>y = yy.get(I);
    for(int i=1;i<x.size();i++){
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
  noFill();
  draw1();
}
void keyPressed(){
  if(key=='s'||key=='S'){
    println("beginShape();");
      for(int I=0;I<xx.size();I++){
      ArrayList<Integer>x = xx.get(I);
      ArrayList<Integer>y = yy.get(I);
      for(int i=1;i<x.size();i++){
        println("vertex("+x.get(i)+", "+y.get(i)+");");
      }
    }
    println("endShape();");
  }
}
void mouseDragged(){
  //println("vertex("+mouseX+", "+mouseY+")");
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
void draw1(){
beginShape();
vertex(163, 25);
vertex(166, 25);
vertex(169, 25);
vertex(173, 25);
vertex(177, 25);
vertex(180, 25);
vertex(183, 25);
vertex(184, 25);
vertex(187, 25);
vertex(189, 25);
vertex(190, 25);
vertex(191, 25);
vertex(195, 25);
vertex(197, 25);
vertex(201, 25);
vertex(206, 25);
vertex(210, 25);
vertex(214, 27);
vertex(217, 27);
vertex(220, 27);
vertex(223, 29);
vertex(225, 29);
vertex(226, 29);
vertex(227, 29);
vertex(228, 31);
vertex(228, 36);
vertex(228, 40);
vertex(228, 42);
vertex(228, 45);
vertex(228, 46);
vertex(228, 48);
vertex(228, 49);
vertex(228, 50);
vertex(228, 52);
vertex(227, 53);
vertex(227, 54);
vertex(225, 54);
vertex(224, 55);
vertex(223, 55);
vertex(222, 56);
vertex(219, 56);
vertex(217, 56);
vertex(216, 56);
vertex(214, 57);
vertex(213, 57);
vertex(212, 57);
vertex(210, 58);
vertex(209, 59);
vertex(208, 59);
vertex(207, 59);
vertex(206, 59);
vertex(204, 59);
vertex(203, 59);
vertex(202, 59);
vertex(201, 59);
vertex(199, 59);
vertex(198, 59);
vertex(197, 59);
vertex(195, 59);
vertex(192, 59);
vertex(192, 58);
vertex(191, 57);
vertex(190, 56);
vertex(189, 55);
vertex(187, 55);
vertex(186, 53);
vertex(185, 53);
vertex(184, 51);
vertex(184, 50);
vertex(184, 48);
vertex(184, 47);
vertex(183, 45);
vertex(182, 44);
vertex(181, 43);
vertex(181, 41);
vertex(178, 40);
vertex(178, 39);
vertex(178, 37);
vertex(177, 37);
vertex(177, 36);
vertex(176, 36);
vertex(176, 35);
vertex(175, 35);
vertex(174, 34);
vertex(174, 33);
vertex(173, 33);
vertex(173, 32);
vertex(171, 31);
vertex(171, 30);
vertex(170, 30);
vertex(169, 30);
vertex(169, 29);
vertex(167, 29);
vertex(166, 29);
vertex(165, 29);
vertex(164, 29);
vertex(162, 29);
vertex(161, 29);
vertex(160, 29);
vertex(158, 29);
vertex(157, 29);
vertex(156, 29);
vertex(155, 29);
vertex(155, 28);
vertex(155, 26);
endShape();

}
