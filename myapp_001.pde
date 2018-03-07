float radius = 150;
float radius2 = 80;

void setup(){
  size(640,360,P3D);
  pixelDensity(displayDensity());
}

void draw(){
  background(255);
  translate(width/2 , height/2 , 0);
  
  float random = random(0.001 ,0.002);
  
  rotateY(frameCount * -0.01);
  rotateX(frameCount * 0.001);
  rotateZ(frameCount * 0.01);
  
  for (int dTheta = 0; dTheta <= 180; dTheta += 5) {
    float theta = radians(dTheta);
    float z = radius * cos(theta);
    float r = radius * sin(theta);
    drawCircle(z, r);
  }
  
  for (int dTheta = 0; dTheta <= 180; dTheta += 9) {
    float theta2 = radians(dTheta);
    float z2 = radius2 * cos(theta2);
    float r2 = radius2 * sin(theta2);
    drawCircle(z2, r2);
  }
  
  /* create movie */
  // saveFrame("frames/######.png");
}



void drawCircle(float z , float r){
    for (int dPh1 = 0; dPh1 < 360; dPh1 +=10){
    float ph1 = radians(dPh1);
    float x = r * cos(ph1);
    float y = r * sin(ph1);
    stroke(0);
    strokeWeight(4);
    point(x, y, z);
    }
}