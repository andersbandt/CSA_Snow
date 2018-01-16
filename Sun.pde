class Sun{

//Instance Varibles
float x;
float y;
float diameter;

// Constructor
Sun(float x1, float y1, float d){
x = x1;
y = y1;
diameter = d;
}

// Shows the sun
void display(){
fill(232, 244, 66);
ellipse(x, y, diameter, diameter);
}


}