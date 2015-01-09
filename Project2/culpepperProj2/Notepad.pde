// extends actor
// Jerod Culpepper

class Notepad extends Actor{
 // no no fields
 
 public Notepad(float xPos, float yPos){
   super(xPos,yPos);
 }
 void drawNotepad(){
 int s = size;
  //body
fill(240,240,240);
quad(x-7*s,y-9*s,x+7*s,y-9*s,x+7*s,y+9*s,x-7*s,y+9*s);
//eyesbrows
fill(240,240,240);
arc(x-3*s,y-1*s,5*s,5*s,4*PI/3,5*PI/3);
arc(x+3*s,y-1*s,5*s,5*s,4*PI/3,5*PI/3);
// eyes
ellipse(x-3*s,y-1*s,2*s,2*s);
ellipse(x+3*s,y-1*s,2*s,2*s);
fill(0,0,0);
ellipse(x-3.1*s ,y-.8*s,s,s);
ellipse(x+2.9*s,y-.8*s,s,s);
// mouth
fill(240,240,240);
arc(x,y,6*s,6*s, PI/4, 3*PI/4);
// arm
fill(0,0,0);
line(x+7*s,y+s,x+11*s,y+4*s);
line(x+11*s,y+4*s,x+8*s,y+9.3*s);
line(x-7*s,y+s,x-12.5*s,y+.5*s);
line(x-12.5*s,y+.5*s,x-16.5*s,y-3.5*s);
//pencil
fill(244,245,2);
line(x-16*s,y-6*s,x-15*s,y-s);
}
  
}
