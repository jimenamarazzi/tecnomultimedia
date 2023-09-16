function presionarTecla() {
  if (keyIsPressed) {
    if (keyCode == RIGHT_ARROW) {
      direccion = DERECHA;
      if (posX < width) {
       posX+=incrementoPosX;
       calcularSiguienteSpriteDePolicia();
      }
           } else if (keyCode == LEFT_ARROW) {
      direccion = IZQUIERDA;
      if (posX > 0){
        posX-=incrementoPosX;
        calcularSiguienteSpriteDePolicia();
      }
           }
   if(key === " "){
       iniciarSalto();
     }   
}
}

function iniciarSalto(){
  if(!policiaEstaSaltando){
    policiaEstaSaltando = true;
  }
}



function modificarSalto(){
  if(policiaEstaSaltando){
    incrementoPosX = 2;
    posY = posY + direccionSalto;
    if(posicionPiso[pisoActual] - posY >= alturaSalto){
      direccionSalto = direccionSalto * -1;
    }
    if(posicionPiso[pisoActual] - posY <= 0){
      policiaEstaSaltando = false;
      incrementoPosX = 3.4;
      direccionSalto = -1;
      posY = posicionPiso[pisoActual];
    }
  }
}





function comprobarEscalerasPolicia() {  
  if (pisoActual === 0) {                      
    if(posX > 710 && posX < 750){
      if (estaEnEscalera && !estaEnPiso) {
        incrementoPosX = 0;
        incrementoPosY = 3;
      }
      estaEnEscalera = true;
      estaEnPiso = false;
    }
  } else if (pisoActual === 1) {
    if (posX < 75) {
      if (estaEnEscalera && !estaEnPiso){
        incrementoPosX = 0;
        incrementoPosY = 3; 
      }
      estaEnEscalera = true;
      estaEnPiso = false;
    }
  }
  
  if(posY < posicionPiso[pisoActual+1]+5){
    incrementoPosY = 0;
    incrementoPosX = 3.4;
    estaEnEscalera = false; 
    estaEnPiso = true;
    pisoActual++;
  }
}



function subirEscaleras() {
  posY += -incrementoPosY;
}
