class Snow{

//Instance Varibles
float x;
float y;
float diameter;

// Constructor
Snow(float d){
x = width/2;
y = height;
diameter = d;
}

boolean clickedBubble(){
if(dist(x, y, mouseX, mouseY)<diameter){
return true;
}
else {
return false;
}
}

// Makes snowflakes go down
void fall(){
y++;

// can you make the bubbles go up unvenly?


}

// show the bubbles
void display(){
stroke(0);
fill(127, 100);
ellipse(x, y, diameter, diameter);
}

// if the bubbles go to the top - pause it here
void top(){
if(y < 0){
y = 0;
}
}

}