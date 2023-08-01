//Jimena Aylen Marazzi
//Comision 4 - Tp.3
//Link video : https://youtu.be/qoHQwR2cS1Q
//xb:x del boton
//yb1: y del boton 1
//yb2: y del boton 2
//xubt1: ubicacion del texto del boton 1 en x
//yubt1: ubicacion del texto del boton 1 en y
//xubt2: ubicacion del texto del boton 2 en x



PImage[] im = new PImage[17];
String[] tex = new String[17];
PFont font;
int j,xb=480,yb1=100,yb2=300,xubt1=420,yubt1=120,xubt2=310;
int i=0;

int estado = 1;

void setup(){
  font = loadFont("JuiceITC-Regular-48.vlw");
  size(600,600);
  for(j=0; j<17; j++){
      im[j] = loadImage("imagen"+j+".jpg");
  }  
 
  tex[0] = "\n\n\n\n\nCreditos:\n\n-Jimena Aylen Marazzi \n-Comision 4 \n-Hans Christian Andersen";
  tex[1] = "\n\n\n\n\n\n\n\n\n\n\nEl traje nuevo del emperador...";
  tex[2] = "\n\n\n\n                                                Hace muchos años\n                                               vivía en un reino\n                                              lejano un emperador\n                                              muy presumido.\nGastaba todo su dinero en trajes y telas carisimas. \nEl pasaba los días probándose trajes y mirándose en\nlos espejos de su palacio.";
   tex[3] = "\n\n\n\n                                                Un día llegaron a\n                                          la ciudad dos farsantes\n                                    que se hacían pasar por\nsastres.  Estos desde la plaza central de la ciudad\ncomenzaron a decir: -Acérquense y miren!!\nTejemos trajes que son invisibles para todos aquellos\nque son tontos.\n¡Sólo los listos pueden ver nuestros magníficos vestidos!";
   tex[4] = "\n\n\n\n\n\n\n                                             Aquella sorprendente\nnoticia llegó muy pronto a oídos del emperador... \nSi yo vistiera uno de esos trajes podría saber qué\nconsejeros del reino son listos y quiénes son tontos...\n-pensó el emperador.";
   tex[5] = "\n\n\n\n\nUna vez que encontró a los dos falsos sastres y les\nentregó el oro.\nEnseguida aquellos dos pillos armaron un gran taller. \nTodas las noches prendían las luces para que los\nhabitantes del reino creyeran que trabajaban en el\ntraje nuevo del emperador.\nPero no cosían ni un botón...";
   tex[6] = "\n\n\n\n\n\n\nUn día, el emperador ordenó a su primer ministro que\nfuese al taller para supervisar su trabajo. \nPero al llegar al taller el primer ministro se quedó \npasmado. -¿Qué significa esto?, pensó. \nPero... ¡si en el telar no hay nada!!!";
   tex[7] = "\n\n\n\n\n\n\nMientras tanto, los falsos sastres hacían como que\ncortaban, medían y cosían...   Y dirigiéndose al \nconfundido primer ministro, le preguntaron:\n-Excelencia ¿no son maravillosas estas telas, estos \ncolores y estos botones?";
   tex[8] = "\n\n\n                                    Cuando el primer ministro \n                                    volvió, le dijo al emperador:\n                                    -Majestad, puede estar \n                                    satisfecho. \nEl traje que están haciendo esos dos sastres es muy\nlindo.\n-¡Oh, estoy deseando estrenar mi traje! - exclamó \nentusiasmado el emperador. ";
   tex[9] = "\n\n\n                                                A la mañana \n                                                siguiente el \n                                                emperador y sus \n                                                consejeros se \n                                            acercaron al taller. \nEntonces, los dos sastres levantaron los brazos en el \naire como si sostuviesen algo, y le dijeron al emperador:\n-Aquí está su traje. Las prendas son tan finas que \nparecerá que no lleva nada puesto!!";
   tex[10] = "\n\n                                             Para completar \n                                            aquella comedia, los \n                                           dos rufianes le dijeron \n                                        al emperador:-¿Sería\n                                    tan amable de quitarse la \nropa para que podamos vestirlo con el traje nuevo?\nLuego de que el emperador aceptara, los dos pillos \nsimularon vestirlo con aquel traje invisible.\n-¡Oh, qué bien le sienta el traje, majestad!\n-decían los consejeros.";
   tex[11] = "\n\n\n\n\n\nDe este modo, el emperador, desnudo, echó a andar por\nlas calles de la ciudad.\nY aunque nadie en la ciudad veía el traje, todos\ngritaban al paso de la comitiva:\n-¡Qué lindo es el traje nuevo del emperador!\n¡Qué magnifico manto!";
   tex[12] = "\n\n\n\n\n\n                                          Pero cuando el desfile \n                                      llegó a la plaza principal,\nun niño exclamó: - ¡Pero si el emperador no viste ningún \ntraje! ¡Fíjense, si está desnudo! - ¡Es verdad! El chico \ntiene razón - comenzó a gritar el pueblo entero- \n¡El emperador va desnudo! ¡El emperador va desnudo!";
   tex[13] = "\n\n\n\n                                           Al oír los gritos de sus \n                                           súbditos, el emperador\n                                         se avergonzó muchísimo.\nPero en lugar de reconocer la verdad, el emperador y sus\nconsejeros siguieron marchando por las calles como si \nnada ocurriese. Y los ayudas de cámara \ncontinuaron sujetando la cola de \naquel traje inexistente.                    Fin Clásico."; //final 1
   tex[14] = "\n\n\n\n\nEl primer ministro decidio no \ncreerles y al investigar en otros \npueblos, todos le comentaron que se trataba de una\ngran estafa. \nAl comentarle esto al emperador, este mismo decidio \ncastigarlos de la siguiente manera:"; //6.1
   tex[15] = "\n\n\n\n\n\n\nEstafadores, este es el futuro que les espera: \n¡Una vida tras las rejas! \nA mi no me engañan - exclamó el emperador.\n\n                                                       Final 2"; //6.2 final 2
   tex[16] = "\n\n                                     Largo, fuera de mi reino!\n                                   No los quiero volver a ver \n                               por aquí! Agradezcan que su\n                              castigo solo es irse, podría ser \n                              mucho peor!!\n\n\n\n      Final 3"; //6.3 final 3
} 
 
 float disBoton(int xboton, int yboton){
 
 float r=0;
 
 r=dist(mouseX, mouseY, xboton, yboton);
   
 return r;
}

void pant(int pos, int canBot, String boton1, String boton2){
  fill(0);
  textFont(font, 35);
   image(im[pos], 0, 0,600,600);
   text(tex[pos], 20,100);
    strokeWeight(5);
    stroke(146,109,90);
    fill(206,168,149);
    if(canBot == 1){
     ellipse(xb,yb1,150,100);//boton solo
       fill(0);
      textSize(45);
       text(boton1, xubt1,yubt1);
    }else{
      ellipse(xb,yb1,150,100); //dos botones
      ellipse(xb,yb2,150,100);
      fill(0);
      textSize(45);
      text(boton1, xubt1,yubt1);
      text(boton2, xubt1,xubt2);
    }  
}  



void draw(){
 
    if(estado == 1){
     pant(1,2," Creditos","Comenzar");
    }
   
    if(estado == 0){
     pant(0,1,"  Inicio","");
    }
     if(estado == 2){
     
     pant(2,1,"Siguiente","");
    }
 
      if(estado == 3){
     
     pant(3,1,"Contratar","");
    }
 
  if(estado == 4){
     
     pant(4,1,"Siguiente","");
    }
   
  if(estado == 5){
     
     pant(5,1,"Siguiente","");
    }
  if(estado == 6){
     
     pant(6,1,"Siguiente","");
    }
  if(estado == 7){
     
     pant(7,2," Aceptar","  Dudar");
    }  
 if(estado == 8){
     
     pant(8,1,"Siguiente","");
    }
 if(estado == 9){
     
     pant(9,1,"Siguiente","");
    }
if(estado == 10){
     
     pant(10,1,"Siguiente","");
    }
  if(estado == 11){
     
     pant(11,1,"Siguiente","");
    }
   if(estado == 12){
     
     pant(12,1,"Siguiente","");
    }
   if(estado == 13){
     
     pant(13,1,"Reiniciar","");
    }
  if(estado == 14){
     
     pant(14,2,"  Carcel","  Echar");
    }  
  if(estado == 15){
     
     pant(15,1," Reinicio","");
    }
  if(estado == 16){
     
     pant(16,1," Reinicio","");
    }
   
   
}

void mousePressed(){
 
 if(estado == 1){
 
    if(disBoton(xb,yb1) < 50)
      estado = 0;
       else
       if(disBoton(xb,yb2) < 50)
         estado = 2;
 }else        
  if(estado == 0){ 
 
    if(disBoton(xb,yb1) < 50)
      estado = 1;
     
 } else
    if(estado == 2){ 
 
    if(disBoton(xb,yb1) < 50)
      estado = 3;
     
 }else        
  if(estado == 3){
 
    if(disBoton(xb,yb1) < 50)
      estado = 4;
     
 }else        
  if(estado == 4){
 
    if(disBoton(xb,yb1) < 50)
      estado = 5;
 }else        
  if(estado == 5){
 
    if(disBoton(xb,yb1) < 50)
      estado = 6;
 }else        
  if(estado == 6){
 
    if(disBoton(xb,yb1) < 50)
      estado = 7;
      
 }else        
  if(estado == 7){
 
    if(disBoton(xb,yb1) < 50)
      estado = 8;
       else
       if(disBoton(xb,yb2) < 50)
         estado = 14;
}else        
  if(estado == 8){
 
    if(disBoton(xb,yb1) < 50)
      estado = 9;
}else        
  if(estado == 9){
 
    if(disBoton(xb,yb1) < 50)
      estado = 10;
}else        
  if(estado == 10){
 
    if(disBoton(xb,yb1) < 50)
      estado = 11;
}else        
  if(estado == 11){
 
    if(disBoton(xb,yb1) < 50)
      estado = 12;
}else        
  if(estado == 12){
 
    if(disBoton(xb,yb1) < 50)
      estado = 13;
}else        
  if(estado == 13){
 
    if(disBoton(xb,yb1) < 50)
      estado = 1;
}else        
  if(estado == 14){
 
    if(disBoton(xb,yb1) < 50)
      estado = 15;  
      else
       if(disBoton(xb,yb2) < 50)
         estado = 16;
}else        
  if(estado == 15){
 
    if(disBoton(xb,yb1) < 50)
      estado = 1;
}else        
  if(estado == 16){
 
    if(disBoton(xb,yb1) < 50)
      estado = 1;
  }
}  
