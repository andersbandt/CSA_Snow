class Sun{

float beginX = 350;  // Initial x-coordinate
float beginY = 310;  // Initial y-coordinate
float x = 0.0;        // Current x-coordinate
float y = 0.0;        // Current y-coordinate
float step = 0.003;    // Size of each step along the path
float pct = 0.0;      // Percentage traveled (0.0 to 1.0)

// Constructor
Sun(){
}

// Shows the sun
void display(){
  pct += step;
  if (pct < 100) {
    x = 275*cos(pct-QUARTER_PI);
    y = 210*sin(pct-QUARTER_PI);
  }
  fill(232, 244, 66);
  ellipse(beginX + x, beginY + y, 75, 75);
}

}