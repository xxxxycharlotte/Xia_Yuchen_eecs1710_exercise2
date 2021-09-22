PImage img1, img2;
PVector pos1, pos2;
PShape shp;
Integer pos;

void setup() {
  
  img1 = loadImage("");
  img2 = loadImage("");
  
  pos1 = new PVector();
  pos2 = new PVector();
  
  shp = createShape();
  shp.beginShape();
  shp.stroke(255,0,0);
  shp.fill(0,255,0);
  shp.vertex(pos1.x, pos1.y);
  shp.vertex(pos2.x, pos2.y);
  shp.vertex(0, 0);
  shp.endShape();
  pos = 0;
}

void draw(){
  imageMode(CORNER);
  image(img1, 0, 0, width, height);
  
  pos = pos + 1;
  if(pos > 100){
    imageMode(CENTER);
    image(img2, 0, pos, 50, 50);
    
    strokeWeight(20);
    stroke(255,0,0);
    point(pos1.x, pos1.y);
    point(pos2.x, pos2.y);
    
    strokeWeight(10);
    stroke(255,0,0);
    line(pos1.x, pos1.y,pos2.x, pos2.y);
    
  }
}
