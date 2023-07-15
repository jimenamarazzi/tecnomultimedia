PImage[] im = new PImage[17];
String[] tex = new String[17];

int j;
int i=0;


int estado = 1;

void setup(){
  size(600,600);
  for(j=0; j<17; j++){
      im[j] = loadImage("imagen"+j+".jpg");
  }  
 
  tex[0] = "Creditos: \n Jimena Aylen Marazzi \n Comision 4 \n Hans Christian Andersen";
  tex[1] = " El traje nuevo \n del emperador";
  tex[2] = " Hace muchos años vivía en un reino lejano \n un emperador muy presumido. \n Gastaba todo su dinero en trajes y \n telas carisimas. \n El pasaba los días probándose trajes \n y mirándose en los espejos de su palacio.";
   tex[3] = " Un día llegaron a la ciudad dos farsantes \n que se hacían pasar por sastres. \n Estos desde la plaza central de la \n ciudad comenzaron a decir:-Acérquense y miren. \n Tejemos trajes que son invisibles \n para todos aquellos que son tontos. \n ¡Sólo los listos pueden ver nuestros \n magníficos vestidos!";
   tex[4] = " Aquella sorprendente noticia llegó muy \n pronto a oídos del emperador. \n Si yo vistiera uno de esos trajes podría \n  saber qué consejeros del reino son listos \n  y quiénes son tontos - \n pensó el emperador.";
   tex[5] = " Una vez qu encontró a los dos falsos sastres  \n y les entregó el oro, aquellos dos \n pillos armaron armaron un gran taller. \n Todas las noches prendían las luces \n para que los habitantes del reino \n creyeran que trabajaban en el traje nuevo \n del emperador. Pero no cosían ni un botón.";
   tex[6] = " Un día, el emperador ordenó a su primer  \n ministro que fuese al taller para supervisar \n su trabajo.Pero al llegar al taller \n el primer ministro se quedó pasmado. \n ¿Qué significa esto?, pensó. \n Pero... ¡si en el telar no hay nada!";
   tex[7] = " Mientras tanto, los falsos sastres hacían \n como que cortaban, medían y cosían. \n Y dirigiéndose al confundido primer ministro,\n  le preguntaron:-Excelencia ¿no son maravillosas estas telas, \n estos colores y estos botones?";
   tex[8] = " Cuando el primer ministro volvió, le dijo \n al emperador:-Majestad, puede estar satisfecho. \n El traje que están haciendo esos dos sastres \n es muy lindo.-¡Oh, estoy deseando estrenar mi traje! \n - exclamó entusiasmado el emperador. ";
   tex[9] = " A la mañana siguiente el emperador y sus consejeros \n fueron al taller de aquellos pícaros. \n Entonces, los dos sastres se acercaron al telar y \n levantando los brazos en el aire como si sostuviesen algo, \n le dijeron al emperador:-Aquí está su traje.\n Las prendas son tan finas que parecerá que no \n lleva nada puesto.";
   tex[10] = " Para completar aquella comedia, los dos rufianes \n le dijeron al emperador:-¿Sería tan amable de quitarse la ropa \n para que podamos vestirlo con el traje nuevo?Luego de que el \n emperador aceptara, los dos pillos simularon vestirlo con aquel traje invisible.\n-¡Oh, qué bien le sienta el traje, majestad!-\ndecían los consejeros.";
   tex[11] = " De este modo, el emperador, desnudo,\n echó a andar por las calles de la ciudad.\nY aunque nadie en la ciudad veía el traje, \n todos gritaban al paso de la comitiva:\n-¡Qué lindo es el traje nuevo del emperador!\n¡Qué magnifico manto!";
   tex[12] = " Pero cuando el desfile llegó a la plaza principal,\n un niño exclamó:-¡Pero si el emperador no viste ningún traje!\n¡Fíjense, si está desnudo!\n-¡Es verdad! El chico tiene razón - \n comenzó a gritar el pueblo entero- \n ¡El emperador va desnudo!¡El emperador va desnudo!";
   tex[13] = " Al oír los gritos de sus súbditos, \n el emperador se avergonzó muchísimo.\n Pero en lugar de reconocer la verdad, el emperador y sus consejeros \n siguieron marchando por las calles como si nada ocurriese.\n Y los ayudas de cámara continuaron sujetando \n la cola de aquel traje inexistente."; //final 1
   tex[14] = " El primer ministro decidio no creerles y \n al investigar en otros pueblos, \n todos le comentaron que se trataba de una gran estafa. \n Al comentarle esto al emperador, \n este mismo decidio castigarlos de la siguiente manera:"; //6.1
   tex[15] = " Estafadores, este es el futuro que les espera: \n una vida tras las rejas! A mi no me engañan \n - exclamó el emperador."; //6.2 final 2
   tex[16] = " Largo, fuera de mi reino! No los quiero \n volver a ver por aquí! Agradezcan que \n su castigo solo es irse, \n podría ser mucho peor!"; //6.3 final 3
}
 
 float disBoton(int xboton, int yboton){ //que retorna valor
 
 float r=0;
 
 r=dist(mouseX, mouseY, xboton, yboton);
   
 return r;
}

void pant(int pos, int canBot, String boton1, String boton2){//parametros q no retorna
  fill(255);
   textSize(30);
   image(im[pos], 0, 0,600,600);
   text(tex[pos], 100,100);
    fill(200);
    if(canBot == 1){
     ellipse(380,100,150,100);//boton solo
       fill(0);
      textSize(15);
       text(boton1, 400,120);
    }else{
      ellipse(380,100,150,100); //dos botones
      ellipse(380,300,150,100);
      fill(0);
      textSize(15);
      text(boton1, 400,120);
      text(boton2, 400,320);
    }  
}  



void draw(){
 
    if(estado == 1){
     pant(1,2,"Creditos","comenzar");
    }
   
    if(estado == 0){
     pant(0,1,"Inicio","");
    }
     if(estado == 2){
     
     pant(2,1,"Siguiente","");
    }
 
      if(estado == 3){
     
     pant(3,1,"","Conseguir uno");
    }
 
  if(estado == 4){
     
     pant(4,1,"Siguiente","");
    }
    
  if(estado == 5){
     
     pant(5,1,"Siguiente","");
    }
  if(estado == 6){
     
     pant(6,2,"Responder -si","Dudar");
    }
  if(estado == 7){
     
     pant(7,1,"","Siguiente");
    }  
 if(estado == 8){
     
     pant(8,1,"Siguiente","");
    }
 if(estado == 9){
     
     pant(9,1,"","Siguiente");
    }
if(estado == 10){
     
     pant(10,1,"Siguiente","");
    }
  if(estado == 11){
     
     pant(11,1,"","Siguiente");
    }
   if(estado == 12){
     
     pant(12,1,"Siguiente","");
    } 
   if(estado == 13){
     
     pant(13,1,"Reiniciar","");
    } 
  if(estado == 14){
     
     pant(14,1,"Carcel","Echar del reino");
    }  
  if(estado == 15){
     
     pant(15,1,"","Reinicio");
    }
  if(estado == 16){
     
     pant(16,1,"Reinicio","");
    }
}

void mousePressed(){
 
 if(estado == 1){ //cuando tenemos dos botones
 
    if(disBoton(380,100) < 50)
      estado = 0;
       else
       if(disBoton(380,300) < 50)
         estado = 2;
 }else        
  if(estado == 0){ //cuando tenemos un boton
 
    if(disBoton(380,100) < 50)
      estado = 1;
     
 } else
    if(estado == 2){ //un boton 
 
    if(disBoton(380,100) < 50)
      estado = 3;
      
 }else        
  if(estado == 3){
 
    if(disBoton(380,300) < 50)
      estado = 4;
     
 }else        
  if(estado == 4){
 
    if(disBoton(380,100) < 50)
      estado = 5;
 }else        
  if(estado == 5){
 
    if(disBoton(380,100) < 50)
      estado = 6;
 }else        
  if(estado == 6){
 
    if(disBoton(380,100) < 50)
      estado = 7;
      else
       if(disBoton(380,300) < 50)
         estado = 14;
 }else        
  if(estado == 7){
 
    if(disBoton(380,300) < 50)
      estado = 8;
}else        
  if(estado == 8){
 
    if(disBoton(380,100) < 50)
      estado = 9;
}else        
  if(estado == 9){
 
    if(disBoton(380,300) < 50)
      estado = 10;
}else        
  if(estado == 10){
 
    if(disBoton(380,100) < 50)
      estado = 11;
}else        
  if(estado == 11){
 
    if(disBoton(380,300) < 50)
      estado = 12;
}else        
  if(estado == 13){
 
    if(disBoton(380,100) < 50)
      estado = 1;
}else        
  if(estado == 14){
 
    if(disBoton(380,100) < 50)
      estado = 15;  
      else
       if(disBoton(380,300) < 50)
         estado = 16;
}else        
  if(estado == 15){
 
    if(disBoton(380,100) < 50)
      estado = 1;
}else        
  if(estado == 16){
 
    if(disBoton(380,100) < 50)
      estado = 1;
  }
}  
   
