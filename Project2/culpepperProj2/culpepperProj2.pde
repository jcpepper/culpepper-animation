//Jerod Culpepper
// Project 02

Notepad notepad = new Notepad(300,200);
Actor josh = new Actor(100,100);
void setup(){
 size(600,400);
background(240,240,240); 

//initilize notepad values
notepad.setColor(255,0,0);
notepad.setPenColor(0,0,255);
notepad.w = 100;
notepad.h = 100;
notepad.setDX(7);
notepad.setDY(7);
notepad.size = 5;


//intilize josh values
josh.setColor(0,255,0);
josh.w=25;
josh.h=25;
josh.setDX(10);
josh.setDY(10);

}

void draw(){
 background(240,240,240); 
 
 notepad.drawNotepad();
 if(keyPressed){
  if(key == 'a'){
    //move left
    notepad.dy=0;
   notepad.dx= -10; 
   notepad.move();
  }
  if(key == 'd'){
    //move right
    notepad.dy=0;
    notepad.dx= 10;
    notepad.move();
   }
  if(key == 'w'){
   //move up 
  notepad.dx=0;
  notepad.dy = -10;
  notepad.move(); 
  }
  if(key == 's'){
    // move down
    notepad.dx=0;
    notepad.dy = 10;
    notepad.move();
  }
 }
 notepad.bounceEdge();
 
 josh.drawRect();
 josh.move();
 josh.bounceEdge();
}
