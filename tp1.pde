PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage reinicio;

PFont myFont;

float y = 50;
float x = 50;
float velocidad = 1;

int pantalla = 1;
int tiempo = 5;
int tiempobotonreinicio = second();

void setup() {
  size(640, 480);

  pantalla1 = loadImage("alaska.jpg");
  pantalla2 = loadImage("alaska2.jpg");
  pantalla3 = loadImage("alaska3.jpg");
  reinicio = loadImage("reset.png");
  
  myFont = loadFont("BellMTItalic-48.vlw");
  textFont(myFont);
  
  tiempo = second();
}

void draw() {
  if (pantalla == 1) {
    image(pantalla1, 0, 0, 640, 480);
    fill (0);
    
    text("La mejor epoca para ver la \naurora boreal va \ndesde finales de Agosto \nhasta Abril",y-80, 200, 250);
    y = y + velocidad;
  } else if (pantalla == 2) {
    image(pantalla2, 0, 0, 640, 480);
    fill (255, 0 ,0);
    
    text("Una tradicion popular es la carrera de trineos \narrastrados por perros.", 90, x, 500, 250);
    
    x += velocidad;
  } else if (pantalla == 3) {
    image(pantalla3, 0, 0, 640, 480);
    fill (0);
   
    text("El clima de Alaska es sub-polar o de tipo polar, \ncon inviernos frios y largos.", y-50, x-40, 500, 250);
     x += velocidad;
     y += velocidad;
     if (x > 150) {
       velocidad = 0;
     }
  }

  if (second() - tiempobotonreinicio > 10 && pantalla == 3) {
    image(reinicio, 500, 370, 100, 50);
  }

  if (second() - tiempo > 3) {
    pantalla++;
    tiempo = second();
  }
  
  if (pantalla > 3) {
    pantalla = 3;
  }
}

void mouseClicked() {
  if (pantalla == 3 && mouseX > 500 && mouseX < 600 && mouseY > 370 && mouseY < 420) {
    pantalla = 1;
  tiempo = second();
  x = 50;
  y = 50;
  velocidad = 1;
  }
}
