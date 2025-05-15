//week13_6_combine_all_Movie_Capture_PImage_camera_sin_cos_P3D
//把今天教的全部加進來
//street.mov及chessboard.png都拉進來
import processing.video.*;
Movie movie;
PImage img;
void setup(){
  size(400,400,P3D);
  movie=new Movie(this,"street.mov");  //720X480
  movie.loop();  //
  img=loadImage("chessboard.png");
  textureMode(NORMAL);
  video=new Capture(this,640,480);
  video.start();  //要記得"開始播放"
}
Capture video;  //有鏡頭在加他
void draw(){  //攝影機"往前方看" 左右、前後移動
  camera(200,200,200,200+cos(radians(frameCount)),200,200+sin(radians(frameCount)),0,1,0);
  background(128);
  if(movie.available()) movie.read();  //有畫面就讀入畫面
  beginShape();  //front 正前方 z座標都放0
    texture(img);
    vertex(0,0,0,0,0);  //x,y,z,u,v
    vertex(400,0,0,1,0);
    vertex(400,400,0,1,1);
    vertex(0,400,0,0,1);
  endShape();
 
  if(video.available()) video.read();  //有畫面就讀入畫面
  beginShape();  //左邊的牆放視訊畫面
    texture(video);  //把視訊 當成一面牆的貼圖
    vertex(0,0,0,0,0);  //x,y,z,u,v
    vertex(0,400,0,1,0);
    vertex(0,400,400,1,1);
    vertex(0,0,400,0,1);
  endShape();
}
