//week05_1b_i_love_you
size(300,300);
stroke(255,0,0);
translate(150,150);
for(int xx=-150;xx<150;xx++){
  for(int yy=-150;yy<150;yy++){
    float x = xx/100.0;
    float y = -yy/100.0;
    float d = x*x + y*y - 1;
    if(d*d*d - x*x*y*y*y<0)point(xx,yy);
  }
}
