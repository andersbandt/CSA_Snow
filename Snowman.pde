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
fill(100,100,100);
ellipse(x, y, diameter, diameter);
ellipse(x, y - diameter/1.5, diameter/1.2, diameter/1.2);
ellipse(x, y - diameter/.8, diameter/2, diameter/2);

}


}