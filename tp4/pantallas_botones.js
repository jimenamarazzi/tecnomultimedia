function colisionBoton(x, y, ancho, alto) {
  return mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto;
}


function mousePressed() {
  if (estado === 1) {
    if (colisionBoton(280, 195, 200, 80)) {
      estado = 2;
    } else if (colisionBoton(265, 275, 250, 80)) {
      estado = 3;
    } else if (colisionBoton(300, 360, 180, 70)) {
      estado = 0;
      resetearJuego();
    }
  } else if (estado === 2) {
    if (colisionBoton(300, 370, 150, 60)) {
    estado = 1;
   }
  } else if (estado === 3) {
   if (colisionBoton(300, 370, 150, 60)) {
    estado = 1;
   } 
  } else if (estado === 4) {
    if (colisionBoton(300, 370, 150, 60)) {
      estado = 0;
      resetearJuego();
    }
  } else if (estado === 5) {
    if (colisionBoton(300, 370, 150, 60)) {
      estado = 0;
      resetearJuego();
    }   
  }
}

function resetearJuego() {
  posXMaletin = 200;
  posXMaletin = 265;
  posXDinero = 500;
  posYDinero = 400;
  bonusActivos = [true, true];

  posXLadron = 100;
  movimientoXLadron = 3;
  movimientoYLadron = 0;
  ultimaDireccionLadron = movimientoXLadron;
  escaleraLadron = false;
  score = 0;
  policiaEstaSaltando = false;
  estaEnPiso = true;
  estaEnEscalera = false;
  incrementoPosY = 0;
  incrementoPosX = 3.4;
  posX = 50;
  direccionLadron = DERECHA;

  pisoActual = 0;
  posY = posicionPiso[pisoActual];
  pisoActualLadron = 0;
  posYLadron = posicionPisoLadron[pisoActualLadron];
}
