class Snowman{

//Instance Varibles
float x;
float y;
float diameter;

// Constructor
Snowman(float x1, float y1, float d){
x = x1;
y = y1;
diameter = d;
}

// Shows the sun
void display(){
fill(255,255,255);
ellipse(x, y, diameter, diameter);
ellipse(x, y - diameter/1.8, diameter/1.2, diameter/1.2);
ellipse(x, y - diameter/.8+12, diameter/2, diameter/2);
fill(0,0,0);
ellipse(x+7, y - diameter/.8 - 2+12 , 4, 4);
ellipse(x-7, y - diameter/.8 - 2+12 , 4, 4);
ellipse(x, y - diameter/1.5, 4, 4);
ellipse(x, y -diameter/1.5 + 10, 4, 4);
ellipse(x, y -diameter/1.5 + 20, 4, 4);
fill(224, 68, 11);
triangle(x - 15, y- 80+12, x+3, y - 88+12, x -5, y - 90+12);




}

}