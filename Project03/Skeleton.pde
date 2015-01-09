// Jerod Culpepper
// Skeleton class

class Skeleton extends Actor {
 //fields
Segment neck;
Segment body;
Segment rshoulder;
Segment ruarm;
Segment rlowarm;
Segment ruleg;
Segment rlowleg;
Segment lshoulder;
Segment luarm;
Segment llowarm;
Segment luleg;
Segment llowleg;
int s;
  public Skeleton(float xPos, float yPos){
    super(xPos, yPos);
    s = super.size;
    // init segments
    body = new Segment(xPos,yPos,-90, 7*s);
    body.weight = 10;
    body.setPenColor(0,0,0);
    
    neck = new Segment(body.getEndX(), body.getEndY(), -90,2* s);
    neck.weight = 10;
    neck.setPenColor(0,255,0);
    
    
    
    luleg = new Segment(xPos,yPos,45, 4*s);
    luleg.weight = 10;
    luleg.setPenColor(0,0,255);
    
    llowleg = new Segment(luleg.getEndX(), luleg.getEndY(), 90, 4*s);
    llowleg.weight = 10;
    llowleg.setPenColor(0,255,0);
    
    lshoulder = new Segment(body.getEndX(), body.getEndY(),0,1.8*s);
    lshoulder.weight = 10;
    lshoulder.setPenColor(0,0,255);
    
    luarm = new Segment(lshoulder.getEndX(), lshoulder.getEndY(),45,2.3*s);
    luarm.weight = 10;
    luarm.setPenColor(0,255,0);
    
    llowarm = new Segment(luarm.getEndX(), luarm.getEndY(),45,1.8*s);
    llowarm.weight = 10;
    llowarm.setPenColor(255,0,0);
    
    ruleg = new Segment(xPos,yPos,135, 4*s);
    ruleg.weight = 10;
    ruleg.setPenColor(0,0,255);
    
    rlowleg = new Segment(luleg.getEndX(), luleg.getEndY(), 90, 4*s);
    rlowleg.weight = 10;
    rlowleg.setPenColor(0,255,0);
    
    rshoulder = new Segment(body.getEndX(), body.getEndY(),180,1.8*s);
    rshoulder.weight = 10;
    rshoulder.setPenColor(0,0,255);
    
    ruarm = new Segment(lshoulder.getEndX(), lshoulder.getEndY(),135,2.3*s);
    ruarm.weight = 10;
    ruarm.setPenColor(0,255,0);
    
    rlowarm = new Segment(luarm.getEndX(), luarm.getEndY(),135,1.8*s);
    rlowarm.weight = 10;
    rlowarm.setPenColor(255,0,0);
    
    
  }
  
  public void drawFrame(){
   
   body.drawLine();
   neck.goTo(body.getEndX(),body.getEndY());
   neck.drawLine();
   ellipse(neck.getEndX(),neck.getEndY(),1.5*s,1.5*s);
   luleg.drawLine();
   llowleg.goTo(luleg.getEndX(), luleg.getEndY());
   llowleg.drawLine(); 
   
   lshoulder.goTo(body.getEndX(), body.getEndY());
   lshoulder.drawLine(); 
   
   luarm.goTo(lshoulder.getEndX(), lshoulder.getEndY());
   luarm.drawLine();
   
   llowarm.goTo(luarm.getEndX(),luarm.getEndY());
   llowarm.drawLine();
   
   ruleg.drawLine();
   rlowleg.goTo(ruleg.getEndX(), ruleg.getEndY());
   rlowleg.drawLine(); 
   
   rshoulder.goTo(body.getEndX(), body.getEndY());
   rshoulder.drawLine(); 
   
   ruarm.goTo(rshoulder.getEndX(), rshoulder.getEndY());
   ruarm.drawLine();
   
   rlowarm.goTo(ruarm.getEndX(),ruarm.getEndY());
   rlowarm.drawLine();
  }
  
  public void act(){
   drawFrame(); 
   //luleg.turn(1);
  }

}
