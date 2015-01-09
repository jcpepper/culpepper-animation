// extends actor
// culpepperj
class Asteroids extends Actor{
//fields
int size;
List asteroids;
int diffcount = 0;

public Asteroids (){
 super();
 asteroids = new ArrayList(10);
 int rand = (int) random(0,3);
 if(rand == 0){
   x = random(0,width);
   y = 0;
   size = (int)random(3,10);
   fillG = 255;
   dy = (int)random(5,10);
   dx = (int)random(-5,5);
 }
 else if (rand == 1){
   x = width;
   y = random(0, height);
   size = (int)random(3,10);
   fillG = 255;
   dy =(int)random(-5,5);
   dx = -1 * (int)random(5,10);
 }
 else if (rand == 2){
   x = random(0,width);
   y = height;
   size = (int)random(3,10);
   fillG = 255;
   dy = -1 * (int)random(5,10);
   dx = (int)random(5,5);
 }
 else if (rand == 3){
   x = 0;
   y = random(0, height);
   size = (int)random(3,10);
   fillG = 255;
   dy = -1 * (int)random(5,10);
 }
 
}

}
