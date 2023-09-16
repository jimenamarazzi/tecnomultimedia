function dibujarLadron() {
  fill(0);
  calcularSiguienteSpriteDeLadron();
  if(direccionLadron == DERECHA){
  image(ladronDer[round(spriteActualLadron)], posXLadron, posYLadron, anchoLadron, altoLadron);
}else if(direccionLadron == IZQUIERDA){
  image(ladronIzq[round(spriteActualLadron)], posXLadron, posYLadron, anchoLadron, altoLadron);
}
}


function calcularSiguienteSpriteDeLadron(){
  if (direccionLadron == DERECHA) {
    if (spriteActualLadron >= 3-1) {
      spriteActualLadron = 0;
    } else {
      spriteActualLadron+=0.1;
    }
  } else if (direccionLadron == IZQUIERDA) {
    if (spriteActualLadron < 0) {
      spriteActualLadron = 3-1;
    } else {
      spriteActualLadron-=0.1;
    }
  }
}


function comprobarEscalerasLadron() {
  if (pisoActualLadron === 0) {
    if (posXLadron > 0.9*width) {
      movimientoYLadron = -3;
      movimientoXLadron = 0
      escaleraLadron = true;
    }
    }else if (pisoActualLadron === 1) {  
       if (posXLadron < 0.1*width) {
      movimientoYLadron = -3;
      movimientoXLadron = 0;
      escaleraLadron = true;
    }
} else if (pisoActualLadron === 2) {
    if (posXLadron > 0.9*width) { 
      movimientoXLadron = 0;
      estado = 5;
    }
  }
   if (escaleraLadron && posYLadron < posicionPiso[pisoActualLadron + 1]+5) { 
    pisoActualLadron++; 
    movimientoXLadron = - ultimaDireccionLadron; 
    ultimaDireccionLadron = movimientoXLadron;
    movimientoYLadron = 0; 
    if (movimientoXLadron > 0) {               
      direccionLadron = DERECHA;
    } else if (movimientoXLadron < 0) {
      direccionLadron = IZQUIERDA;
    }
  }
}


function moverLadron() {

  posXLadron += movimientoXLadron;
  posYLadron += movimientoYLadron;
}



function comprobarAtrapada(){
 
    if (dist(posX, posY, posXLadron, posYLadron) < anchoPolicia+anchoLadron){
    push();
    estado = 4;
    pop();
  }
}
