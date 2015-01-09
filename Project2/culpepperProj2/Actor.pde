// Jerod Culpepper
// Actor class
class Actor{
  // fields
  float x;
  float y;
  int fillRed=0;
  int fillG = 0;
  int fillBlu = 0;
  int penRed = 0;
  int penG = 0;
  int penBlu = 0;
  int size = 50;
  int w = 50; //width
  int h = 50; //heighth
  int dx = 0;
  int dy = 0;
  
  public Actor(float xPos, float yPos){
    x=xPos;
    y=yPos; 
  }
  // method sets color of actor
  public void setColor(int r, int g, int b){
   fillRed = r;
  fillG = g;
   fillBlu = b; 
  }
  //sets the pen color
   public void setPenColor(int r, int g, int b){
   penRed = r;
    penG = g;
   penBlu = b; 
  }
  void move(){
    x = x+dx;
    y = y+dy;
  }
  //sets pos of actor to x,y
  void goTo(float xPos, float yPos){
    x = xPos;
    y = yPos;
  }
  void bounceEdge(){
    if (x > width || x < 0){
      dx = dx * -1;
    }
    if(y > height || y< 0){
     dy= dy * -1; 
    }
    
  }
  
  void setDX(int xVel){
    dx = xVel;
  }
  
  void setDY(int yVel){
   dy = yVel;
  }
  // rectangle fn
  void drawRect(){
   stroke(penRed,penG,penBlu);
  fill(fillRed,fillG,fillBlu);
 rect(x,y, w, h); 
  }
  
  
  
}  // end Actor
