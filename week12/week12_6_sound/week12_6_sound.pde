//week12_6_sound
//Sketch - Library - Managed Libraries 找 sound 會看到
//會看到Sound | Provides a simple way to work with audio
//install安裝
//安裝好後，會有File - example 點開 Libraries核心函式庫
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400,400);
  mySound = new SoundFile(this,"music.mp3");
  mySound.play();
}
void draw(){

}
