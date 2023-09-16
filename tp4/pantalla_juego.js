function dibujarPisos(){

image(imgFondo, 0, 150);
image(imgFondo, 0, 290);
image(imgFondo, 0, 430);

}

function dibujarEscaleras(){
image(imgEscal, 700, 290, 50, 150);
image(imgEscal, 50, 150, 50, 150);
}


function dibujarBonus(){ 
 textFont('TwCenMT-Bold');               
 text('Score:' + score, 50, 50, 50, 50);
  
  if (bonusActivos[0]) {
    image(imgDinero, posXDinero, posYDinero, 30, 30);   
  }
  if (bonusActivos[1]) {
    image(imgMaletin, posXMaletin, posYMaletin, 30, 30);
  }
}

function dibujarObstaculos(){
//piso0
image(imgObstaculo, 100, 400, 70, 35);
image(imgObstaculo, 300, 400, 70, 35);
//piso1
image(imgObstaculo, 350, 260, 70, 35);
image(imgObstaculo, 550, 260, 70, 35);
//piso2
image(imgObstaculo, 250, 120, 70, 35);
image(imgObstaculo, 650, 120, 70, 35);

}

function comprobarBonus(){
  if (dist(posXMaletin, posYMaletin, posX, posY) < 30 && bonusActivos[1]){
    score += 100;
    bonusActivos[1] = false;
  }
  if (dist(posXDinero, posYDinero, posX, posY) < 30 && bonusActivos[0]){
    score += 100;
    bonusActivos[0] = false;
  }
}
