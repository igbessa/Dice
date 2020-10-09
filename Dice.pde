int sum;

class Die {
  int myX, myY,num;
  Die(int x, int y) {
    myX = x;
    myY = y;
    num = (int)(Math.random()*6+1);
  }//end Die constructor

  void roll() {
    //set random # of dots.
    if (num == 1) {
      fill(27, 122, 99);
      ellipse(myX+25, myY+25, 10, 10);//center
    } 
    else if (num == 2) {
      fill(119, 127, 242);
      ellipse(myX+10, myY+10, 10, 10);//top left
      ellipse(myX+40, myY+40, 10, 10);//bottom right
    } 
    else if (num == 3) {
      fill(87, 194, 192);
      ellipse(myX+10, myY+10, 10, 10);//top left
      ellipse(myX+25, myY+25, 10, 10);//center
      ellipse(myX+40, myY+40, 10, 10); //bottom right
    } 
    else if (num == 4) {
      fill(20, 125, 252);
      ellipse(myX+10, myY+10, 10, 10);//top left
      ellipse(myX+39, myY+10, 10, 10);//top right
      ellipse(myX+10, myY+40, 10, 10);//bottom left
      ellipse(myX+40, myY+40, 10, 10); //bottom right
    } 
    else if (num == 5) {
      fill(42, 191, 166);
      ellipse(myX+10, myY+10, 10, 10);//top left
      ellipse(myX+39, myY+10, 10, 10);//top right
      ellipse(myX+25, myY+25, 10, 10);//center
      ellipse(myX+10, myY+40, 10, 10);//bottom left
      ellipse(myX+40, myY+40, 10, 10); //bottom right
    } 
    else if (num == 6) {
      fill(20, 125, 252);
      ellipse(myX+10, myY+10, 10, 10);//top left
      ellipse(myX+39, myY+10, 10, 10);//top right
      ellipse(myX+10, myY+25, 10, 10);//middle left
      ellipse(myX+39, myY+25, 10, 10);//middle right
      ellipse(myX+10, myY+40, 10, 10);//bottom left
      ellipse(myX+39, myY+40, 10, 10); //bottom right
    }
    sum = sum+num; 
  }//end roll

  void show() {
    fill(255);
    rect(myX, myY, 50, 50, 7);
    fill(0);
    textSize(25);
    //sum = sum + calc;
    
  }//end show
}//end Die

void setup() {
  noLoop();
  size(450, 450);
}//end setup

void draw() {
  background(242, 197, 162);

  for (int j = 50; j < 400; j+=60) {
    for (int i = 50; i < 400; i+=60){
      Die bob = new Die(i,j);
      bob.show();
      bob.roll();
    }
  }
//print sum to the screen here
  fill(0);
  text("sum of dots:"+sum, 150,425);
}//end draw

void mousePressed() {
  redraw();
  sum = 0;
}
