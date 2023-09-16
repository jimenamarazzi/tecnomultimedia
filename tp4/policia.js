function dibujarPolicia() {
  fill(0);
  if(direccion == DERECHA){
  image(policiaDer[round(spriteActualPolicia)], posX, posY, anchoPolicia, altoPolicia);
}else if(direccion == IZQUIERDA){
  image(policiaIzq[round(spriteActualPolicia)], posX, posY, anchoPolicia, altoPolicia);
}
}

function calcularSiguienteSpriteDePolicia(){
  if (direccion == DERECHA) {
    if (spriteActualPolicia >= 4-1) {
      spriteActualPolicia = 0;
    } else {
      spriteActualPolicia+=0.1;
    }
  } else if (direccion == IZQUIERDA) {
    if (spriteActualPolicia < 0) {
      spriteActualPolicia = 4-1;
    } else {
      spriteActualPolicia-=0.1;
    }
  }
}
