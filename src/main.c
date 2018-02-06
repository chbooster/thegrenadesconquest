//-----------------------------LICENSE NOTICE------------------------------------
//  This file is part of CPCtelera: An Amstrad CPC Game Engine
//  Copyright (C) 2015 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//------------------------------------------------------------------------------

#include <cpctelera.h>
#include "jimmy_tileset.h"
#include "obdulia_tileset.h"
#include "disparo.h"
#include "logo.h"
#include "160x200.h"
#include "tileset_kcpc.h"
#include "presentation.h"
#include "battle.h"
#include "bloque.h"
#include <stdlib.h>
#include <stdio.h>

#define SI 1
#define NO 0

//MODE 0
#define ANCHO_PANTALLA 80
#define ALTO_PANTALLA 100
#define LIMITE_DERECHO ANCHO_PANTALLA - PRE_JIMMY_TILESET_00_W
#define ANCHO_PERSONAJE 5  // (5)
#define ALTO_PERSONAJE 14

//#define LIMITE_INFERIOR FIN_MAPA_Y - PRE_MARIO32X16_00_W

#define ORIGEN_ROTULO_Y 0
#define FIN_ROTULO_Y 19
#define ORIGEN_MAPA_Y 0
#define ORIGEN_MAPA cpctm_screenPtr(CPCT_VMEM_START, 0, 0)
#define FIN_MAPA_Y 100

const u8 matriz[11][13]={
	{1,1,1,1,1,1,1,1,1,1,1,1,1},
	{1,1,1,2,1,2,1,2,1,2,1,2,1},
	{1,1,1,1,1,1,1,1,1,1,1,1,1},
	{1,2,1,2,1,2,1,2,1,2,1,2,1},
	{1,1,1,1,1,1,1,1,1,1,1,1,1},
	{1,2,1,2,1,2,1,2,1,2,1,2,1},
	{1,1,1,1,1,1,1,1,1,1,1,1,1},
	{1,2,1,2,1,2,1,2,1,2,1,2,1},
	{1,1,1,1,1,1,1,1,1,1,1,1,1},
	{1,2,1,2,1,2,1,2,1,2,1,1,1},
	{1,1,1,1,1,1,1,1,1,1,1,1,1}
};


typedef struct {
   u8  mira;
   u8* sprite;
} TFrame;

typedef struct{
    u8 x, y;
    u8 identidad; // 0: jimmmy; 1:obdulia
    u8 px, py;
    u8* sprite;
    u8 mover;
    u8 estado;
   TFrame* frame;
   u8 nframe;
   u8 mira;
    u8 direccion; //Direccion 0: Derecha, Direccion 1: izquierda
    u8 fila;
    u8 columna;
    u8 abajo;
    u8 derecha;
    u8 izquierda;
    u8 arriba;
    u8 municion;
    u8 disparando;
    u8 tiempoDisp;
    u8 contadorAtaque;
    u8 miraAtacando;
    u8 llavecogida;
    u8 controles; //0: WASD; 1: Numpad; 2: Joy0; 3: Joy1
    u8 soy;
    u8 marcador;

} TProta;

TProta prota;
TProta protaDos;

static const cpct_keyID keysWASD[5] = {Key_Space, Key_D, Key_A, Key_S, Key_W};
static const cpct_keyID keysNumpad[5] = {Key_Enter, Key_F6, Key_F4, Key_F5, Key_F8};
static const cpct_keyID keysJoy0[5] = {Joy0_Fire1, Joy0_Right, Joy0_Left, Joy0_Down, Joy0_Up};

typedef struct{
  u8 x, y;
  u8 px, py;
  u8 encontrado;
  u8* sprite;
  u8 pegado;
} Tdisparo;

Tdisparo disparo;
Tdisparo disparoDos;

// Mirando hacia
enum {
      M_derecha   = 0
   ,  M_izquierda
   ,  M_abajo
   ,  M_arriba
} EMirar;


// Eventos del personaje
enum {
      EV_detenerse = 0
   ,  EV_moverse
   ,  EV_atacar
   ,  EV_atacarBaj
   ,  EV_atacarSub
   ,  EV_subir
   ,  EV_bajar
   ,  EV_numEventos
} EEventos;

// Estados del personaje
enum {
      ST_quieto  = 0
   ,  ST_quietoAbaj
   ,  ST_quietoArri
   ,  ST_andando
   ,  ST_atacando
   ,  ST_atacandoBaj
   ,  ST_atacandoSub
   ,  ST_subiendo
   ,  ST_bajando
   ,  ST_numEstados
} EEstados;

// Estado de Sprites
#define HERO_FRAMES  11
const TFrame g_frames[HERO_FRAMES] = {
      { M_derecha, pre_jimmy_tileset_00 }   ,  { M_derecha, pre_jimmy_tileset_01 }
   ,  { M_derecha, pre_jimmy_tileset_02 }   ,  { M_derecha, pre_jimmy_tileset_03 }
   ,  { M_abajo, pre_jimmy_tileset_04 }   ,  { M_abajo, pre_jimmy_tileset_05 }
   ,  { M_abajo, pre_jimmy_tileset_06 }   ,  { M_abajo, pre_jimmy_tileset_07 }
   ,  { M_arriba, pre_jimmy_tileset_08 }   ,  { M_arriba, pre_jimmy_tileset_09 }
   ,  { M_arriba, pre_jimmy_tileset_10 }
};

const TFrame g_framesDos[HERO_FRAMES] = {
      { M_derecha, pre_obdulia_tileset_00 }   ,  { M_derecha, pre_obdulia_tileset_01 }
   ,  { M_derecha, pre_obdulia_tileset_02 }   ,  { M_derecha, pre_obdulia_tileset_03 }
   ,  { M_abajo, pre_obdulia_tileset_04 }   ,  { M_abajo, pre_obdulia_tileset_05 }
   ,  { M_abajo, pre_obdulia_tileset_06 }   ,  { M_abajo, pre_obdulia_tileset_07 }
   ,  { M_arriba, pre_obdulia_tileset_08 }   ,  { M_arriba, pre_obdulia_tileset_09 }
   ,  { M_arriba, pre_obdulia_tileset_10 }
};

// Animaciones
#define ANIM_PAUSA      1
#define ANIM_PAUSAABAJO      1
#define ANIM_PAUSAARRIBA      1
#define ANDAR_FRAMES    6
#define ATACAR_FRAMES   4
#define ATACARBAJ_FRAMES   2
#define ATACARSUB_FRAMES   1
#define SUBIR_FRAMES   6
#define BAJAR_FRAMES   6
TFrame* const anim_andar[ANDAR_FRAMES] = { 
   &g_frames[0], &g_frames[0], &g_frames[1], &g_frames[1], &g_frames[2], &g_frames[2]
};
TFrame* const anim_atacar[ATACAR_FRAMES] = { 
   &g_frames[2], &g_frames[3], &g_frames[2], &g_frames[3]
};
TFrame* const anim_subir[SUBIR_FRAMES] = { 
   &g_frames[8], &g_frames[8], &g_frames[9], &g_frames[9], &g_frames[10], &g_frames[10]
};
TFrame* const anim_atacarBaj[ATACARBAJ_FRAMES] = { 
   &g_frames[4], &g_frames[7]
};
TFrame* const anim_bajar[BAJAR_FRAMES] = { 
   &g_frames[4], &g_frames[4], &g_frames[5], &g_frames[5], &g_frames[6], &g_frames[6]
};


TFrame* const anim_andarDos[ANDAR_FRAMES] = { 
   &g_framesDos[0], &g_framesDos[0], &g_framesDos[1], &g_framesDos[1], &g_framesDos[2], &g_framesDos[2]
};
TFrame* const anim_atacarDos[ATACAR_FRAMES] = { 
   &g_framesDos[2], &g_framesDos[3], &g_framesDos[2], &g_framesDos[3]
};
TFrame* const anim_subirDos[SUBIR_FRAMES] = { 
   &g_framesDos[8], &g_framesDos[8], &g_framesDos[9], &g_framesDos[9], &g_framesDos[10], &g_framesDos[10]
};
TFrame* const anim_atacarBajDos[ATACARBAJ_FRAMES] = { 
   &g_framesDos[4], &g_framesDos[7]
};
TFrame* const anim_bajarDos[BAJAR_FRAMES] = { 
   &g_framesDos[4], &g_framesDos[4], &g_framesDos[5], &g_framesDos[5], &g_framesDos[6], &g_framesDos[6]
};

u8* menu_bg;
u8* mapa;
u8*getpsyched;
const u8 totalBloq=20;
u8 cantBlo;
u8 lastWinner; //1: jimmy; 2: obdulia
u8 pos;
u8 estado; //ESTADO 0: menu; ESTADO 1: juego; ESTADO 2: creditos; ESTADO 3: portada; ESTADO 4: Controles; ESTADO 5: Ganador; ESTADO 6: Ayuda
u8 seleccion; //SELECCION 0: jugar; SELECCION 2: config musica; SELECCION 3: creditos
u8 seleccionControles;
u8 seleccionMusica;
u8 musica; //Flag para controlar la reproduccion de la musica
u8 keyCounter; //Contador para controlar la pulsacion de teclado

u32 tiempo=2;

u8 encontrado=1;//1 si no hay bloque en la posicion y 2 si si lo hay


u8 ronda;
u8 reapareciendo;

extern void play();

u8 i; //global 0
void intHandler(){
    if(++i == 6){   //50Hz (300/6)
        if(musica){
            play(); //LLAMADA A _play:: ENSAMBLADOR
            i = 0;
        }
    }
}


//Mascara para mezclar el fondo con el sprite del personaje
cpctm_createTransparentMaskTable(pre_tablatrans, 0x0100, M0, 0); 

void asignarFrame(TFrame **animacion) {
   prota.frame = animacion[prota.nframe / ANIM_PAUSA];
}
void asignarFrameDos(TFrame **animacion) {
   protaDos.frame = animacion[protaDos.nframe / ANIM_PAUSA];
}

void girarFrame() {
   TFrame* f = prota.frame;
   if (f->mira != prota.mira) {
      cpct_hflipSpriteM0(PRE_JIMMY_TILESET_00_W, PRE_JIMMY_TILESET_00_H, f->sprite);
      f->mira = prota.mira;
   }
}
void girarFrameDos() {
   TFrame* f = protaDos.frame;
   if (f->mira != protaDos.mira) {
      cpct_hflipSpriteM0(PRE_OBDULIA_TILESET_00_W, PRE_OBDULIA_TILESET_00_H, f->sprite);
      f->mira = protaDos.mira;
   }
}

void seleccionarSpriteProta() {
   switch(prota.estado) {
      case ST_quieto:      { prota.frame = &g_frames[0];  break; }
      case ST_quietoArri:      { prota.frame = &g_frames[8];  break; }
      case ST_quietoAbaj:      { prota.frame = &g_frames[4];  break; }
      case ST_andando:     { asignarFrame(anim_andar);    break; }
      case ST_atacando:   { asignarFrame(anim_atacar);   break; }
      case ST_atacandoSub:    { prota.frame = &g_frames[8]; break; }
      case ST_atacandoBaj:     {asignarFrame(anim_atacarBaj);break; }
      case ST_subiendo: { asignarFrame(anim_subir);     break; }
      case ST_bajando: { asignarFrame(anim_bajar);     break; }
   }
   girarFrame();
}
void seleccionarSpriteProtaDos() {
   switch(protaDos.estado) {
      case ST_quieto:      { protaDos.frame = &g_framesDos[0];  break; }
      case ST_quietoArri:      { protaDos.frame = &g_framesDos[8];  break; }
      case ST_quietoAbaj:      { protaDos.frame = &g_framesDos[4];  break; }
      case ST_andando:     { asignarFrameDos(anim_andarDos);    break; }
      case ST_atacando:   { asignarFrameDos(anim_atacarDos);   break; }
      case ST_atacandoSub:    { protaDos.frame = &g_framesDos[8]; break; }
      case ST_atacandoBaj:     {asignarFrameDos(anim_atacarBajDos);break; }
      case ST_subiendo: { asignarFrameDos(anim_subirDos);     break; }
      case ST_bajando: { asignarFrameDos(anim_bajarDos);     break; }
   }
   girarFrameDos();
}

u8 dibujaGuardaBloque(u8 numrand, u8 numranddos, u8 numero, u8 total, u8 cantBlo){
  u8* pvmem;
  //Para probar que no se ponga en las esquinas de los personajes
  if(numrand<2 && numranddos>2 || numranddos<2 && numrand>2 || numranddos>7 && numrand<10 || numranddos<7 && numrand>10 || (numrand>1 && numranddos>1 && numrand<11 && numranddos<8)){
    //Para que no se coloque encima de un bloque estatico
    if(matriz[numranddos][numrand]!=numero){
      //Pongo la posicion y dibujo
      pvmem = cpct_getScreenPtr(CPCT_VMEM_START, numrand*6, (16*numranddos)+24);
      cpct_drawSprite(pre_bloque, pvmem, PRE_BLOQUE_W, PRE_BLOQUE_H);
      //Reduzco el total para el bucle y anyado la posicion del bloque
      total--;
      cantBlo++;
    }
  }
  return total;
}
/*COMENTADO POR FALTA DE ESPACIO
void sfxPlayer(u8 fx){
    //fx: 0: cursor; 1: selection; 2: blast; 3: grenade; 
    
    switch(fx){
        
        case 0:
            
             cpct_akp_SFXPlay (4, 15, 80, 0, 0, 010);
            
            break;
        
        
        
    }
    
    
    
}*/

void dibujaBloques(){
  u8 numrand, numranddos, total;
  u8 numero=2;
  cantBlo=0;
  

  total=totalBloq;
  while(total>0){
  	tiempo+=ronda;
    tiempo=tiempo%200;
    tiempo++;
    numrand=(tiempo*cpct_getRandom_xsp40_u8())%13;
    numranddos=(tiempo*cpct_getRandom_xsp40_u8())%11;
    pos=(numranddos*12+numrand);
    
      total=dibujaGuardaBloque(numrand, numranddos, numero, total, cantBlo);
     
  }
}


void dibujarLlave(u8 color){
    //0: Llave roja en el mapa;  1: Llave roja en el marcador; 2: Llave verde en el mapa; 3: Llave verde en el marcador
    
    switch(color){
        
        case 0:
            cpct_drawTileAligned2x4_f(pre_tileset[16], cpct_getScreenPtr(CPCT_VMEM_START, 12, 40));
            cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, 14, 40));
            cpct_drawTileAligned2x4_f(pre_tileset[25], cpct_getScreenPtr(CPCT_VMEM_START, 16, 40));
            break;
               
        case 1: 
            cpct_drawTileAligned2x4_f(pre_tileset[32], cpct_getScreenPtr(CPCT_VMEM_START, 6, 4));
            cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, 8, 4));
            cpct_drawTileAligned2x4_f(pre_tileset[27], cpct_getScreenPtr(CPCT_VMEM_START, 10, 4));
            break;
            
        case 2: 
            cpct_drawTileAligned2x4_f(pre_tileset[32], cpct_getScreenPtr(CPCT_VMEM_START, 60, 180));
            cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, 62, 180));
            cpct_drawTileAligned2x4_f(pre_tileset[27], cpct_getScreenPtr(CPCT_VMEM_START, 64, 180));
            break;
            
        case 3: 
            cpct_drawTileAligned2x4_f(pre_tileset[16], cpct_getScreenPtr(CPCT_VMEM_START, 66, 4));
            cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, 68, 4));
            cpct_drawTileAligned2x4_f(pre_tileset[25], cpct_getScreenPtr(CPCT_VMEM_START, 70, 4));
            break;
            
    }
    
}

void borrarLlave(u8 color){
    //0: Llave roja en el mapa; 1: Llave verde en el mapa; 2: Llave roja en el marcador; 3: Llave verde en el marcador
    
    switch(color){
        
        case 0: 
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 12, 40));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 14, 40));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 16, 40));
            break;
            
        case 1: 
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 60, 180));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 62, 180));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 64, 180));
            break;
            
        case 2: 
            cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 6, 4));
            cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 8, 4));
            cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 10, 4));
            break;
        
        case 3: 
            cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 66, 4));
            cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 68, 4));
            cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 70, 4));
            break;

    }
    
}

void bloquearPuertas(){
    
        cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 2, 24));
        cpct_drawTileAligned2x4_f(pre_tileset[6], cpct_getScreenPtr(CPCT_VMEM_START, 2, 28));
        cpct_drawTileAligned2x4_f(pre_tileset[4], cpct_getScreenPtr(CPCT_VMEM_START, 2, 32));
        cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 2, 36));
        cpct_drawTileAligned2x4_f(pre_tileset[6], cpct_getScreenPtr(CPCT_VMEM_START, 2, 40));
        cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 0, 40));
            
        cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 76, 180));
        cpct_drawTileAligned2x4_f(pre_tileset[4], cpct_getScreenPtr(CPCT_VMEM_START, 74, 180));
        cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 74, 184));
        cpct_drawTileAligned2x4_f(pre_tileset[6], cpct_getScreenPtr(CPCT_VMEM_START, 74, 188));
        cpct_drawTileAligned2x4_f(pre_tileset[4], cpct_getScreenPtr(CPCT_VMEM_START, 74, 192));
        cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 74, 196));
    
}


void abrirPuerta(u8 personaje){
    //0: jimmy; 1: obdulia
    
    switch(personaje){
    
        case 0:
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 24));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 28));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 32));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 36));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 40));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 0, 40));
            break;
            
        case 1:
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 76, 180));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 180));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 184));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 188));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 192));
            cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 196));
            break;
    }
    
}

void dibujarMarcador(){
    
    u8 str0[4];
    u8 str1[4];
    sprintf(str0, "%d", prota.marcador);
    cpct_drawStringM0(str0, cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
    
    sprintf(str1, "%d", protaDos.marcador);
    cpct_drawStringM0(str1, cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
    

    
}

void sumaMarcador(u8 soy, u8 num){
	
    
	switch(soy){
		case 1:
				//Marcador de victorias de Jimmy
			    switch(num){
			    	case 0:
			    			cpct_drawStringM0("0", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
			    	break;
			    	case 1:
			    			cpct_drawStringM0("1", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
			    	break;
			    	case 2:
			    			cpct_drawStringM0("2", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
			    	break;
			    	case 3:
			    			cpct_drawStringM0("3", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
			    	break;
			    	case 4:
			    			cpct_drawStringM0("4", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
			    	break;
			    	case 5:
			    			cpct_drawStringM0("5", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
			    	break;
			    }
					//borrarDisparoDos();
			    	//borrarDisparo();
			    	protaDos.disparando=NO;
		break;
		case 2:
				//Marcador de victorias de Obdulia
			    switch(num){
			    	case 0:
			    			cpct_drawStringM0("0", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
			    	break;
			    	case 1:
			    			cpct_drawStringM0("1", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
			    	break;
			    	case 2:
			    			cpct_drawStringM0("2", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
			    	break;
			    	case 3:
			    			cpct_drawStringM0("3", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
			    	break;
			    	case 4:
			    			cpct_drawStringM0("4", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
			    	break;
			    	case 5:
			    			cpct_drawStringM0("5", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
			    	break;
			    }
					//borrarDisparoDos();
			    	//borrarDisparo();
			    	prota.disparando=NO;

		break;
	}

	
}

void reaparecer();

void comprobarPuerta(u8 personaje){
    //0: jimmy; 1: obdulia
    
    switch(personaje){
    
        case 0:
            if(prota.x + ANCHO_PERSONAJE / 2 >= 3 && prota.x + ANCHO_PERSONAJE <= 7 && prota.y + ALTO_PERSONAJE / 2 >= 25  && prota.y + ALTO_PERSONAJE / 2 <= 45){
                sumaMarcador(1, ++prota.marcador);//1 para jimmy
                lastWinner = 1;
                ronda++;
	    	reaparecer();
            }
            break;
            
        case 1:
            if(protaDos.x + ANCHO_PERSONAJE / 2 >= 72 && protaDos.x + ANCHO_PERSONAJE <= 78 && protaDos.y + ALTO_PERSONAJE / 2 >= 175  && protaDos.y + ALTO_PERSONAJE / 2 <= 196){
                sumaMarcador(2, ++protaDos.marcador);//2 paa obdulia
                lastWinner = 2;
                ronda++;
	    	reaparecer();
            }
            break;
    }
    
}

void comprobarLlave(u8 personaje){
    //0: jimmy; 1: obdulia
    
    switch(personaje){
    
        case 0:
            if(prota.x + ANCHO_PERSONAJE / 2 >= 60 && prota.x + ANCHO_PERSONAJE <= 71 && prota.y + ALTO_PERSONAJE / 2 >= 180  && prota.y + ALTO_PERSONAJE / 2 <= 194){
                prota.llavecogida = 1;
                borrarLlave(1);
                dibujarLlave(1);
                abrirPuerta(0);
               
            }
            break;
            
        case 1:
            if(protaDos.x + ANCHO_PERSONAJE / 2 >= 7 && protaDos.x + ANCHO_PERSONAJE <= 18 && protaDos.y + ALTO_PERSONAJE / 2 >= 32  && protaDos.y + ALTO_PERSONAJE / 2 <= 46){
                protaDos.llavecogida = 1;
                borrarLlave(0);
                dibujarLlave(3);
                abrirPuerta(1);
            }
            break;
    }
    
}

void actualizarMarcadorMunicion(u8 personaje, u8 valor){
    //valor: 0:jimmy; 1:obdulia
    #define y_base 12 //linea vertical balas
    u8 i;  
    u8 x_jimmy_base; //linea horizontal de la primera bala
    u8 x_obdulia_base; //linea horizontal de la primera bala
    x_jimmy_base = 26;
    x_obdulia_base = 50;
    
    i = 0;
    
    //if(valor>=0)
    	//Segun la compilacion ese if de arriba siempre es true
        switch(personaje){

            case 0:{
                while(i<10){
                    if(i<valor){
                        cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base));
                        cpct_drawTileAligned2x4_f(pre_tileset[36], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base-4));
                    }
                    else{
                        cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base));
                        cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base-4));
                    }
                    i++;
                }
                break;
            }
            case 1:{
                while(i<10){
                    if(i<valor){
                        cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base));
                        cpct_drawTileAligned2x4_f(pre_tileset[36], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base-4));
                    }
                    else{
                        cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base));
                        cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base-4));
                    }
                    i++;
                }
                break;
            } 
        }
}
u8 compruebaAzul(u8 x1,u8 x2,u8 x3,u8 y1,u8 y2,u8 y3){

#define FONDO 48
#define COLISIONABLE FONDO 
  if(cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, x1, y1), 0) == COLISIONABLE && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, x2, y2), 0) == COLISIONABLE && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, x3, y3), 0) == COLISIONABLE){
      return 1;
    }
    return 0;   
}


u8 validarColision(u8 dir, TProta * pro, u8 tecla){
    //izquierda: 0; arriba: 1; der: 2; abajo: 3;
    
    u8 x1=0, x2=0, x3=0, y1=0, y2=0, y3=0;
//    switch(color){
//        
//        case FONDO: return true; break;
//        case LLAVE_ROJA: reuturn false; break;
//        0: izquierda; 1:arriba;2: derecha;3:abajo
//        
//    }
    
    switch(dir){
        case 0:
              x1=pro->x-1;
              y1=pro->y+7;
              x2=pro->x-1;
              y2=pro->y;
              x3=pro->x-1;
              y3=pro->y+13;
              if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                return 1; 
              }
              if(tecla==1){
                y1++;y1++;
                y2++;y2++;
                y3++;y3++;
                if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                  pro->y=pro->y+2;
                  return 1; 
                }
                y1--;y1--;
                y2--;y2--;
                y3--;y3--;
                y1--;y1--;
                y2--;y2--;
                y3--;y3--;
                if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                  pro->y=pro->y-2;
                  return 1; 
                }
              }
                
              break; 

        case 1:
              x1=pro->x+3;
              y1=pro->y-1;
              x2=pro->x+4;
              y2=pro->y-1;
              x3=pro->x;
              y3=pro->y-1;
              if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                return 1; 
              }
              if(tecla==1){
                x1--;
                x2--;
                x3--;
                if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                  pro->x--;
                  return 1; 
                }
                x1++;
                x2++;
                x3++;
                x1++;
                x2++;
                x3++;
                if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                  pro->x++;
                  return 1; 
                }
              }
                
              break; 

        case 2: 
              x1=pro->x+6;
              y1=pro->y+7;
              x2=pro->x+6;
              y2=pro->y;
              x3=pro->x+6;
              y3=pro->y+13;
              if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                return 1; 
              }
              if(tecla==1){
                y1--;y1--;
                y2--;y2--;
                y3--;y3--;
                if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                  pro->y=pro->y-2;
                  return 1; 
                }
                y1++;y1++;
                y2++;y2++;
                y3++;y3++;
                y1++;y1++;
                y2++;y2++;
                y3++;y3++;
                if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                  pro->y=pro->y+2;
                  return 1; 
                }
              }
                
              break; 

        case 3: 
              x1=pro->x+2;
              y1=pro->y+ALTO_PERSONAJE+1;
              x2=pro->x+4;
              y2=pro->y+ALTO_PERSONAJE+1;
              x3=pro->x;
              y3=pro->y+ALTO_PERSONAJE+1;
              if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                return 1; 
              }
              if(tecla==1){

                x1--;
                x2--;
                x3--;
                if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                  pro->x--;
                  return 1; 
                }
                x1++;
                x2++;
                x3++;
                x1++;
                x2++;
                x3++;
                if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
                  pro->x++;
                  return 1; 
                }
              }
              break; 
    }
    
    return 0;
    
}

void actualizarMunicion(u8 personaje, u8 valor){
    
    switch(personaje){
        
        case 0: 
            prota.municion = valor;
            actualizarMarcadorMunicion(0, prota.municion);
            break;
        case 1: 
            protaDos.municion = valor;
            actualizarMarcadorMunicion(1, protaDos.municion);
            break;
            
    }
}

void decrecerMunicion(u8 personaje){
    
    switch(personaje){
        
        case 0: 
            if(prota.municion>0){
                prota.municion--;
                actualizarMarcadorMunicion(0, prota.municion);
            }
            break;
        case 1: 
            if(protaDos.municion>0){
                protaDos.municion--;
                actualizarMarcadorMunicion(1, protaDos.municion);
            }
            break; 
    }
}

void recargarMunicion(u8 personaje){
    
    switch(personaje){
        
        case 0: 
            prota.municion = 10;
            actualizarMarcadorMunicion(0, prota.municion);
            break;
        case 1: 
            protaDos.municion = 10;
            actualizarMarcadorMunicion(1, protaDos.municion);
    }
}

void comprobarRecargaMunicion(u8 personaje){
    //0: jimmy; 1: obdulia
    
    switch(personaje){
    
        case 0:
            if(prota.x + ANCHO_PERSONAJE / 2 >= 7 && prota.x + ANCHO_PERSONAJE <= 18 && prota.y + ALTO_PERSONAJE / 2 >= 32  && prota.y + ALTO_PERSONAJE / 2 <= 70)
                recargarMunicion(0);
                break;
            
        case 1:
            if(protaDos.x + ANCHO_PERSONAJE / 2 >= 60 && protaDos.x + ANCHO_PERSONAJE <= 71 && protaDos.y + ALTO_PERSONAJE / 2 >= 156  && protaDos.y + ALTO_PERSONAJE / 2 <= 194)
                recargarMunicion(1);
                break;
    }
}

void dibujarMapa() {
    
    cpct_etm_drawTilemap2x4(pre_terrain_W, pre_terrain_H, ORIGEN_MAPA, mapa);

}




void llenarVmem(u8 x_start, u8 x_end, u8 y_start, u8 y_end, u8 color){
    u8 i,j;

    for(j=y_start;j<y_end;j=j+4)
        for(i=x_start;i<x_end;i=i+2)  
            cpct_drawTileAligned2x4_f(pre_tileset[color], cpct_getScreenPtr(CPCT_VMEM_START, i, j));

}


void dibujarCaritaPersonaje(u8 personaje, u8 x, u8 y){
    //0: Jimmy; 1:Obdulia; 2:Mixta
    switch(personaje){
        case 0: 
            cpct_drawTileAligned2x4_f(pre_tileset[8], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
            cpct_drawTileAligned2x4_f(pre_tileset[18], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
            cpct_drawTileAligned2x4_f(pre_tileset[9], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
            cpct_drawTileAligned2x4_f(pre_tileset[19], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y+4));
            break;
        case 1:
            cpct_drawTileAligned2x4_f(pre_tileset[28], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
            cpct_drawTileAligned2x4_f(pre_tileset[38], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
            cpct_drawTileAligned2x4_f(pre_tileset[29], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
            cpct_drawTileAligned2x4_f(pre_tileset[39], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y+4)); 
            break;
        case 2:
            cpct_drawTileAligned2x4_f(pre_tileset[8], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
            cpct_drawTileAligned2x4_f(pre_tileset[18], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
            cpct_drawTileAligned2x4_f(pre_tileset[29], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
            cpct_drawTileAligned2x4_f(pre_tileset[39], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y+4)); 
        break;
    }
}

void dibujarGanador(u8 ganador){
    //0: Jimmy; 1: Obdulia
    u16 timer;
    u8 timer2;
    estado = 5;
    llenarVmem(5,74,40,160,24);
    
    switch(ganador){
        case 0: 
            cpct_drawStringM0("POINT TO:", cpct_getScreenPtr(CPCT_VMEM_START, 24, 75), 15, 0);
            cpct_drawStringM0("Jimmy", cpct_getScreenPtr(CPCT_VMEM_START, 30, 108), 11, 0);
            dibujarCaritaPersonaje(0, 14, 108);
            dibujarCaritaPersonaje(0, 63, 108);
            break;
        case 1:
            cpct_drawStringM0("POINT TO:", cpct_getScreenPtr(CPCT_VMEM_START, 24, 75), 15, 0);
            cpct_drawStringM0("Obdulia", cpct_getScreenPtr(CPCT_VMEM_START, 27, 108), 10, 0);
            dibujarCaritaPersonaje(1, 14, 108);
            dibujarCaritaPersonaje(1, 63, 108);
            break;
    }

  
    timer = 0;  
    timer2 = 0;
    while(timer2<2){
        while(timer<30000){
            timer++;
        }
        timer2++;
        timer = 0;
    }
    
}


void dibujarAyuda(){
    u16 timer; 
    u8 timer2; 
    
    //llenarVmem(0,80,0,200,24);
    cpct_drawStringM0("1 VS 1", cpct_getScreenPtr(CPCT_VMEM_START, 26, 4), 11, 0);
    cpct_drawStringM0("TWO WAYS TO WIN:", cpct_getScreenPtr(CPCT_VMEM_START, 9, 20), 15, 0);
    cpct_drawStringM0("GET THE KEY OF", cpct_getScreenPtr(CPCT_VMEM_START, 12, 40), 6, 0);
    cpct_drawStringM0("YOUR DOOR THEN", cpct_getScreenPtr(CPCT_VMEM_START, 12, 50), 6, 0);
    cpct_drawStringM0("ESCAPE THROUGH IT", cpct_getScreenPtr(CPCT_VMEM_START, 12, 60), 6, 0);
    
    cpct_drawStringM0("KILL YOUR ENEMY", cpct_getScreenPtr(CPCT_VMEM_START, 12, 80), 6, 0);
    cpct_drawStringM0("TO SCORE A POINT", cpct_getScreenPtr(CPCT_VMEM_START, 12, 90), 6, 0);
    
    cpct_drawStringM0("DON'T FORGET:", cpct_getScreenPtr(CPCT_VMEM_START, 9, 110), 15, 0);
    
    cpct_drawStringM0("YOU CAN RELOAD", cpct_getScreenPtr(CPCT_VMEM_START, 12, 130), 6, 0);
    cpct_drawStringM0("YOUR WEAPON BY", cpct_getScreenPtr(CPCT_VMEM_START, 12, 140), 6, 0);
    cpct_drawStringM0("WALKING CLOSE TO", cpct_getScreenPtr(CPCT_VMEM_START, 12, 150), 6, 0);
    cpct_drawStringM0("YOUR AMMO BOX", cpct_getScreenPtr(CPCT_VMEM_START, 12, 160), 6, 0);
    
    cpct_drawStringM0("PRESS ANY KEY", cpct_getScreenPtr(CPCT_VMEM_START, 14, 180), 10, 0);
    cpct_drawStringM0("TO START!", cpct_getScreenPtr(CPCT_VMEM_START, 22, 190), 10, 0);
    
    cpct_drawTileAligned2x4_f(pre_tileset[16], cpct_getScreenPtr(CPCT_VMEM_START, 0, 40));
    cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, 2, 40));
    cpct_drawTileAligned2x4_f(pre_tileset[25], cpct_getScreenPtr(CPCT_VMEM_START, 4, 40));
    
    cpct_drawTileAligned2x4_f(pre_tileset[32], cpct_getScreenPtr(CPCT_VMEM_START, 0, 50));
    cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, 2, 50));
    cpct_drawTileAligned2x4_f(pre_tileset[27], cpct_getScreenPtr(CPCT_VMEM_START, 4, 50));
    
    dibujarCaritaPersonaje(0, 0, 80);
    dibujarCaritaPersonaje(1, 4, 80);
    
    cpct_drawTileAligned2x4_f(pre_tileset[30], cpct_getScreenPtr(CPCT_VMEM_START, 0, 132));
    cpct_drawTileAligned2x4_f(pre_tileset[31], cpct_getScreenPtr(CPCT_VMEM_START, 2, 132));
    cpct_drawTileAligned2x4_f(pre_tileset[33], cpct_getScreenPtr(CPCT_VMEM_START, 4, 132));
    cpct_drawTileAligned2x4_f(pre_tileset[35], cpct_getScreenPtr(CPCT_VMEM_START, 0, 136));
    cpct_drawTileAligned2x4_f(pre_tileset[35], cpct_getScreenPtr(CPCT_VMEM_START, 2, 136));
    cpct_drawTileAligned2x4_f(pre_tileset[35], cpct_getScreenPtr(CPCT_VMEM_START, 4, 136));
    cpct_drawTileAligned2x4_f(pre_tileset[20], cpct_getScreenPtr(CPCT_VMEM_START, 0, 140));
    cpct_drawTileAligned2x4_f(pre_tileset[22], cpct_getScreenPtr(CPCT_VMEM_START, 2, 140));
    cpct_drawTileAligned2x4_f(pre_tileset[22], cpct_getScreenPtr(CPCT_VMEM_START, 4, 140));
    
    timer = 0;  
    timer2 = 0;
    while(timer2<2){
        while(timer<30000){
            timer++;
        }
        timer2++;
        timer = 0;
    }
    
}

void dibujarFondoMenu(){
    
    u8 i;
    u8 j;
    u8 t;
    
    t=4; //Controla el patron de stripes
    
    for(j=64;j<200;j=j+4){
        for(i=0;i<80;i=i+2){
            
            if(j<82 || j>186)cpct_drawTileAligned2x4_f(pre_tileset[15], cpct_getScreenPtr(CPCT_VMEM_START, i, j));  
            else if((j>83 && j<185) && (i<8 || i>70))cpct_drawTileAligned2x4_f(pre_tileset[15], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
            if((j==84 || j==184) && (i>=8 && i<=71))cpct_drawTileAligned2x4_f(pre_tileset[t], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
            if((j>84 && j<184) && (i==8 || i==70))cpct_drawTileAligned2x4_f(pre_tileset[t], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
            t++; if(t>6)t=4;
        
        }
    }

}
void dibujarYellowStripes(){
    
    u8 i=0;
    u8 j=0;
    u8 t=4;

    for(j=0;j<200;j=j+4){
        for(i=0;i<80;i=i+2){          
            if(j<68 || j>132)cpct_drawTileAligned2x4_f(pre_tileset[t], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
            else if(j==68 || j==128)cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
            else if(j==72 || j==132)cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
            else cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, i, j));    
            t++;if(t > 6)t = 4;
        }
        t-2; if(t > 6)t = 4;
    }
}

void dibujarGetPsyched(){
    u16 timer; 
    u8 timer2; 
    u8 str[4];   // string to write the value on
    
    dibujarYellowStripes();
    cpct_drawStringM0("Round", cpct_getScreenPtr(CPCT_VMEM_START, 23, 85), 15, 1);
    cpct_drawStringM0("Get Psyched!", cpct_getScreenPtr(CPCT_VMEM_START, 16, 110), 10, 1);
    
    sprintf(str, "%d", ronda+1);
    cpct_drawStringM0(str, cpct_getScreenPtr(CPCT_VMEM_START, 50, 85), 15, 1);
    
    timer = 0;  
    timer2 = 0; 
    while(timer2<3) {//<3
        while(timer<30000){
            timer++;
        }
        timer2++;
        timer = 0;
    }
    
    cpct_clearScreen(0);
}

void dibujarVictoria(u8 personaje){
     //0: jimmy; 1: obdulia
    u16 timer; 
    u8 timer2;    
    cpct_clearScreen(0);
    dibujarYellowStripes();
    switch(personaje){
    
        
            
        case 0:
            cpct_drawStringM0("   Jimmy wins!   ", cpct_getScreenPtr(CPCT_VMEM_START, 6, 40), 15, 0);
            cpct_drawStringM0("FEAR NOT OBDULIA", cpct_getScreenPtr(CPCT_VMEM_START, 9, 80), 10, 1);
            cpct_drawStringM0("IT WAS ONLY A", cpct_getScreenPtr(CPCT_VMEM_START, 14, 99), 10, 1);
            cpct_drawStringM0("HORRIBLE NIGHTMARE", cpct_getScreenPtr(CPCT_VMEM_START, 4, 118), 10, 1);
            break;
            
        case 1:
            cpct_drawStringM0("   Obdulia wins!   ", cpct_getScreenPtr(CPCT_VMEM_START, 2, 40), 15, 0);
            cpct_drawStringM0("FEAR NOT JIMMY", cpct_getScreenPtr(CPCT_VMEM_START, 10, 80), 11, 1);
            cpct_drawStringM0("IT WAS ONLY A", cpct_getScreenPtr(CPCT_VMEM_START, 14, 99), 11, 1);
            cpct_drawStringM0("HORRIBLE NIGHTMARE", cpct_getScreenPtr(CPCT_VMEM_START, 4, 118), 11, 1);
        break;
    }
    
    timer = 0;  
    timer2 = 0;
    while(timer2<20){
        while(timer<30000){
            timer++;
        }
        timer2++;
        timer = 0;
    }
    
    cpct_clearScreen(0);
}

void dibujarTwitter(u8 x, u8 y){ 

    cpct_drawTileAligned2x4_f(pre_tileset[48], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
    cpct_drawTileAligned2x4_f(pre_tileset[49], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
    cpct_drawTileAligned2x4_f(pre_tileset[50], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
    cpct_drawTileAligned2x4_f(pre_tileset[51], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y+4));
}

void dibujarCreditos(){
    
    //llenarVmem(10,68,92,176,24);
    cpct_clearScreen(0);
    
    cpct_drawStringM0("SubXplosion TEAM", cpct_getScreenPtr(CPCT_VMEM_START, 8, 0), 14, 0);
    dibujarTwitter(12,12);
    cpct_drawStringM0("@SubXplosion", cpct_getScreenPtr(CPCT_VMEM_START, 18, 12), 15, 0);
    
    dibujarCaritaPersonaje(0,8, 40);
    cpct_drawStringM0("Carlos", cpct_getScreenPtr(CPCT_VMEM_START, 15, 40), 6, 0);
    cpct_drawStringM0("Aniorte Llanes", cpct_getScreenPtr(CPCT_VMEM_START, 15, 50), 6, 0);
    
    dibujarCaritaPersonaje(0,8, 80);
    cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 31, 77), 12, 0);
    cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 31, 87), 12, 0);
    cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 59, 87), 12, 0);
    cpct_drawStringM0("Adrian", cpct_getScreenPtr(CPCT_VMEM_START, 15, 80), 12, 0);
    cpct_drawStringM0("Garcia Garcia", cpct_getScreenPtr(CPCT_VMEM_START, 15, 90), 12, 0);
    
    dibujarCaritaPersonaje(0,8, 120);
    cpct_drawStringM0("Andreu", cpct_getScreenPtr(CPCT_VMEM_START, 15, 120), 9, 0);
    cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 27, 126), 9, 0);
    cpct_drawStringM0("~", cpct_getScreenPtr(CPCT_VMEM_START, 31, 128), 9, 0);
    cpct_drawStringM0("Ordonez Arboleda", cpct_getScreenPtr(CPCT_VMEM_START, 15, 130), 9, 0);
        
    cpct_drawStringM0("Subxplosionstudio", cpct_getScreenPtr(CPCT_VMEM_START, 10, 170), 15, 0);
    cpct_drawStringM0("@gmail.com", cpct_getScreenPtr(CPCT_VMEM_START, 22, 180), 15, 0);
    

    
}




void dibujarConfiguracionControles(u8 modo){
    //Modo: 0: primera vez; 1: siguientes veces
    
    if(modo == 0){
    
        llenarVmem(10,68,92,176,24);
        cpct_drawStringM0("CONTROL", cpct_getScreenPtr(CPCT_VMEM_START, 26, 95), 15, 0);

        dibujarCaritaPersonaje(0, 14,120);
        dibujarCaritaPersonaje(1, 14,152);
    
    }
    
    
    llenarVmem(20,68,120,128,24);
    llenarVmem(20,68,152,160,24);
    
    if(seleccionControles == 0){
        
        switch(prota.controles){ 
            case 0: cpct_drawStringM0("< WASD >", cpct_getScreenPtr(CPCT_VMEM_START, 28, 120), 15, 0);break;
            case 1: cpct_drawStringM0("< Keypad >", cpct_getScreenPtr(CPCT_VMEM_START, 24, 120), 15, 0);break;
            case 2: cpct_drawStringM0("< Joystick >", cpct_getScreenPtr(CPCT_VMEM_START, 20, 120), 15, 0);break; 
        }
        switch(protaDos.controles){    
            case 0: cpct_drawStringM0("WASD", cpct_getScreenPtr(CPCT_VMEM_START, 36, 152), 15, 0);break;
            case 1: cpct_drawStringM0("Keypad", cpct_getScreenPtr(CPCT_VMEM_START, 32, 152), 15, 0);break;
            case 2: cpct_drawStringM0("Joystick", cpct_getScreenPtr(CPCT_VMEM_START, 28, 152), 15, 0);break;
        }   
    }
    else{

        switch(prota.controles){ 
            case 0: cpct_drawStringM0("WASD", cpct_getScreenPtr(CPCT_VMEM_START, 36, 120), 15, 0);break;
            case 1: cpct_drawStringM0("Keypad", cpct_getScreenPtr(CPCT_VMEM_START, 32, 120), 15, 0);break;
            case 2: cpct_drawStringM0("Joystick", cpct_getScreenPtr(CPCT_VMEM_START, 28, 120), 15, 0);break;
        }
        switch(protaDos.controles){    
            case 0: cpct_drawStringM0("< WASD >", cpct_getScreenPtr(CPCT_VMEM_START, 28, 152), 15, 0);break;
            case 1: cpct_drawStringM0("< Keypad >", cpct_getScreenPtr(CPCT_VMEM_START, 24, 152), 15, 0);break;
            case 2: cpct_drawStringM0("< Joystick >", cpct_getScreenPtr(CPCT_VMEM_START, 20, 152), 15, 0);break;        
        }  
    }

}

void mostrarMenu();

void dibujarPantallaPrincipal(){
    
    cpct_clearScreen(0);
    
    //Dibuja el primer trozo del sprite
    cpct_drawSprite (pre_logo_0, cpctm_screenPtr(CPCT_VMEM_START, 0, 0), PRE_LOGO_0_W, PRE_LOGO_0_H);
          
    //Dibuja el segundo trozo del sprite
    cpct_drawSprite (pre_logo_1, cpctm_screenPtr(CPCT_VMEM_START, PRE_LOGO_0_W, 0), PRE_LOGO_1_W, PRE_LOGO_1_H);
 
    //Imprime los titulos del menu
    dibujarFondoMenu();
    mostrarMenu();
}

void dibujarPortada(){
    
    //Dibuja el primer trozo del sprite
    //cpct_drawSprite (pre_epicpicture_0, cpctm_screenPtr(CPCT_VMEM_START, 0, 0), PRE_EPICPICTURE_0_W, PRE_EPICPICTURE_0_H);
          
    //Dibuja el segundo trozo del sprite
    //cpct_drawSprite (pre_epicpicture_1, cpctm_screenPtr(CPCT_VMEM_START, PRE_EPICPICTURE_0_W, 0), PRE_EPICPICTURE_1_W, PRE_EPICPICTURE_1_H);
    
    //Linea de texto
    cpct_drawStringM0("SubXplosion", cpct_getScreenPtr(CPCT_VMEM_START, 18, 90), 10, 0);
    cpct_drawStringM0("Presents", cpct_getScreenPtr(CPCT_VMEM_START, 25, 120), 8, 0);
    
//    
    
}

void redefinirControles(u8 personaje, u8 modo, u8 disposicion){
    //personaje-> 0: jimmy; 1: obdulia; modo-> 0: keyb; 1: joy; disposicion0-> 0: WASD; 1: Numpad; disposicion1-> 0: Joy0; 1: Joy1;

    switch(personaje){
        
        case 0: 
            switch(modo){
                case 0:
                    switch(disposicion){
                        case 0: prota.controles = 0;break;
                        case 1: prota.controles = 1; break; 
                    }
                    break;
                    
                case 1: prota.controles = 2; break;
                case 2: prota.controles = 3; break;
            } 
            break;
            
        case 1: 
            switch(modo){
                case 0:
                    switch(disposicion){
                        case 0: protaDos.controles = 0;break;
                        case 1: protaDos.controles = 1; break; 
                    }
                    break;
                    
                case 1: protaDos.controles = 2; break;
                case 2: protaDos.controles = 3; break;
            } 
            break;
    }
}

void reset(){

    
    musica = 0;
    cpct_akp_stop();
    cpct_akp_musicInit(pre_music_presentation); 
//    musica = 1;
    ronda=0;
    prota.marcador=0;
    protaDos.marcador=0;
    estado = 3;
    cpct_clearScreen(0);
    dibujarPortada();
    
}

void inicializaObdulia();
void inicializaJimmy();

void inicializarPartida();

void reaparecer(){
//	borrarProta();
//	borrarProtaDos();
//	inicializaObdulia();
//	inicializaJimmy();
//	dibujaBloques();

        
    	//Aqui tenemos que poner un estado que sea Jugador 2(Obdulia) ha ganado y entonces vuelve al inicio del juego. De momento sale directamente el inicio
    	if(prota.marcador != 5 && protaDos.marcador != 5){
            
            switch(lastWinner){
                
                case 1:
                    dibujarGanador(0);
                    break;
                    
                case 2:
                    dibujarGanador(1);
                    break;
                
            }
            
            if(estado == 1)inicializarPartida();
        }
    	else{
            if(prota.marcador == 5){
                dibujarVictoria(0);
            }
            else if (protaDos.marcador == 5){
                dibujarVictoria(1);
            }
            reset();
        }
            
	 if(estado == 1)reapareciendo=1;
}


void mostrarMenu(){
    
#define JUGAR "Start"
#define MUSICA "Music"
#define CONTROLES "Control"
#define CREDITOS "Credits"
    
    cpct_drawStringM0(JUGAR, cpct_getScreenPtr(CPCT_VMEM_START, 26, 104), 15, 0);
    cpct_drawStringM0(MUSICA, cpct_getScreenPtr(CPCT_VMEM_START, 26, 124), 15, 0);
    cpct_drawStringM0(CONTROLES, cpct_getScreenPtr(CPCT_VMEM_START, 26, 144), 15, 0);
    cpct_drawStringM0(CREDITOS, cpct_getScreenPtr(CPCT_VMEM_START, 26, 164), 15, 0);
    
}

void refrescarMenu(){
    
    llenarVmem(16,20,104,172,24);
    
    switch(seleccion){
        case 0: dibujarCaritaPersonaje(2, 16, 104); break;
        case 1: dibujarCaritaPersonaje(2, 16, 124); break;
        case 2: dibujarCaritaPersonaje(2, 16, 144); break;    
        case 3: dibujarCaritaPersonaje(2, 16, 164); break;    
    }
    //Dibuja el estado de la musica
    if(seleccionMusica == 1)cpct_drawStringM0("Y", cpct_getScreenPtr(CPCT_VMEM_START, 52, 123), 11, 0);
    else cpct_drawStringM0("N", cpct_getScreenPtr(CPCT_VMEM_START, 52, 123), 4, 0);
    
    //sfxPlayer(0);
    
}
void dibujarProta(){
    
    //Dibuja el sprite del personaje ya enmascarado con el fondo del mapa
    u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, prota.x, prota.y);
    cpct_drawSpriteMaskedAlignedTable(prota.frame->sprite, pvmem, PRE_JIMMY_TILESET_00_W, PRE_JIMMY_TILESET_00_H, pre_tablatrans);
    
}
void dibujarProtaDos(){
    
    //Dibuja el sprite del personaje ya enmascarado con el fondo del mapa
    u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, protaDos.x, protaDos.y);
    cpct_drawSpriteMaskedAlignedTable(protaDos.frame->sprite, pvmem, PRE_OBDULIA_TILESET_00_W, PRE_OBDULIA_TILESET_00_H, pre_tablatrans);
    
}

void borrarProta(){
    
    cpct_etm_drawTileBox2x4 (prota.px / 2, (prota.py - (ORIGEN_MAPA_Y)) / 4, 3, 4, pre_terrain_W, ORIGEN_MAPA, mapa);
    
}
void borrarProtaDos(){
    
    cpct_etm_drawTileBox2x4 (protaDos.px / 2, (protaDos.py - (ORIGEN_MAPA_Y)) / 4, 3, 4, pre_terrain_W, ORIGEN_MAPA, mapa);
    
}

void redibujarProta(){
    borrarProta();
    prota.px = prota.x;
    prota.py = prota.y;
    dibujarProta();
}
void redibujarProtaDos(){
    borrarProtaDos();
    protaDos.px = protaDos.x;
    protaDos.py = protaDos.y;
    dibujarProtaDos();
    
}
void borrarBloques(u8 mirar, TProta * proOpuesto, Tdisparo * disp, TProta * pro);
void borrarDisparoHorizontal(Tdisparo * disp);
void borrarDisparoVertical(Tdisparo * disp);


void comprobarLimites(TProta * pro, Tdisparo * disp){
    //Comprueba que el disparo no pase los limites
    if(pro->miraAtacando==M_abajo){
		if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+25 || disp->y < 1) && pro->disparando==SI){
			pro->disparando=NO;
			borrarDisparoHorizontal(disp);
			disp->px=disp->x;
			borrarDisparoVertical(disp);
			disp->y = 0;
			disp->x = 0;
			disp->py = 0;
			disp->px = 0;

		}
    }
    else{
    	if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+26 || disp->y < 1) && pro->disparando==SI){
			pro->disparando=NO;
			borrarDisparoHorizontal(disp);
			disp->px=disp->x;
			borrarDisparoVertical(disp);
			disp->y = 0;
			disp->x = 0;
			disp->py = 0;
			disp->px = 0;

		}
    }
		
}

void compruebaDisparos(){
	if(disparo.x<disparoDos.x+6 && disparo.x>disparoDos.x-6 && disparo.y<disparoDos.y+12 && disparo.y>disparoDos.y-10 && disparo.x!=0){
		borrarDisparoHorizontal(&disparoDos);
		borrarDisparoHorizontal(&disparo);
		if(prota.miraAtacando==M_abajo || prota.miraAtacando==M_arriba){
			borrarDisparoVertical(&disparo);
			borrarDisparoVertical(&disparoDos);
		}


		if(prota.miraAtacando==M_derecha){
			disparo.px=disparo.x+1;
			borrarDisparoHorizontal(&disparo);
			disparo.px=disparo.x-4;
			borrarDisparoHorizontal(&disparo);
			disparo.px=disparo.x-2;
			borrarDisparoHorizontal(&disparo);
			disparo.px=disparo.x-6;
			borrarDisparoHorizontal(&disparo);
			disparo.px=disparo.x;

		}
		else{
			disparo.px=disparo.x;
		}
		if(protaDos.miraAtacando==M_derecha){
			disparoDos.px=disparoDos.x+1;
		}
		else{
			disparoDos.px=disparoDos.x;
		}
		disparo.py=disparo.y;
		disparoDos.py=disparoDos.y;

		borrarDisparoHorizontal(&disparoDos);
		borrarDisparoHorizontal(&disparo);
		disparo.x=0;
		disparoDos.x=0;
		disparo.y=0;
		disparoDos.y=0;
		prota.disparando=NO;
		protaDos.disparando=NO;
	}
}


void comprobarDisparo(u8 numX, u8 numY, u8 mirada, TProta * pro, Tdisparo * disp){
  u8* pvmem;
  comprobarLimites(pro, disp);
  if((mirada==M_derecha || mirada==M_izquierda) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY+4), 0) == 48){
    	pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
		cpct_drawSpriteMaskedAlignedTable(disp->sprite, pvmem, PRE_DISPARO_W, PRE_DISPARO_H, pre_tablatrans);
  }
  else if((mirada==M_arriba || mirada==M_abajo) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX-1, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX+2, numY), 0) == 48){
		pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
		cpct_drawSpriteMaskedAlignedTable(disp->sprite, pvmem, PRE_DISPARO_W, PRE_DISPARO_H, pre_tablatrans);
  }
  //Si no es azul ha tocado algo asi que deja de disparar y borra el bloque (con sus comprobacines en el metodo)
  else{
    pro->disparando=NO;
    if(pro->soy==1){
    	TProta * proOp=&protaDos;
    	borrarBloques(mirada, proOp, disp, pro);
    }
    else if(pro->soy==2){
    	TProta * proOp=&prota;
    	borrarBloques(mirada, proOp, disp, pro);
    }
	//ANTIGUOborrarBloques(mirada pro, disp);
    if(reapareciendo==0 && pro->disparando==SI){

    	borrarDisparoHorizontal(disp);
    }
    else{
    	reapareciendo=0;
    }
    
    disp->y = 0;
    disp->x = 0;
    disp->py = 0;
    disp->px = 0;
    
  }
}

void dispararDerecha(TProta * pro, Tdisparo * disp){

  u8 numX = 0, numY = 0, mirada = M_derecha;
  
  if(disp->x == 0 && disp->y == 0){
    disp->x = pro->x + 6;
    disp->y = pro->y + 7;
    disp->py = disp->y;
    disp->px = disp->x;
    decrecerMunicion(pro->soy-1);
  }
  else{
			disp->px=disp->x-2;
		
		borrarDisparoHorizontal(disp);

			disp->px=disp->x;
		
  }

  disp->px = disp->x-2;
  disp->x++;
  //Comprueba si es azul

  numX = disp->x+1;
  numY = disp->y;

  comprobarDisparo(numX, numY, mirada, pro, disp);
}

void dispararIzquierda(TProta * pro, Tdisparo * disp){
  u8 numX = 0, numY = 0, mirada = M_izquierda;
  if(disp->x == 0 && disp->y == 0){
    disp->x = pro->x-1;
    disp->y = pro->y + 7;
    disp->py = disp->y;
    disp->px = disp->x;
    decrecerMunicion(pro->soy-1);
  }
  else{
    borrarDisparoHorizontal(disp);
  }

  disp->px = disp->x+1;
  disp->x--;
  //Comprueba si es azul
  numX = disp->x -1;
  numY = disp->y;
  comprobarDisparo(numX, numY, mirada, pro, disp);
  
}

void dispararAbajo(TProta * pro, Tdisparo * disp){
  u8 numX = 0, numY = 0, mirada = M_abajo;
  pro->miraAtacando=M_abajo;
  if(disp->x == 0 && disp->y == 0){
    disp->x = pro->x+2;
    disp->y = pro->y+14;
    disp->px = disp->x;
    decrecerMunicion(pro->soy-1);
  }
  else{
    borrarDisparoVertical(disp);
  }

  disp->py = disp->y;
  disp->y++;
  //Comprueba si es azul
  numX = disp->x;
  numY = disp->y+5;
  comprobarDisparo(numX, numY, mirada, pro, disp);
}

void dispararArriba(TProta * pro, Tdisparo * disp){//TENGO LO DE ANDREU DE PEGADO
  u8 numX = 0, numY = 0, mirada = M_arriba;
  if(disp->x == 0 && disp->y == 0){
    disp->x = pro->x+2;
    disp->y = pro->y-4;
    disp->px = disp->x;
    disp->pegado=0;
    decrecerMunicion(pro->soy-1);
  }
  else{
    disp->pegado=1;
    borrarDisparoVertical(disp);
  }

  disp->py = disp->y;
  disp->y--;
  //Comprueba si es azul
  if(disp->pegado==0){
  	numY = disp->y-1;
  }
  else{
  	numY = disp->y;
  }
  numX = disp->x;
  comprobarDisparo(numX, numY, mirada, pro, disp);
}
void atacar(u8 soy){
  TProta * pro=&prota;
  Tdisparo * disp=&disparo;
  switch(soy){
  	case 1:
  			//Ya esta igualado
  		break;
  	case 2:
  			pro=&protaDos;
  			disp=&disparoDos;
  		break;
  }
  
  switch(pro->miraAtacando){
    case M_derecha: 
			    if(pro->x+5 > 11*6+6){
			      pro->disparando = NO;
			    }else{
			    	if(pro->disparando==SI)
			        	dispararDerecha(pro, disp);
			      }
          break;
    case M_izquierda:
			    if(pro->x < 1){
			      pro->disparando = NO;
			    }else{
			    	if(pro->x<6 && pro->y<35){
			    		pro->disparando=NO;
			    		//NADA
			    	}
			    	else if(pro->disparando==SI){
			          dispararIzquierda(pro, disp);
			    	}
			        
			        else{
			        	pro->disparando=NO;
			        }
			    }
          break;
    case M_abajo:
			    if(pro->y > 15*11+15){
			      pro->disparando = NO;
			    }
			    if(pro->disparando==SI)
			        dispararAbajo(pro, disp);
          break;
    case M_arriba:
    			if(pro->disparando==SI)
          			dispararArriba(pro, disp);
          break;
  }
}

void borrarDisparoHorizontal(Tdisparo * disp){

    cpct_etm_drawTileBox2x4 ((disp->px) / 2, (disp->py) / 4, 1, 2, pre_terrain_W, ORIGEN_MAPA, mapa);  
 
}

void borrarDisparoVertical(Tdisparo * disp){
  	cpct_etm_drawTileBox2x4 ((disp->px-1) / 2, (disp->py) / 4, 2, 2, pre_terrain_W, ORIGEN_MAPA, mapa);
}

void comprobacionesBloques(u8 c, u8 f){
    if((f == 1 && c== 2) || (matriz[f][c] == 2)  || (f == 9 && c== 10) || (f == 0 && c== 0) || (f == 10 && c== 12) || (f == 9 && c== 12) || (f == 1 && c== 0)){
      //no hagas nada
    }
    else{//borra

     cpct_etm_drawTileBox2x4 (((c*6)/2), (24+(f*16))/4, 3.5, 4, pre_terrain_W, ORIGEN_MAPA, mapa);  
   }
}

void comprobacionesBloquesH(u8 c, u8 f, u8 f2, u8 mirar, Tdisparo * disp){
    if((f == 1 && c== 0) || (f == 9 && c== 12) || (f == 1 && c== 2)  || (f == 9 && c== 10)){
      //no hagas nada
    }
    else if((f == 10 && c== 12) || (f == 0 && c== 0)){
    	if(mirar==M_izquierda){
			disp->px=disp->x;
		}
		else if(mirar==M_derecha){
			disp->px=disp->x;
		}
		borrarDisparoHorizontal(disp);

		if(mirar==M_izquierda){
			disp->px=disp->x+1;
		}
		else if(mirar==M_derecha){
			disp->px=disp->x-2;
		}
    }
    else if(matriz[f2][c]==2 || (matriz[f][c] == 2)){
    	//no hagas nada
    }
    else{//borra

	     cpct_etm_drawTileBox2x4 (((c*6)/2), (24+(f*16))/4, 3.5, 4, pre_terrain_W, ORIGEN_MAPA, mapa);
	    if(mirar==M_izquierda){
			disp->px=disp->x;
		}
		else if(mirar==M_derecha){
			disp->px=disp->x;
		}
		borrarDisparoHorizontal(disp);

		if(mirar==M_izquierda){
			disp->px=disp->x+1;
		}
		else if(mirar==M_derecha){
			disp->px=disp->x-2;
		}
    }
     
   
}


void compruebaPersonaje(u8 disx, u8 disy, u8 prox, u8 proy, TProta * pro, Tdisparo * disp){
	if(disx>prox-2 && disx<prox+7 && disy>proy-2 && disy<proy+15){
		sumaMarcador(pro->soy, ++pro->marcador);
                if(pro->identidad == 0)lastWinner = 1;
                if(pro->identidad == 1)lastWinner = 2;
		ronda++;
		borrarDisparoHorizontal(disp);
	    reaparecer();
	}
}

void borrarBloques(u8 mirar, TProta * proOpuesto, Tdisparo * disp, TProta * pro){

			//c tiene +2 en vez del anterior +4 porque se pasaba a la columna de la derecha :S ahora parece que ya va bien
          u8 c = (disp->x+2)/6;
          u8 f = (disp->y-24)/16;
          u8 f2 = (disp->y-24+4)/16;
  switch(mirar){
    case M_derecha: 
    	
        comprobacionesBloquesH(c, f, f2, mirar, disp);
        compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
         break;
    case M_izquierda:
    	
          c = (disp->x-4)/6;
          f = (disp->y-24)/16;
        comprobacionesBloquesH(c, f, f2, mirar, disp);
        compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
          break;

    case M_abajo:
        c = (disp->x)/6;
        f = (disp->y-12)/16;
        comprobacionesBloques(c, f);
        compruebaPersonaje(disp->x, disp->y+4, proOpuesto->x, proOpuesto->y, pro, disp);
        break;

    case M_arriba:
        c = (disp->x)/6;
        f = (disp->y-24)/16;
        comprobacionesBloques(c, f);
        compruebaPersonaje(disp->x, disp->y-4, proOpuesto->x, proOpuesto->y, pro, disp);
      break;
  }
  
}

void comprobarTeclado() {
    
////////////////////////////////////////////SOLO PARA DEBUG
//    
//     u8 str[6];   // string to write the value on
//       sprintf(str, "%d", cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, prota.x+ANCHO_PERSONAJE, prota.y-1), 0));
//       cpct_drawStringM0(str, cpct_getScreenPtr(CPCT_VMEM_START, 20, 0), 15, 0);
////////////////////////////////////////////
       
    cpct_scanKeyboard();
    
    
    
    
    if(estado == 3){
            u16 timer;
            u8 timer2;
//                cpct_clearScreen(0);
//                dibujarPantallaPrincipal();
//                refrescarMenu();
//                estado = 0;
            
            timer = 0;  
            timer2 = 0;
            while(timer2<7){
                while(timer<30000){
                    timer++;
                    if(timer2 == 3){musica = 1;seleccionMusica = 1;}
                }
                timer2++;
                timer = 0;
            }
            
            
            estado = 0;
            cpct_clearScreen(0);
            dibujarPantallaPrincipal();
            mostrarMenu();
            refrescarMenu();
            
        }
    
 
    
    if(cpct_isAnyKeyPressed()){

        
        if(estado == 5 || estado == 6){
            
            estado = 1; //con presionar una tecla vuelve al juego,
            inicializarPartida();
            
        }
        
////////////////////////////////////////////SOLO PARA DEBUG
        
//        if(
//                cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, prota.x+3, prota.y-1), 0) != 48 || //PARTE ARRIBA 
//                cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, prota.x-1, prota.y+8), 0) != 48 || //PARTE IZQUIERDA
//                cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, prota.x+7, prota.y+8), 0) != 48 || //PARTE DERECHA
//                cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, prota.x+3, prota.y+ALTO_PERSONAJE+1), 0) != 48 //PARTE ABAJO       
//          ){
//         
//            cpct_drawStringM0("COLISION", cpct_getScreenPtr(CPCT_VMEM_START, 40, 0), 4, 0);
//           }
//        else 
//            cpct_drawStringM0("NO COLIS", cpct_getScreenPtr(CPCT_VMEM_START, 40, 0), 11, 0);
//       
//        //cpct_set6Bits(cpct_getScreenPtr(CPCT_VMEM_START, prota.x+3, prota.y+ALTO_PERSONAJE+1),0,0);
////////////////////    
        
        
 
        if(estado == 0 && keyCounter > 9){
        
            if(cpct_isKeyPressed(Key_CursorUp) && seleccion >0){
                seleccion--;
                refrescarMenu();
            }
            else if(cpct_isKeyPressed(Key_CursorDown) && seleccion <3){
                seleccion++;
                refrescarMenu();
            }
            else if(cpct_isKeyPressed(Key_Enter) || cpct_isKeyPressed(Key_Return))
                switch(seleccion){
                    
                    case 0: cpct_clearScreen(0); inicializarPartida(); break; // Inicia el estado del juego
                    case 1: if(seleccionMusica){ musica = 0; seleccionMusica = 0; cpct_akp_stop(); cpct_akp_musicInit(pre_music_presentation); refrescarMenu();} else {seleccionMusica = 1; musica = 1; refrescarMenu();}break; //Activa y desactiva la musica
                    case 2: estado = 4; dibujarConfiguracionControles(0);break;
                    case 3: estado = 2; dibujarCreditos(); break;
                }      
        
            
            keyCounter = 0;
        }
        
        
        if(estado == 2){
            if(cpct_isKeyPressed(Key_Esc)){

               estado = 0;
               dibujarPantallaPrincipal();
               mostrarMenu();
               refrescarMenu();
               
            }
        
        }
        
        if(estado == 4){
            
            if(cpct_isKeyPressed(Key_CursorDown) && seleccionControles == 0){
                seleccionControles = 1;
                dibujarConfiguracionControles(1);
            }
            else if(cpct_isKeyPressed(Key_CursorUp) && seleccionControles == 1){
                seleccionControles = 0;
                dibujarConfiguracionControles(1);
            }
                    
            switch(seleccionControles){

                case 0:
                    if(cpct_isKeyPressed(Key_CursorRight) && prota.controles <2  && keyCounter > 9){
                        if(protaDos.controles == prota.controles+1 && (prota.controles + 2) <=2 ){
                            prota.controles = prota.controles+2; 
                            dibujarConfiguracionControles(1);
                        }
                        else if(prota.controles+1!=protaDos.controles){
                            prota.controles++; 
                            dibujarConfiguracionControles(1);
                        }
                        keyCounter = 0;
                        
                    }
                    
                    else if(cpct_isKeyPressed(Key_CursorLeft) && prota.controles >0  && keyCounter > 9){
                        if(protaDos.controles == prota.controles-1 && (prota.controles - 2) >=0 ){
                            prota.controles = prota.controles - 2;
                            dibujarConfiguracionControles(1);
                        }
                        else if(prota.controles-1!=protaDos.controles){
                            prota.controles--; 
                            dibujarConfiguracionControles(1);
                        }
                        keyCounter = 0;
                    }
                break;
                case 1:
                    if(cpct_isKeyPressed(Key_CursorRight) && protaDos.controles <2  && keyCounter > 9){
                        if(prota.controles == protaDos.controles+1 && (protaDos.controles + 2) <=2 ){
                            protaDos.controles = protaDos.controles + 2;
                            dibujarConfiguracionControles(1);
                        }
                        else if(protaDos.controles+1!=prota.controles){
                            protaDos.controles++; 
                            dibujarConfiguracionControles(1);
                        }
                        keyCounter = 0;
                    }
                    
                    else if(cpct_isKeyPressed(Key_CursorLeft) && protaDos.controles >0  && keyCounter > 9){
                        if(prota.controles == protaDos.controles-1 && (protaDos.controles - 2) >=0 ){
                            protaDos.controles = protaDos.controles-2; 
                            dibujarConfiguracionControles(1);            
                        }
                        else if(protaDos.controles-1!=prota.controles){
                            protaDos.controles--; 
                            dibujarConfiguracionControles(1);                 
                        }
                        keyCounter = 0;
                    }
                break;
            }
            
            
            if(cpct_isKeyPressed(Key_Esc)){

               estado = 0;
               llenarVmem(10,68,92,176,24);
               mostrarMenu();
               refrescarMenu();
               
            }
        
        }
    }
 }



void bajando_entrar(u8 mirar, TProta * pro);
void subiendo_entrar(u8 mirar, TProta * pro);
void andando_entrar(u8 mirar, TProta * pro);

void abajo_animar(TProta * pro);
void arriba_animar(TProta * pro);
void andando_animar(u8 mirar, TProta * pro);


u8 compruebaTeclas(const cpct_keyID* k, u8 numk, TProta * pro) {
   u8 i, j=0, uno=0, dos=0, tres=0, cuatro=0, cinco=0;
//   cpct_scanKeyboard_if();
   if (cpct_isAnyKeyPressed()) {
      for(i=1; i <= numk; i++, k++) {
         
          if (cpct_isKeyPressed(*k)){
             //izquierda: 0; arriba: 1; der: 2; abajo: 3;
            if(uno==0){uno=i;}
            else if(dos==0){dos=i;}
            else if(tres==0){tres=i;}
            else if(cuatro==0){cuatro=i;}
            else if(cinco==0){cinco=i;}
            
            j++;
         }
      }
      if(j==0){
        return 0;
      }
      else if(j==1){
        switch(uno){
          case 1: 
            return uno;
          break;
          case 2:
            if(validarColision(2,pro,1)==1)
              return uno;
            else return uno;
          break;
          case 3:
            if(validarColision(0,pro,1)==1)
              return uno;
            else return uno;
          break;
          case 4:
            if(validarColision(3,pro,1)==1)
              return uno;
            else return uno;
          break;
          case 5:
            if(validarColision(1,pro,1)==1)
              return uno;
            else return uno;
          break;
        }
        return 0;
      }
      else if(j>1 && uno==1 && pro->disparando==NO){
        return 1;
      }
      else if(j>1){
        switch(uno){
            case 2: 
                  if(dos==4){
                    if(validarColision(3,pro,0)==1 && validarColision(2,pro,0)==1 && pro->x>3 && pro->y<15*11+15){
                      if(pro->mira==M_abajo){
                        andando_entrar(M_derecha, pro);
                        andando_animar(M_derecha, pro);
                          pro->y+=2;
                        if(validarColision(2, pro,0))
                          pro->x++;
                        if(validarColision(2, pro,0))
                          pro->x++;
                        
                        return uno;
                      }
                      else{
                        bajando_entrar(M_abajo, pro);
                        abajo_animar(pro);
                          pro->x++;
                        if(validarColision(3, pro,0))
                          pro->y+=2;
                        if(validarColision(3, pro,0))
                          pro->y+=2;

                        
                        return dos;
                      }
                      
                    }
                    else if(validarColision(3,pro,0)==0 && validarColision(2,pro,0)==1){
                      return uno;
                    }
                    else if(validarColision(3,pro,0)==1 && validarColision(2,pro,0)==0){
                      return dos;
                    }
                    else if(validarColision(0,pro,0)==1){
                      return uno;
                    }
                    else{
                      return dos;
                    }
                  }
                  else if(dos==5){
                    if(validarColision(1,pro,0)==1 && validarColision(2,pro,0)==1 && pro->y<15*11+15){
                      if(pro->mira==M_arriba){
                        andando_entrar(M_derecha, pro);
                        andando_animar(M_derecha, pro);
                          pro->y-=2;
                        if(validarColision(2, pro,0))
                          pro->x++;
                        if(validarColision(2, pro,0))
                          pro->x++;
                        return uno;
                      }
                      else{
                        subiendo_entrar(M_arriba, pro);
                        arriba_animar(pro);
                          pro->x++;
                        if(validarColision(1, pro,0))
                          pro->y-=2;
                        if(validarColision(1, pro,0))
                          pro->y-=2;
                        
                        return dos;
                      }
                      
                    }
                    else if(validarColision(1,pro,0)==0 && validarColision(2,pro,0)==1){
                      return uno;
                    }
                    else if(validarColision(1,pro,0)==1 && validarColision(2,pro,0)==0){
                      return dos;
                    }
                    else if(validarColision(2,pro,0)==1){
                      return uno;
                    }
                    else{
                      return dos;
                    }
                  }
            break;
            case 3: 
                  if(dos==4){
                    if(validarColision(3,pro,0)==1 && validarColision(0,pro,0)==1 && pro->x>3 && pro->y<15*11+15){
                      if(pro->mira==M_abajo){
                        andando_entrar(M_izquierda, pro);
                        andando_animar(M_izquierda, pro);
                          pro->y+=2;
                        if(validarColision(0, pro,0))
                          pro->x--;
                        if(validarColision(0, pro,0))
                          pro->x--;
                        
                        
                        return uno;
                      }
                      else{
                        bajando_entrar(M_abajo, pro);
                        abajo_animar(pro);
                          pro->x--;
                        if(validarColision(3, pro,0))
                          pro->y+=2;
                        if(validarColision(3, pro,0))
                          pro->y+=2;

                        return dos;
                      }

                    
                      
                    }
                    else if(validarColision(3,pro,0)==0 && validarColision(0,pro,0)==1){
                      return uno;
                    }
                    else if(validarColision(3,pro,0)==1 && validarColision(0,pro,0)==0){
                      return dos;
                    }
                    else if(validarColision(0,pro,0)==1){
                      return uno;
                    }
                    else{
                      return dos;
                    }
                  }
                  else if(dos==5){
                    if(validarColision(1,pro,0)==1 && validarColision(0,pro,0)==1 && pro->x>3){
                      if(pro->mira==M_arriba){
                        andando_entrar(M_izquierda, pro);
                        andando_animar(M_izquierda, pro);
                          pro->y-=2;
                        if(validarColision(0, pro,0))
                          pro->x--;
                        if(validarColision(0, pro,0))
                          pro->x--;
                        
                        return uno;
                      }
                      else{
                        subiendo_entrar(M_arriba, pro);
                        arriba_animar(pro);
                          pro->x--;
                        if(validarColision(1, pro,0))
                          pro->y-=2;
                        if(validarColision(1, pro,0))
                          pro->y-=2;
                        
                        return dos;
                      }
                      
                    }
                    else if(validarColision(1,pro,0)==0 && validarColision(0,pro,0)==1){
                      return uno;
                    }
                    else if(validarColision(1,pro,0)==1 && validarColision(0,pro,0)==0){
                      return dos;
                    }
                    else if(validarColision(0,pro,0)==1){
                      return uno;
                    }
                    else{
                      return dos;
                    }
                  }
            break;
        }

      }
         
         
   }
   return 0;
}

u8 noChocar(){
	if(prota.y<protaDos.y+15 && prota.y>protaDos.y-15 && prota.x>protaDos.x-6 && prota.x<protaDos.x+6){
		return SI;
	}
	return NO;
}










void quieto_entrar(u8 mirar, TProta * pro) {
    switch(mirar) {
      case M_derecha: pro->estado = ST_quieto; break; // Nada que hacer
      case M_izquierda: pro->estado = ST_quieto; break;
      case M_arriba: pro->estado = ST_quietoArri;   break;
      case M_abajo: pro->estado = ST_quietoAbaj;   break;
   }
   pro->mover  = SI;
}/*
void quieto_entrarDos(u8 mirarDos) {
    switch(mirarDos) {
      case M_derecha: protaDos.estado = ST_quieto; break; // Nada que hacer
      case M_izquierda: protaDos.estado = ST_quieto; break;
      case M_arriba: protaDos.estado = ST_quietoArri;   break;
      case M_abajo: protaDos.estado = ST_quietoAbaj;   break;
   }
   protaDos.mover  = SI;
}

*/
void disparoArriba_entrar(TProta * pro){
    pro->nframe = 0;
    pro->estado = ST_atacandoSub;
    pro->mira = M_arriba;
    pro->mover = SI;
}/*
void disparoArriba_entrarDos(){
    protaDos.nframe = 0;
    protaDos.estado = ST_atacandoSub;
    protaDos.mira = M_arriba;
    protaDos.mover = SI;
}*/

void disparoAbajo_entrar(TProta * pro){
    pro->nframe = 0;
    pro->estado = ST_atacandoBaj;
    pro->mira = M_abajo;
    pro->mover = SI;
}/*
void disparoAbajo_entrarDos(){
    protaDos.nframe = 0;
    protaDos.estado = ST_atacandoBaj;
    protaDos.mira = M_abajo;
    protaDos.mover = SI;
}*/

void disparo_entrar(u8 mirar, TProta * pro){
    pro->nframe = 0;
    pro->estado = ST_atacando;
    pro->mira = mirar;
    pro->mover = SI;
}/*
void disparo_entrarDos(u8 mirar){
    protaDos.nframe = 0;
    protaDos.estado = ST_atacando;
    protaDos.mira = mirar;
    protaDos.mover = SI;
}*/

void disparo_animar(u8 mirar, TProta * pro){
  pro->mira = mirar;
  if(++pro->nframe == ATACAR_FRAMES*ANIM_PAUSA)
    pro->nframe = 0;
}/*
void disparo_animarDos(u8 mirar){
  protaDos.mira = mirar;
  if(++protaDos.nframe == ATACAR_FRAMES*ANIM_PAUSA)
    protaDos.nframe = 0;
}*/

u8 queHayPulsado(u8 num){
	u8 k=0;
	if(num==0){
		switch(prota.controles){
	        case 0:{ k = compruebaTeclas(keysWASD, 5, &prota); break;}
	        case 1:{ k = compruebaTeclas(keysNumpad, 5, &prota); break;}
	        case 2:{ k = compruebaTeclas(keysJoy0, 5, &prota); break;}
	    }
	}
	else{
		switch(protaDos.controles){
          case 0: {k = compruebaTeclas(keysWASD, 5, &protaDos); break;}
          case 1: {k = compruebaTeclas(keysNumpad, 5, &protaDos); break;}
          case 2: {k = compruebaTeclas(keysJoy0, 5, &protaDos); break;}
      }
	}
	return k;
}

void atacando(TProta * pro){
    u8 k = queHayPulsado(pro->soy-1);
    
   switch(k) {
      case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
      case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
      			pro->tiempoDisp=1;
                pro->miraAtacando = pro->mira;
                pro->disparando=SI;
                pro->contadorAtaque = 0;
                
              } 
              if(pro->contadorAtaque < 4){
                disparo_animar(pro->mira, pro);
                pro->contadorAtaque++; 
              }else{
                quieto_entrar(pro->mira, pro);
              }
              break;
      case 2: andando_entrar(M_derecha, pro); break;
      case 3: andando_entrar(M_izquierda, pro); break;
      case 4: bajando_entrar(M_izquierda, pro); break;
      case 5: subiendo_entrar(M_arriba, pro); break;
    }
   pro->mover = SI;
}
/*
void atacandoDos(){
    u8 k=queHayPulsado(1);
    

   switch(k) {
      case 0: quieto_entrarDos(protaDos.mira); break; // Nada que hacer
      case 1: if(protaDos.disparando==NO && protaDos.municion>0 && protaDos.tiempoDisp>30){
      			protaDos.tiempoDisp=1;
                protaDos.miraAtacando = protaDos.mira;
                protaDos.disparando=SI;
                protaDos.contadorAtaque = 0;
                
              } 
              if(protaDos.contadorAtaque < 4){
                disparo_animarDos(protaDos.mira);
                protaDos.contadorAtaque++; 
              }else{
                quieto_entrarDos(protaDos.mira);
              }
              break;
      case 2: andando_entrarDos(M_derecha); break;
      case 3: andando_entrarDos(M_izquierda); break;
      case 4: bajando_entrarDos(M_izquierda); break;
      case 5: subiendo_entrarDos(); break;
    }
   protaDos.mover = SI;
}
*/

void moverDerecha(TProta * pro) { 
	TProta * proOpuesto=&protaDos;
	if(pro->soy==2){
		proOpuesto=&prota;
	}

    if(pro->mira==M_derecha){
        if(validarColision(2, pro,1))
    	if(noChocar()==SI && proOpuesto->x>pro->x){
    		//NADA
    	}
        else if(pro->x<LIMITE_DERECHO-2){
                pro->x++;
                pro->columna=(pro->x+2)/6;
                pro->mira  = M_derecha;
            } 
        
    }
}/*
void moverDerechaDos() { 
	TProta * proOpuesto=&protaDos;
	if(pro.soy==2){
		proOpuesto=&prota;
	}

    if(protaDos.mira==M_derecha){
        if(validarColision(2, &protaDos))
    	if(noChocar()==SI && proOpuesto->x<pro->x){
    		//NADA
    	}
        else if(protaDos.x<LIMITE_DERECHO-2){
                protaDos.x++;
                protaDos.columna=(protaDos.x+2)/6;
                protaDos.mira  = M_derecha;
            } 
         
    }
}*/

void moverIzquierda(TProta * pro) {
	TProta * proOpuesto=&protaDos;
	if(pro->soy==2){
		proOpuesto=&prota;
	}

    if(pro->mira==M_izquierda){
        if(validarColision(0, pro,1))
    	if(noChocar()==SI && proOpuesto->x<pro->x){
    		//NADA
    	}
        else if(pro->x>0){
                pro->x--;
                pro->mira  = M_izquierda;
                pro->columna=(pro->x+2)/6;
            }
         
    }     
}/*
void moverIzquierdaDos() {
    if(protaDos.mira==M_izquierda){
        if(validarColision(0, &protaDos))
    	if(noChocar()==SI && protaDos.x>prota.x){
    		//NADA
    	}
        else if(protaDos.x>0){
                protaDos.x--;
                protaDos.mira  = M_izquierda;
                protaDos.columna=(protaDos.x+2)/6;
            }
         
    }     
}*/

void andando_animar(u8 mirar, TProta * pro) {
   pro->mira  = mirar;
   if(++pro->nframe == ANDAR_FRAMES*ANIM_PAUSA)
      pro->nframe = 0;
}/*
void andando_animarDos(u8 mirarDos) {
   protaDos.mira  = mirarDos;
   if(++protaDos.nframe == ANDAR_FRAMES*ANIM_PAUSA)
      protaDos.nframe = 0;
}*/

void andando(TProta * pro) {
   u8 k=queHayPulsado(pro->soy-1);
   switch(k) {
      case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
      case 1:   if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
              disparo_entrar(pro->mira, pro);
            } break;
      case 2: moverDerecha(pro);   andando_animar(M_derecha, pro);   break;
      case 3: moverIzquierda(pro); andando_animar(M_izquierda, pro); break;
      case 4: bajando_entrar(M_izquierda, pro); break;
      case 5: subiendo_entrar(M_arriba, pro); break;
    }
   pro->mover = SI;
}/*
void andandoDos() {
    u8 kDos=queHayPulsado(1);
   switch(kDos) {
      case 0: quieto_entrar(protaDos.mira, &protaDos); break; // Nada que hacer
      case 1: if(protaDos.disparando==NO && protaDos.municion>0 && protaDos.tiempoDisp>30){
              disparo_entrar(protaDos.mira, &protaDos);
            }break;
      case 2: moverDerechaDos();   andando_animarDos(M_derecha);   break;
      case 3: moverIzquierdaDos(); andando_animarDos(M_izquierda); break;
      case 4: bajando_entrarDos(M_izquierda); break;
      case 5: subiendo_entrarDos(); break;
   }
   protaDos.mover = SI;
}*/

void andando_entrar(u8 mirar, TProta * pro){
    pro->nframe = 0;
    pro->estado = ST_andando;
    pro->mira   = mirar;
    pro->mover  = SI;
}/*
void andando_entrarDos(u8 mirarDos){
    protaDos.nframe = 0;
    protaDos.estado = ST_andando;
    protaDos.mira   = mirarDos;
    protaDos.mover  = SI;
}*/

void moverAbajo(TProta * pro){
	TProta * proOpuesto=&protaDos;
	if(pro->soy==2){
		proOpuesto=&prota;
	}

    if(validarColision(3, pro,1))
    	if(noChocar()==SI && proOpuesto->y>pro->y){
    		//NADA
    	}
        else if(pro->y < 184){
            pro->y=pro->y+2;
            pro->fila=(pro->y-22+7)/16;
            pro->mira  = M_abajo;
        }
    
        
}/*
void moverAbajoDos(){
    if(validarColision(3, &protaDos))
    	if(noChocar()==SI && protaDos.y<prota.y){
    		//NADA
    	}
        else if(protaDos.y < 184){
            protaDos.y=protaDos.y+2;
            protaDos.fila=(protaDos.y-22+7)/16;
            protaDos.mira  = M_abajo;
        }
    
        
}*/

void abajo_animar(TProta * pro) {
   pro->mira  = M_abajo;
   if(++pro->nframe == BAJAR_FRAMES*ANIM_PAUSA)
      pro->nframe = 0;
}/*
void abajo_animarDos() {
   protaDos.mira  = M_abajo;
   if(++protaDos.nframe == BAJAR_FRAMES*ANIM_PAUSA)
      protaDos.nframe = 0;
}*/

void bajando(TProta * pro) {
    u8 k = queHayPulsado(pro->soy-1);
   switch(k) {
      case 0: quieto_entrar(M_abajo, pro); break; // Nada que hacer
      case 1:   if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
              disparoAbajo_entrar(pro); 
            }
            break; 
      case 2: andando_entrar(M_derecha, pro);   break;
      case 3: andando_entrar(M_izquierda, pro); break;
      case 4: moverAbajo(pro); abajo_animar(pro); break;
      case 5: subiendo_entrar(M_arriba, pro); break;
   }
   pro->mover = SI;
}/*
void bajandoDos() {
    u8 kDos=queHayPulsado(1);
   switch(kDos) {
      case 0: quieto_entrar(M_abajo, &protaDos); break; // Nada que hacer
      case 1: if(protaDos.disparando==NO && protaDos.municion>0 && protaDos.tiempoDisp>30){
              disparoAbajo_entrar(&protaDos); 
            }break;
      case 2: andando_entrarDos(M_derecha);   break;
      case 3: andando_entrarDos(M_izquierda); break;
      case 4: moverAbajoDos(); abajo_animarDos(); break;
      case 5: subiendo_entrarDos(M_arriba); break;
   }
   protaDos.mover = SI;
}*/

void bajando_entrar(u8 mirar, TProta * pro){
    pro->nframe = 0;
    pro->estado = ST_bajando;
    pro->mira   = mirar;
    pro->mover  = SI;
}/*
void bajando_entrarDos(u8 mirarDos){
    protaDos.nframe = 0;
    protaDos.estado = ST_bajando;
    protaDos.mira   = mirarDos;
    protaDos.mover  = SI;
}*/

void moverArriba(TProta * pro){
	TProta * proOpuesto=&protaDos;
	if(pro->soy==2){
		proOpuesto=&prota;
	}


    if(validarColision(1, pro,1))
    	if(noChocar()==SI && proOpuesto->y<pro->y){
    		//NADA
    	}
        else if(pro->y>ORIGEN_MAPA_Y+22){
            pro->y=pro->y-2;
            pro->fila=(pro->y-22+7)/16;
            pro->mira  = M_arriba;
        }
    
        
}/*
void moverArribaDos(){
   if(validarColision(1, &protaDos))
    	if(noChocar()==SI && protaDos.y>prota.y){
    		//NADA
    	}
        else if(protaDos.y>ORIGEN_MAPA_Y+22){
            protaDos.y=protaDos.y-2;
            protaDos.fila=(protaDos.y-22+7)/16;
            protaDos.mira  = M_arriba;
        }
    
        
}*/

void arriba_animar(TProta * pro) {
   pro->mira  = M_arriba;
   if(++pro->nframe == SUBIR_FRAMES*ANIM_PAUSA)
      pro->nframe = 0;
}/*
void arriba_animarDos() {
   protaDos.mira  = M_arriba;
   if(++protaDos.nframe == SUBIR_FRAMES*ANIM_PAUSA)
      protaDos.nframe = 0;
}*/

void subiendo(TProta * pro) {
   u8 k=queHayPulsado(pro->soy-1);
   switch(k) {
      case 0: quieto_entrar(M_arriba, pro); break; // Nada que hacer
      case 1:   if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
              disparoArriba_entrar(pro); 
            }
            break; 
      case 2: andando_entrar(M_derecha, pro);   break;
      case 3: andando_entrar(M_izquierda, pro); break;
      case 4: bajando_entrar(M_abajo, pro); break;
      case 5: moverArriba(pro); arriba_animar(pro); break;
   }
   pro->mover = SI;
}/*
void subiendoDos() {
    u8 kDos=queHayPulsado(1);
   switch(kDos) {
      case 0: quieto_entrar(M_arriba, &protaDos); break; // Nada que hacer
      case 1: if(protaDos.disparando==NO && protaDos.municion>0 && protaDos.tiempoDisp>30){
	              disparoArriba_entrar(&protaDos); 
	            }
	      		break;
      case 2: andando_entrarDos(M_derecha);   break;
      case 3: andando_entrarDos(M_izquierda); break;
      case 4: bajando_entrarDos(M_abajo); break;
      case 5: moverArribaDos(); arriba_animarDos(); break;
   }
   protaDos.mover = SI;
}*/

void subiendo_entrar(u8 mirar, TProta * pro){
    pro->nframe = 0;
    pro->estado = ST_subiendo;
    pro->mira   = mirar;
    pro->mover  = SI;
}/*
void subiendo_entrarDos(u8 mirarDos){
    protaDos.nframe = 0;
    protaDos.estado = ST_subiendo;
    protaDos.mira   = mirarDos;
    protaDos.mover  = SI;
}*/


void quieto(TProta * pro) {
    u8 k=queHayPulsado(pro->soy-1);
   switch(k) {
      case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
      case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
              	if(pro->mira == M_arriba){
                   disparoArriba_entrar(pro);
                }else if(pro->mira == M_abajo){
                   disparoAbajo_entrar(pro);
                }else{
                   disparo_entrar(pro->mira, pro);
                }
            }
            else{
            	quieto_entrar(pro->mira, pro);
            }
            break;
      case 2: andando_entrar(M_derecha, pro);   break;
      case 3: andando_entrar(M_izquierda, pro); break;
      case 4: bajando_entrar(M_abajo, pro); break;
      case 5: subiendo_entrar(M_arriba, pro); break;  



      //if(prota.mira == M_derecha){disparo.x = prota.x + 6; disparo.y = prota.y + 8; }else if(prota.mira == M_izquierda){disparo.x = prota.x - 3; disparo.y = prota.y + 8;}else if(prota.mira == M_arriba){disparo.x = prota.x+2; disparo.y = prota.y - 7;}else if(prota.mira == M_abajo){disparo.x = prota.x+2; disparo.y = prota.y + 16;}disparar(prota.mira); break;
   }
}/*
void quietoDos() {
    u8 kDos=queHayPulsado(1);
   switch(kDos) {
      case 0: quieto_entrar(protaDos.mira, &protaDos); break; // Nada que hacer
      case 1: if(protaDos.disparando==NO && protaDos.municion>0 && protaDos.tiempoDisp>30){
              if(protaDos.mira == M_arriba){
                   disparoArriba_entrar(&protaDos);
                }else if(protaDos.mira == M_abajo){
                   disparoAbajo_entrar(&protaDos);
                }else{
                   disparo_entrar(protaDos.mira, &protaDos);
                }
            }
            else{
            	quieto_entrar(protaDos.mira, &protaDos);
            }
      		break;
      case 2: andando_entrarDos(M_derecha);   break;
      case 3: andando_entrarDos(M_izquierda); break;
      case 4: bajando_entrarDos(M_abajo); break;
      case 5: subiendo_entrarDos(M_arriba); break;
   }
}*/

void ejecutarEstado(u8 soy) {
	TProta * pro=&prota;
	if(soy==2){
		pro=&protaDos;
	}
   switch(pro->estado) {
      case ST_quieto:      quieto(pro);      break;
      case ST_quietoAbaj:  quieto(pro);      break;
      case ST_quietoArri:  quieto(pro);      break;
      case ST_andando:     andando(pro);     break;
      case ST_atacando:     atacando(pro);     break;
      case ST_atacandoBaj:     atacando(pro);     break;
      case ST_atacandoSub:     atacando(pro);     break;
      case ST_subiendo:    subiendo(pro);    break;
      case ST_bajando:     bajando(pro);     break;
   }

   //Llave de Jimmy
   if(!pro->llavecogida)
       comprobarLlave(pro->soy-1);
   else 
       comprobarPuerta(pro->soy-1);
   
    comprobarRecargaMunicion(pro->soy-1);
    
   
}
   /*
void ejecutarEstadoDos() {
   switch(protaDos.estado) {
      case ST_quieto:      quietoDos();      break;
      case ST_quietoAbaj:  quietoDos();      break;
      case ST_quietoArri:  quietoDos();      break;
      case ST_andando:     andandoDos();     break;
      case ST_atacando:     atacando(&protaDos);     break;
      case ST_atacandoBaj:     atacando(&protaDos);     break;
      case ST_atacandoSub:     atacando(&protaDos);     break;
      case ST_subiendo:    subiendoDos();    break;
      case ST_bajando:     bajandoDos();     break;
   }
   
   //Llave de Obdulia
   if(!protaDos.llavecogida)
       comprobarLlave(1);
   else
       comprobarPuerta(1);
   
    comprobarRecargaMunicion(1);
    
    
}*/

void inicializaJimmy(){
 
	//Prota
	//situar el sprite y dibujado
        prota.identidad = 0;
        prota.x         = prota.px = 6;
        prota.y         = prota.py = 26;
        prota.fila = 0;
        prota.columna = 0;
        prota.abajo = 0;
        prota.derecha = 0;
        prota.arriba = 0;
        prota.izquierda = 0;
        prota.mover     = NO;
        prota.nframe=0;
        prota.estado = ST_quieto;
        prota.mira   = M_abajo;
        prota.frame    = &g_frames[4];
        prota.direccion = 0;
        prota.disparando = NO;
        prota.contadorAtaque = 0;
        prota.llavecogida = NO;
        prota.tiempoDisp=1;
        prota.soy=1;


        
}

void inicializaObdulia(){
 
	//ProtaDos
        //situar el sprite y dibujado
        protaDos.identidad = 1;
        protaDos.x         = protaDos.px = 6*11;
        protaDos.y         = protaDos.py = 40+(16*8);
        protaDos.fila = 0;
        protaDos.columna = 0;
        protaDos.abajo = 0;
        protaDos.derecha = 0;
        protaDos.arriba = 0;
        protaDos.izquierda = 0;
        protaDos.mover     = NO;
        protaDos.nframe=0;
        protaDos.estado = ST_quieto;
        protaDos.mira   = M_abajo;
        protaDos.frame    = &g_framesDos[4];
        protaDos.direccion = 0;
        protaDos.disparando = NO;
        protaDos.contadorAtaque = 0;
        protaDos.llavecogida = NO;
        protaDos.tiempoDisp=1;
        protaDos.soy=2;
        
}



//Inicializacion del juego
void inicializar() {
	
	cpct_disableFirmware();
	cpct_setVideoMode(0);
	cpct_setBorder(HW_BLACK);
	cpct_setPalette(pre_palette, 16);
        
        prota.controles = 0;
        protaDos.controles = 1;
        
        
	cpct_etm_setTileset2x4(pre_tileset);
        mapa = pre_terrain;
        seleccionMusica = 0;
        musica = 0;
        estado = 3; 
        seleccion = 0;
        seleccionControles = 0;
        keyCounter = 0; 
        cpct_akp_musicInit(pre_music_presentation);
        //cpct_akp_SFXInit(pre_fx_instruments);COMENTADO POR FALTA DE ESPACIO
        cpct_setInterruptHandler(intHandler);
        
        //inicializaJimmy();
        //inicializaObdulia();



        disparo.sprite = pre_disparo;
        disparo.x = 0;
        disparo.y = 0;
        disparo.pegado=0;

        disparoDos.sprite = pre_disparo;
        disparoDos.x = 0;
        disparoDos.y = 0;
        disparoDos.pegado=0;

        ronda=0;

        dibujarPortada();
        //dibujarPantallaPrincipal();
        //refrescarMenu();

        //dibujarMapa();
	//dibujarProta();
  
        
	
}


void inicializarPartida(){
    
    
    
    if(ronda == 0 && estado == 0){
        
        if(musica) cpct_akp_stop();
        if(musica){cpct_akp_stop();musica=0;}
        cpct_akp_musicInit(pre_music_battle); 
        if(seleccionMusica)musica = 1;
        estado = 6;
        dibujarAyuda();
        lastWinner = 0;
        
    }
    
    


    if(estado == 1){
        
        dibujarGetPsyched();
         dibujarMapa();
        prota.llavecogida = 0;
        protaDos.llavecogida = 0;
        borrarProta();
        borrarProtaDos();
        inicializaObdulia();
        inicializaJimmy();
        
        if(ronda == 0){

        prota.marcador=0;
        protaDos.marcador=0;
		            
		    sumaMarcador(1, 0);//Para poner el prota a 0
		    sumaMarcador(2, 0);//Para poner el protaDos a 0
            
        }
        else
            dibujarMarcador();
        
      
    }
    if(ronda<10 && estado == 1){
        
        dibujaBloques();
        bloquearPuertas();
        borrarLlave(2);
        borrarLlave(3);
        dibujarLlave(0);
        dibujarLlave(2);
        recargarMunicion(0);
        recargarMunicion(1);

    }
    
    
}

//Juego
void main(void) {


   
   inicializar();
   
   while (1){
    	if(estado!=1){
            tiempo++;
    	}

        
    comprobarTeclado();



    if(prota.disparando==SI && protaDos.disparando==SI){
    	compruebaDisparos();
    }


    if(prota.disparando == SI){
        
      atacar(prota.soy);
      if(prota.disparando==SI && prota.miraAtacando==M_abajo || prota.disparando==SI &&  prota.miraAtacando==M_arriba)
      	atacar(prota.soy);
      prota.tiempoDisp=1;
      
    }
    else{
    	if(prota.tiempoDisp<100)
    		prota.tiempoDisp++;
    }

    if(protaDos.disparando == SI){
        
      atacar(protaDos.soy);
      if(protaDos.disparando==SI && protaDos.miraAtacando==M_abajo || protaDos.disparando==SI &&  protaDos.miraAtacando==M_arriba)
      	atacar(protaDos.soy);
      protaDos.tiempoDisp=1;
      
    }
    else{
    	if(protaDos.tiempoDisp<100)
    		protaDos.tiempoDisp++;
    }



    if(estado == 0 || estado == 2 || estado == 4){
        cpct_waitVSYNC();
        //Contador que controla que las opciones del menu cambien demasiado rapido

        if(keyCounter<10)
            keyCounter++;

    }

    if(estado == 1){
        
        ejecutarEstado(1);
        ejecutarEstado(2);
        
        if (protaDos.mover) {

            seleccionarSpriteProtaDos();
            cpct_waitVSYNC();
            redibujarProtaDos();
            protaDos.mover = NO;
        }
        if (prota.mover) {

            seleccionarSpriteProta();
            cpct_waitVSYNC();
            redibujarProta();
            prota.mover = NO;
      }
        
    }
   }
}
