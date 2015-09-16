import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {


 Bacteria mana;
 //declare bacteria variables here   
 public void setup()   
 {     
 	//initialize bacteria variables here 
 	size(400, 400);
 	mana = new Bacteria(40,40); 
 	frameRate(10);
 }   
 public void draw()   
 {    
    mana.move();
    mana.show();
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	//lots of java!   
	int mX, mY, mC;
	Bacteria(int x, int y)
	{
		mX = x;
		mY = y;
		//mC = fill(202, 232, 198);
	}
	public void move()
	{
       mX += (int)(Math.random()*2)+1;
       mY += (int)(Math.random()*3)+2;


 	} 
 	public void show()
 	{
 		background(0, 0, 0);
 		fill(202, 232, 198);
		ellipse(mX,mY,30,30);
 	}
 }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
