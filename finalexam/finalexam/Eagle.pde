// define eagle class

class Eagle extends Actor{
 
 void drawEagle(int x, int y, int s){
  //body
  fill(178,115,115);
   ellipse(x,y,28*s,28*s);
  //wings
  triangle(x+9*s,y,x+16*s,y,x+9*s,y+10*s);
  triangle(x-9*s,y,x-16*s,y,x-9*s,y+10*s);
  // nose
  fill(236,247,80);
  triangle(x-2*s,y,x+2*s,y,x,y+5*s);
  // eyes
  fill(255,255,255);
  ellipse(x+4*s,y-5*s,8*s,10*s);
  ellipse(x-4*s,y-5*s,8*s,10*s);
  fill(0,0,0);
  ellipse(x+4*s,y-5*s,2.5*s,2.5*s);
  ellipse(x-4*s,y-5*s,2.5*s,2.5*s);
  fill(255,255,255);
  ellipse(x+4.5*s,y-5.5*s,0.75*s,0.75*s);
  ellipse(x-3.5*s,y-5.5*s,0.75*s,0.75*s);
  //eyebrows
  rect(x-10*s,y-11*s,8*s,s);
  rect(x+2*s,y-11*s,8*s,s);
  
 } 
  
  
}
