//Jimena Aylen Marazzi
//Comision 4
//tp4
//Link al video explicativo: https://youtu.be/3pMMPdbRHJk?si=TBiH_cRiZIMMvS4E

const DERECHA = "DERECHA";
const IZQUIERDA = "IZQUIERDA";

let imagen = [];
let policiaDer = [];
let policiaIzq = [];
let ladronDer = [];
let ladronIzq = [];
let texto = [];
let boton = [];
let imgFondo;
let imgEscal;
let imgDinero;
let imgMaletin;
let imgObstaculo;

let posXImagen = 0;
let posYImagen = 0;
let tamXImagen = 800;
let tamYImagen = 500;

let posX = 50;

let posXLadron = 100;
let anchoPolicia = 20;
let altoPolicia = 50;
let anchoLadron = 20;
let altoLadron = 50;

let posXMaletin = 200;
let posYMaletin = 265;
let posXDinero = 500;
let posYDinero = 400;
let bonusActivos = [true, true];

let spriteActualLadron = 0;
let spriteActualPolicia = 0;
let direccion = DERECHA;
let direccionLadron = DERECHA;

let policiaEstaSaltando = false;
let direccionSalto = -1;
let incrementoPosX = 3.4;
let incrementoPosY = 0;     // PARA LA VELOCIDAD DE SUBIDA
let alturaSalto = 50;


let posicionPiso = [380,240,100];
let pisoActual = 0;
let posY = posicionPiso[pisoActual];

let posicionPisoLadron = [380, 240, 100];
let pisoActualLadron = 0;
let posYLadron = posicionPisoLadron[pisoActualLadron];
let estaEnPiso = true;
let estaEnEscalera = false;

let movimientoXLadron = 3;
let movimientoYLadron = 0;
let ultimaDireccionLadron = movimientoXLadron;

let escaleraLadron = false;


let score = 100;

function preload(){
    for(let i=0; i<4; i++){
    policiaIzq[i] = loadImage('data/policia' + (i) + '_izq.png');
    policiaDer[i] = loadImage('data/policia' + (i) + '.png');
    }
    for(let i=0; i<3; i++){
    ladronIzq[i] = loadImage('data/ladron' + (i) + '_izq.png');
    ladronDer[i] = loadImage('data/ladron' + (i) + '.png');
    }
    for(let i=0; i<6; i++){
    imagen[i] = loadImage('data/imagen' + (i) + '.png');
    }
    for(let i=0; i<5; i++){
    texto[i] = loadImage('data/texto' + (i) + '.png');
    }
    for(let i=0; i<5; i++){
    boton[i] = loadImage('data/boton' + (i) + '.png');
    }
    imgFondo = loadImage('data/piso' + '.png');
    imgEscal = loadImage('data/escalera' + '.png');
    imgDinero = loadImage('data/dinero' + '.png');
    imgMaletin = loadImage('data/maletin' + '.png');
    imgObstaculo = loadImage('data/obstaculo' + '.png');
    
}


function setup() {
createCanvas(800,500);
estado = 1;
}


function draw() {
  pantallas();
}
