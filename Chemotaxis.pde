
 Bacteria [] mana;
 Bubble [] tenshi;
 PImage img;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(1000, 1000);
    img = loadImage("kh.png");
 	mana = new Bacteria[50]; 
 	for(int i= 0; i<mana.length; i++)
 	{
 		mana[i]=new Bacteria(20,50);
 	}
 	tenshi = new Bubble[100];
 	for(int q= 0; q<tenshi.length; q++)
    {
    	tenshi[q]=new Bubble();
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
    for(int n=0; n<tenshi.length; n++)
    {
    tenshi[n].move();
    tenshi[n].show();
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

 class Bubble
 {
 	int aX, aY, aC;
 	Bubble()
 	{
 		aX = (int)(Math.random()*1000)-30;
 		aY = (int)(Math.random()*1000)-30;
 		aC = color((int)(Math.random()*255)-1, (int)(Math.random()*225)-1, (int)(Math.random()*255)-1,100);

 	}
 	void move()
 	{
 		aX += (int)(Math.random()*3)-1;
        aY += (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
        noStroke();
 		fill(aC);
 		ellipse(aX,aY,15,15);
 		stroke(225, 225, 225);
		ellipse(aX,aY,10,10);
 	}
 }