
 Bacteria [] mana;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(400, 400);
 	mana = new Bacteria[70]; 
 	for(int i= 0; i<mana.length; i++)
 	{
 		mana[i]=new Bacteria(200,200);
 	}
 	frameRate(10);
 }   
 void draw()   
 {    
 	//for(int)
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
	void move()
	{
       mX += (int)(Math.random()*2)+1;
       mY += (int)(Math.random()*3)+2;


 	} 
 	void show()
 	{
 		background(0, 0, 0);
 		fill(202, 232, 198);
		ellipse(mX,mY,30,30);
 	}
 }