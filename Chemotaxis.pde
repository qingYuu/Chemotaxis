
 Bacteria [] mana;
 PImage img;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(1000, 1000);
    img = loadImage("kh.png");
 	mana = new Bacteria[100]; 
 	for(int i= 0; i<mana.length; i++)
 	{
 		mana[i]=new Bacteria(20,50);
 	}
 	frameRate(10);
 }   
 void draw()   
 {  
 	//background(0, 0, 0); 
    image(img,0,0);
 	for(int m=0; m<mana.length; m++)
 	{
    mana[m].move();
    mana[m].show();
    }
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
		mC = color((int)(Math.random()*255)-1, (int)(Math.random()*225)-1, (int)(Math.random()*255)-1,100);
	}
	void move()
	{
      /* mX += (int)(Math.random()*3)-1;
       mY += (int)(Math.random()*3)-1;
       */
       if ( mX <= mouseX )
	       {
	       	 mX += (int)(Math.random()*7)+5;
	       } 
       if (mX >= mouseX)
		   {
		     mX += (int)(Math.random()*7)-5;
		   }
  	  
       if (mY <= mouseY )
         {
           mY += (int)(Math.random()*7)+5;
       
         }  
       if (mY >= mouseY) 
         {
           mY += (int)(Math.random()*7)-5;
         }
      
       

 	} 
 	void show()
 	{   
 		noStroke();
 		fill(mC);
 		ellipse(mX,mY,15,15);
 		stroke(225, 225, 225);
		ellipse(mX,mY,10,10);
 	}
 }