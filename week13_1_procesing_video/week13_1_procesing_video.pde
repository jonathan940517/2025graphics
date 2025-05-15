//week13_1_procesing_video
//sketch - library - manage libraries 安裝videe
import processing.video.*;
//有鏡頭 用這個
Capture video;
Movie movie;
void setup(){
  size(640,480);
  //video = new Capture(this,640,480);
  //video.start();
  movie = new Movie(this,"street.mov");
  movie.loop();
  
}
void draw(){
  //if(video.available())video.read();
  //image(video,0,0);
  if(movie.available())movie.read();
  image(movie,0,0);
}
