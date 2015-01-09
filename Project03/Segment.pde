// segment class
// exxtends actor

class Segment extends Actor {
 float len; // length
 float weight = 5; // thickness 

// constructors
public Segment(float x, float y){
 // call super
 super(x,y); 
 len = size;
}
 
public Segment(float x, float y, float d, float s){
 super(x,y);
 direction = d;
 len = s;
} 


// draw line fn
public void drawLine(){
 // calculate end points
  float x2 = x + len * cos(radians(direction));
  float y2 = y + len * sin(radians(direction));
  stroke(penRed, penG, penBlu);
  strokeWeight(weight);
  line(x,y,x2,y2);
}
public float getEndX(){
 float x2 = x + len*cos(radians(direction));
 return x2; 
}
public float getEndY(){
 float y2 = y + len*sin(radians(direction));
 return y2; 
}
  
}
