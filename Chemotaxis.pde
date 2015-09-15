
 Bacteria mana;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(400, 400);
 	mana = new Bacteria(40,40); 
 	frameRate(1);
 }   
 void draw()   
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
	void move()
	{
       mX += (int)(Math.random()*3)-2;
       mY += (int)(Math.random()*3)+2;


 	} 
 	void show()
 	{
 		background(0, 0, 0);
 		fill(202, 232, 198);
		ellipse(mX,mY,30,30);
 	}
 }