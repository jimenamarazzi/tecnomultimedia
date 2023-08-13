//Jimena Aylen Marazzi
//Comision 4 - Tp.2
//Link del video: https://youtu.be/zm_UFWHlECM


float i;
int r;
float cant;
boolean ok=true;
PImage ilusion;
int estado = 0;
int verde1;
int verde2;
int verde3;
color verde = color(verde1,verde2,verde3);
color verdeclaro = color(169,250,233);
boolean elcoso;



void setup(){
  verde1=30;
  verde2=70;
  verde3=60;
  noFill();
 size(800,400); 
 ilusion= loadImage("ilusion.jpg");
}  




void efect(int r,int a){

  int c;
  
if(estado == 0){
  
  noFill();
  strokeWeight(2); 
  c=0;
  for(i=a; i<= 360; i=i+a){
   pushMatrix();
  rotate(radians(i));
   if(c%2==0)
   stroke(70);
    else
      stroke(255); 

   rect(20, r, 12, 12);
   popMatrix();
   c++;
  }
}
if(elcoso==true){
  if(verde1 >114){verde1=114;}
  if(verde2 >240){verde2=240;}
  if(verde3 >214){verde3=214;}
  verde1=verde1+1;
  verde2=verde2+1;
  verde3=verde3+1;
   fill(verde1,verde2,verde3);
  strokeWeight(2); 
  c=0;
  for(i=a; i<= 360; i=i+a){
   pushMatrix();
  rotate(radians(i));
   if(c%2==0)
   
   stroke(70);
    else
      stroke(255); 

   rect(20, r, 12, 12);
   popMatrix();
   c++;
  }
  
}else{verde1=30;verde2=70;verde3=60;}
if(estado == 1){
  float q = map(mouseX, 0, width, 200, 255);
  float w = map(mouseX, 0, width,30, 90);
  float e = map(mouseX, 0, width, 50, 250);
  fill(q, w, e);
  strokeWeight(2); 
  c=0;
  for(i=a; i<= 360; i=i+a){
   pushMatrix();
  rotate(radians(i));
   if(c%2==0)
   stroke(70);
    else
      stroke(255); 

   rect(20, r, 12, 12);
   popMatrix();
   c++;
  }
}
}



void draw(){
  elcoso=teclad();
 background(155);
  image(ilusion,0,0,400,400);
//println(verde3);
  translate(600, 200);
   efect(35,20);
     efect(75,12);
      efect(110,9);
      efect(155,6);
}

boolean teclad() {
  if (keyPressed) {
    if (key == 'v') {
      return true;
    } else {
      return false;
    }
  }
  
  return false;
}

void keyPressed(){
  if(key == '1') {
    estado = 1;
  }
  if(key == 'r'){
    estado = 0;
  }
}
