class Moon{

float beginX = 350;  // Initial x-coordinate
float beginY = 275;  // Initial y-coordinate
float x = 0.0;        // Current x-coordinate
float y = 0.0;        // Current y-coordinate
float step = 0.01;    // Size of each step along the path
float pct = 0.0;      // Percentage traveled (0.0 to 1.0)

// Constructor
Moon(){
}

// Shows the sun
void display(){
  pct += step;
  if (pct < 100) {
    x = 275*cos(pct+PI*(.75));
    y = 210*sin(pct+PI*(.75));
  }
  fill(255,255,200);
  ellipse(beginX + x, beginY + y, 40, 40);
}

}