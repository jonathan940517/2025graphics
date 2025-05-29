//week15_01_multiple_windows
//File > Examples > Demos > Tests > MultipleWindows
void setup(){
  size(200,200);
  background(255,0,0);
  WindowB child = new WindowB();
}
void draw(){
  
}
class WindowB extends PApplet{
  public WindowB(){
    super();
    PApplet.runSketch(new String[]{this.getClass().getName()},this);
  }
  public void settings(){
    size(200,200);
  }
  public void setup(){
    size(200,200);
    background(0,255,0);
  }
  public void draw(){
  
  }
}
