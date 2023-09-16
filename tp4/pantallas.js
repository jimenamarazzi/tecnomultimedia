function pantallas(){

if(estado == 0){
  image(imagen[0], posXImagen, posYImagen, tamXImagen, tamYImagen);
    
    presionarTecla();
    modificarSalto();
    dibujarPisos();
    dibujarEscaleras();
    
    dibujarObstaculos();
    dibujarPolicia();
    dibujarLadron();
    comprobarEscalerasPolicia();
    subirEscaleras();
    comprobarEscalerasLadron();
    moverLadron();
    comprobarAtrapada();
    dibujarBonus();
    comprobarBonus();
   
}

  if(estado == 1){
    image(imagen[1], posXImagen, posYImagen, tamXImagen, tamYImagen);
    image(texto[0], 160, 80, 450, 120);
    image(boton[0], 280, 195, 200,80);
    image(boton[1], 265, 275,250,80);
    image(boton[2], 300, 360,180,70);
  }
  if(estado == 2){
    image(imagen[2], posXImagen, posYImagen, tamXImagen, tamYImagen);
    image(texto[1], 200, 80,350,100);
    image(boton[4], 300, 370,150,60);
    
    textFont('TwCenMT-Bold',30)
    textAlign(CENTER);
    text('·Alumna:\nJimena Aylen Marazzi\n·Profesor:\nLeonardo Garay\n·Comision: 4', 380, 200);
  }
    if(estado == 3){
    image(imagen[3], posXImagen, posYImagen, tamXImagen, tamYImagen);
    image(texto[2], 250, 100,300,100);
    image(boton[4], 300, 370,150,60);
    
    textFont('TwCenMT-Bold',25)
    textAlign(CENTER);
    text('Corre moviendote de izquierda a derecha utilizando\nlas flechas del teclado.\nSi queres experimentar la gravedad utiliza la tecla "ESPACIO"\nEncontrá y atrapá al ladron antes de que se escape.\nSi queres más puntos, recolecta \nlos objetos que hay en el camino.', 400, 200);
    }
    if(estado == 4){
    image(imagen[4], posXImagen, posYImagen, tamXImagen, tamYImagen);
    image(texto[3], 220, 100,300,100);
    image(boton[3], 300, 370,150,60);
    }
    if(estado == 5){
    image(imagen[5], posXImagen, posYImagen, tamXImagen, tamYImagen);
    image(texto[4], 220, 100,300,100);
    image(boton[3], 300, 370,150,60);
    }
}
