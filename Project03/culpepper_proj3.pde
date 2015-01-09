// project 3
// Jerod Culpepper


/* instances of a segment
Segment arm = new Segment(400,300, -90, 125);
Segment hand = new Segment(300, 200, 90,100);
Segment hand2 = new Segment(300,300,45,75);
Segment hand3 = new Segment(300,300,120,50);
*/
Skeleton mySkeleton = new Skeleton(200,300);

void setup(){
 size(800,600);
 background(240,240,240); 
 
 mySkeleton.size = 25;
 
}


void draw(){
  background(240,240,240);
 mySkeleton.act();
 
 // rigging
 if (keyPressed){
  switch(key){
   
   case 'q':
   mySkeleton.luarm.turn(3);
   break;
   
   case 'w':
   mySkeleton.llowarm.turn(3);
   break;
   
   case 'a':
   mySkeleton.luleg.turn(3);
   break;
   
   case 's':
   mySkeleton.llowleg.turn(3);
   break;
   
   case 'z':
   mySkeleton.body.turn(3);
   break;
   
   case 'x':
   mySkeleton.neck.turn(3);
   break;
   
   case 'o':
   mySkeleton.ruarm.turn(3);
   break;
   
   case 'p':
   mySkeleton.rlowarm.turn(3);
   break;
   
   case 'k':
   mySkeleton.ruleg.turn(3);
   break;
   
   case 'l':
   mySkeleton.rlowleg.turn(3);
   break;
  } 
 }
 
}
