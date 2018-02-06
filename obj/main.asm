;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (CYGWIN)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _inicializar
	.globl _ejecutarEstado
	.globl _quieto
	.globl _subiendo
	.globl _moverArriba
	.globl _bajando
	.globl _moverAbajo
	.globl _andando
	.globl _moverIzquierda
	.globl _moverDerecha
	.globl _atacando
	.globl _queHayPulsado
	.globl _disparo_animar
	.globl _disparo_entrar
	.globl _disparoAbajo_entrar
	.globl _disparoArriba_entrar
	.globl _quieto_entrar
	.globl _noChocar
	.globl _compruebaTeclas
	.globl _comprobarTeclado
	.globl _compruebaPersonaje
	.globl _comprobacionesBloquesH
	.globl _comprobacionesBloques
	.globl _atacar
	.globl _dispararArriba
	.globl _dispararAbajo
	.globl _dispararIzquierda
	.globl _dispararDerecha
	.globl _comprobarDisparo
	.globl _compruebaDisparos
	.globl _comprobarLimites
	.globl _redibujarProtaDos
	.globl _redibujarProta
	.globl _borrarProtaDos
	.globl _borrarProta
	.globl _dibujarProtaDos
	.globl _dibujarProta
	.globl _refrescarMenu
	.globl _reset
	.globl _redefinirControles
	.globl _dibujarPortada
	.globl _dibujarPantallaPrincipal
	.globl _dibujarConfiguracionControles
	.globl _dibujarCreditos
	.globl _dibujarTwitter
	.globl _dibujarVictoria
	.globl _dibujarGetPsyched
	.globl _dibujarYellowStripes
	.globl _dibujarFondoMenu
	.globl _dibujarAyuda
	.globl _dibujarGanador
	.globl _dibujarCaritaPersonaje
	.globl _llenarVmem
	.globl _dibujarMapa
	.globl _comprobarRecargaMunicion
	.globl _recargarMunicion
	.globl _decrecerMunicion
	.globl _actualizarMunicion
	.globl _validarColision
	.globl _compruebaAzul
	.globl _actualizarMarcadorMunicion
	.globl _comprobarLlave
	.globl _comprobarPuerta
	.globl _sumaMarcador
	.globl _dibujarMarcador
	.globl _abrirPuerta
	.globl _bloquearPuertas
	.globl _borrarLlave
	.globl _dibujarLlave
	.globl _dibujaBloques
	.globl _dibujaGuardaBloque
	.globl _seleccionarSpriteProtaDos
	.globl _seleccionarSpriteProta
	.globl _girarFrameDos
	.globl _girarFrame
	.globl _asignarFrameDos
	.globl _asignarFrame
	.globl _intHandler
	.globl _play
	.globl _sprintf
	.globl _cpct_etm_setTileset2x4
	.globl _cpct_etm_drawTileBox2x4
	.globl _cpct_getRandom_xsp40_u8
	.globl _cpct_akp_stop
	.globl _cpct_akp_musicInit
	.globl _cpct_getScreenPtr
	.globl _cpct_setPALColour
	.globl _cpct_setPalette
	.globl _cpct_waitVSYNC
	.globl _cpct_setVideoMode
	.globl _cpct_drawStringM0
	.globl _cpct_hflipSpriteM0
	.globl _cpct_drawSpriteMaskedAlignedTable
	.globl _cpct_drawSprite
	.globl _cpct_drawTileAligned2x4_f
	.globl _cpct_get6Bits
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _cpct_setInterruptHandler
	.globl _cpct_disableFirmware
	.globl _encontrado
	.globl _tiempo
	.globl _i
	.globl _reapareciendo
	.globl _ronda
	.globl _keyCounter
	.globl _musica
	.globl _seleccionMusica
	.globl _seleccionControles
	.globl _seleccion
	.globl _estado
	.globl _pos
	.globl _lastWinner
	.globl _cantBlo
	.globl _getpsyched
	.globl _mapa
	.globl _menu_bg
	.globl _EEstados
	.globl _EEventos
	.globl _EMirar
	.globl _disparoDos
	.globl _disparo
	.globl _protaDos
	.globl _prota
	.globl _totalBloq
	.globl _anim_bajarDos
	.globl _anim_atacarBajDos
	.globl _anim_subirDos
	.globl _anim_atacarDos
	.globl _anim_andarDos
	.globl _anim_bajar
	.globl _anim_atacarBaj
	.globl _anim_subir
	.globl _anim_atacar
	.globl _anim_andar
	.globl _g_framesDos
	.globl _g_frames
	.globl _matriz
	.globl _reaparecer
	.globl _mostrarMenu
	.globl _borrarDisparoHorizontal
	.globl _borrarDisparoVertical
	.globl _borrarBloques
	.globl _andando_animar
	.globl _andando_entrar
	.globl _abajo_animar
	.globl _bajando_entrar
	.globl _arriba_animar
	.globl _subiendo_entrar
	.globl _inicializaJimmy
	.globl _inicializaObdulia
	.globl _inicializarPartida
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_prota::
	.ds 29
_protaDos::
	.ds 29
_disparo::
	.ds 8
_disparoDos::
	.ds 8
_EMirar::
	.ds 1
_EEventos::
	.ds 1
_EEstados::
	.ds 1
_menu_bg::
	.ds 2
_mapa::
	.ds 2
_getpsyched::
	.ds 2
_cantBlo::
	.ds 1
_lastWinner::
	.ds 1
_pos::
	.ds 1
_estado::
	.ds 1
_seleccion::
	.ds 1
_seleccionControles::
	.ds 1
_seleccionMusica::
	.ds 1
_musica::
	.ds 1
_keyCounter::
	.ds 1
_ronda::
	.ds 1
_reapareciendo::
	.ds 1
_i::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_tiempo::
	.ds 4
_encontrado::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/main.c:240: void intHandler(){
;	---------------------------------
; Function intHandler
; ---------------------------------
_intHandler::
;src/main.c:241: if(++i == 6){   //50Hz (300/6)
	ld	hl, #_i+0
	inc	(hl)
	ld	a,(#_i + 0)
	sub	a, #0x06
	ret	NZ
;src/main.c:242: if(musica){
	ld	a,(#_musica + 0)
	or	a, a
	ret	Z
;src/main.c:243: play(); //LLAMADA A _play:: ENSAMBLADOR
	call	_play
;src/main.c:244: i = 0;
	ld	hl,#_i + 0
	ld	(hl), #0x00
	ret
_matriz:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_keysWASD:
	.dw #0x8005
	.dw #0x2007
	.dw #0x2008
	.dw #0x1007
	.dw #0x0807
_keysNumpad:
	.dw #0x4000
	.dw #0x1000
	.dw #0x1002
	.dw #0x1001
	.dw #0x0801
_keysJoy0:
	.dw #0x1009
	.dw #0x0809
	.dw #0x0409
	.dw #0x0209
	.dw #0x0109
_g_frames:
	.db #0x00	; 0
	.dw _pre_jimmy_tileset_00
	.db #0x00	; 0
	.dw _pre_jimmy_tileset_01
	.db #0x00	; 0
	.dw _pre_jimmy_tileset_02
	.db #0x00	; 0
	.dw _pre_jimmy_tileset_03
	.db #0x02	; 2
	.dw _pre_jimmy_tileset_04
	.db #0x02	; 2
	.dw _pre_jimmy_tileset_05
	.db #0x02	; 2
	.dw _pre_jimmy_tileset_06
	.db #0x02	; 2
	.dw _pre_jimmy_tileset_07
	.db #0x03	; 3
	.dw _pre_jimmy_tileset_08
	.db #0x03	; 3
	.dw _pre_jimmy_tileset_09
	.db #0x03	; 3
	.dw _pre_jimmy_tileset_10
_g_framesDos:
	.db #0x00	; 0
	.dw _pre_obdulia_tileset_00
	.db #0x00	; 0
	.dw _pre_obdulia_tileset_01
	.db #0x00	; 0
	.dw _pre_obdulia_tileset_02
	.db #0x00	; 0
	.dw _pre_obdulia_tileset_03
	.db #0x02	; 2
	.dw _pre_obdulia_tileset_04
	.db #0x02	; 2
	.dw _pre_obdulia_tileset_05
	.db #0x02	; 2
	.dw _pre_obdulia_tileset_06
	.db #0x02	; 2
	.dw _pre_obdulia_tileset_07
	.db #0x03	; 3
	.dw _pre_obdulia_tileset_08
	.db #0x03	; 3
	.dw _pre_obdulia_tileset_09
	.db #0x03	; 3
	.dw _pre_obdulia_tileset_10
_anim_andar:
	.dw (_g_frames + 0)
	.dw (_g_frames + 0)
	.dw (_g_frames + 3)
	.dw (_g_frames + 3)
	.dw (_g_frames + 6)
	.dw (_g_frames + 6)
_anim_atacar:
	.dw (_g_frames + 6)
	.dw (_g_frames + 9)
	.dw (_g_frames + 6)
	.dw (_g_frames + 9)
_anim_subir:
	.dw (_g_frames + 24)
	.dw (_g_frames + 24)
	.dw (_g_frames + 27)
	.dw (_g_frames + 27)
	.dw (_g_frames + 30)
	.dw (_g_frames + 30)
_anim_atacarBaj:
	.dw (_g_frames + 12)
	.dw (_g_frames + 21)
_anim_bajar:
	.dw (_g_frames + 12)
	.dw (_g_frames + 12)
	.dw (_g_frames + 15)
	.dw (_g_frames + 15)
	.dw (_g_frames + 18)
	.dw (_g_frames + 18)
_anim_andarDos:
	.dw (_g_framesDos + 0)
	.dw (_g_framesDos + 0)
	.dw (_g_framesDos + 3)
	.dw (_g_framesDos + 3)
	.dw (_g_framesDos + 6)
	.dw (_g_framesDos + 6)
_anim_atacarDos:
	.dw (_g_framesDos + 6)
	.dw (_g_framesDos + 9)
	.dw (_g_framesDos + 6)
	.dw (_g_framesDos + 9)
_anim_subirDos:
	.dw (_g_framesDos + 24)
	.dw (_g_framesDos + 24)
	.dw (_g_framesDos + 27)
	.dw (_g_framesDos + 27)
	.dw (_g_framesDos + 30)
	.dw (_g_framesDos + 30)
_anim_atacarBajDos:
	.dw (_g_framesDos + 12)
	.dw (_g_framesDos + 21)
_anim_bajarDos:
	.dw (_g_framesDos + 12)
	.dw (_g_framesDos + 12)
	.dw (_g_framesDos + 15)
	.dw (_g_framesDos + 15)
	.dw (_g_framesDos + 18)
	.dw (_g_framesDos + 18)
_totalBloq:
	.db #0x14	; 20
;src/main.c:251: cpctm_createTransparentMaskTable(pre_tablatrans, 0x0100, M0, 0); 
;	---------------------------------
; Function dummy_cpct_transparentMaskTable0M0_container
; ---------------------------------
_dummy_cpct_transparentMaskTable0M0_container::
	.area _pre_tablatrans_ (ABS) 
	.org 0x0100 
	 _pre_tablatrans::
	.db 0xFF, 0xAA, 0x55, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.area _CSEG (REL, CON) 
;src/main.c:253: void asignarFrame(TFrame **animacion) {
;	---------------------------------
; Function asignarFrame
; ---------------------------------
_asignarFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:254: prota.frame = animacion[prota.nframe / ANIM_PAUSA];
	ld	hl, #_prota + 11
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	((_prota + 0x0009)), bc
	pop	ix
	ret
;src/main.c:256: void asignarFrameDos(TFrame **animacion) {
;	---------------------------------
; Function asignarFrameDos
; ---------------------------------
_asignarFrameDos::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:257: protaDos.frame = animacion[protaDos.nframe / ANIM_PAUSA];
	ld	hl, #_protaDos + 11
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	((_protaDos + 0x0009)), bc
	pop	ix
	ret
;src/main.c:260: void girarFrame() {
;	---------------------------------
; Function girarFrame
; ---------------------------------
_girarFrame::
;src/main.c:261: TFrame* f = prota.frame;
	ld	bc, (#_prota + 9)
;src/main.c:262: if (f->mira != prota.mira) {
	ld	a,(bc)
	ld	e,a
	ld	hl, #(_prota + 0x000c) + 0
	ld	d,(hl)
	ld	a,e
	sub	a, d
	ret	Z
;src/main.c:263: cpct_hflipSpriteM0(PRE_JIMMY_TILESET_00_W, PRE_JIMMY_TILESET_00_H, f->sprite);
	ld	l, c
	ld	h, b
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	ld	hl,#0x0E05
	push	hl
	call	_cpct_hflipSpriteM0
	pop	bc
;src/main.c:264: f->mira = prota.mira;
	ld	a, (#(_prota + 0x000c) + 0)
	ld	(bc),a
	ret
;src/main.c:267: void girarFrameDos() {
;	---------------------------------
; Function girarFrameDos
; ---------------------------------
_girarFrameDos::
;src/main.c:268: TFrame* f = protaDos.frame;
	ld	bc, (#_protaDos + 9)
;src/main.c:269: if (f->mira != protaDos.mira) {
	ld	a,(bc)
	ld	e,a
	ld	hl, #(_protaDos + 0x000c) + 0
	ld	d,(hl)
	ld	a,e
	sub	a, d
	ret	Z
;src/main.c:270: cpct_hflipSpriteM0(PRE_OBDULIA_TILESET_00_W, PRE_OBDULIA_TILESET_00_H, f->sprite);
	ld	l, c
	ld	h, b
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	ld	hl,#0x0E05
	push	hl
	call	_cpct_hflipSpriteM0
	pop	bc
;src/main.c:271: f->mira = protaDos.mira;
	ld	a, (#(_protaDos + 0x000c) + 0)
	ld	(bc),a
	ret
;src/main.c:275: void seleccionarSpriteProta() {
;	---------------------------------
; Function seleccionarSpriteProta
; ---------------------------------
_seleccionarSpriteProta::
;src/main.c:276: switch(prota.estado) {
	ld	hl, #_prota + 8
	ld	e,(hl)
	ld	a,#0x08
	sub	a, e
	jp	C,_girarFrame
;src/main.c:277: case ST_quieto:      { prota.frame = &g_frames[0];  break; }
;src/main.c:276: switch(prota.estado) {
	ld	d,#0x00
	ld	hl,#00117$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00117$:
	jp	00101$
	jp	00103$
	jp	00102$
	jp	00104$
	jp	00105$
	jp	00107$
	jp	00106$
	jp	00108$
	jp	00109$
;src/main.c:277: case ST_quieto:      { prota.frame = &g_frames[0];  break; }
00101$:
	ld	hl,#_g_frames
	ld	((_prota + 0x0009)), hl
	jp	_girarFrame
;src/main.c:278: case ST_quietoArri:      { prota.frame = &g_frames[8];  break; }
00102$:
	ld	hl,#(_g_frames + 0x0018)
	ld	((_prota + 0x0009)), hl
	jp	_girarFrame
;src/main.c:279: case ST_quietoAbaj:      { prota.frame = &g_frames[4];  break; }
00103$:
	ld	hl,#(_g_frames + 0x000c)
	ld	((_prota + 0x0009)), hl
	jp	_girarFrame
;src/main.c:280: case ST_andando:     { asignarFrame(anim_andar);    break; }
00104$:
	ld	hl,#_anim_andar
	push	hl
	call	_asignarFrame
	pop	af
	jp	_girarFrame
;src/main.c:281: case ST_atacando:   { asignarFrame(anim_atacar);   break; }
00105$:
	ld	hl,#_anim_atacar
	push	hl
	call	_asignarFrame
	pop	af
	jp	_girarFrame
;src/main.c:282: case ST_atacandoSub:    { prota.frame = &g_frames[8]; break; }
00106$:
	ld	hl,#(_g_frames + 0x0018)
	ld	((_prota + 0x0009)), hl
	jp	_girarFrame
;src/main.c:283: case ST_atacandoBaj:     {asignarFrame(anim_atacarBaj);break; }
00107$:
	ld	hl,#_anim_atacarBaj
	push	hl
	call	_asignarFrame
	pop	af
	jp	_girarFrame
;src/main.c:284: case ST_subiendo: { asignarFrame(anim_subir);     break; }
00108$:
	ld	hl,#_anim_subir
	push	hl
	call	_asignarFrame
	pop	af
	jp	_girarFrame
;src/main.c:285: case ST_bajando: { asignarFrame(anim_bajar);     break; }
00109$:
	ld	hl,#_anim_bajar
	push	hl
	call	_asignarFrame
	pop	af
;src/main.c:286: }
;src/main.c:287: girarFrame();
	jp  _girarFrame
;src/main.c:289: void seleccionarSpriteProtaDos() {
;	---------------------------------
; Function seleccionarSpriteProtaDos
; ---------------------------------
_seleccionarSpriteProtaDos::
;src/main.c:290: switch(protaDos.estado) {
	ld	hl, #_protaDos + 8
	ld	e,(hl)
	ld	a,#0x08
	sub	a, e
	jp	C,_girarFrameDos
;src/main.c:291: case ST_quieto:      { protaDos.frame = &g_framesDos[0];  break; }
;src/main.c:290: switch(protaDos.estado) {
	ld	d,#0x00
	ld	hl,#00117$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00117$:
	jp	00101$
	jp	00103$
	jp	00102$
	jp	00104$
	jp	00105$
	jp	00107$
	jp	00106$
	jp	00108$
	jp	00109$
;src/main.c:291: case ST_quieto:      { protaDos.frame = &g_framesDos[0];  break; }
00101$:
	ld	hl,#_g_framesDos
	ld	((_protaDos + 0x0009)), hl
	jp	_girarFrameDos
;src/main.c:292: case ST_quietoArri:      { protaDos.frame = &g_framesDos[8];  break; }
00102$:
	ld	hl,#(_g_framesDos + 0x0018)
	ld	((_protaDos + 0x0009)), hl
	jp	_girarFrameDos
;src/main.c:293: case ST_quietoAbaj:      { protaDos.frame = &g_framesDos[4];  break; }
00103$:
	ld	hl,#(_g_framesDos + 0x000c)
	ld	((_protaDos + 0x0009)), hl
	jp	_girarFrameDos
;src/main.c:294: case ST_andando:     { asignarFrameDos(anim_andarDos);    break; }
00104$:
	ld	hl,#_anim_andarDos
	push	hl
	call	_asignarFrameDos
	pop	af
	jp	_girarFrameDos
;src/main.c:295: case ST_atacando:   { asignarFrameDos(anim_atacarDos);   break; }
00105$:
	ld	hl,#_anim_atacarDos
	push	hl
	call	_asignarFrameDos
	pop	af
	jp	_girarFrameDos
;src/main.c:296: case ST_atacandoSub:    { protaDos.frame = &g_framesDos[8]; break; }
00106$:
	ld	hl,#(_g_framesDos + 0x0018)
	ld	((_protaDos + 0x0009)), hl
	jp	_girarFrameDos
;src/main.c:297: case ST_atacandoBaj:     {asignarFrameDos(anim_atacarBajDos);break; }
00107$:
	ld	hl,#_anim_atacarBajDos
	push	hl
	call	_asignarFrameDos
	pop	af
	jp	_girarFrameDos
;src/main.c:298: case ST_subiendo: { asignarFrameDos(anim_subirDos);     break; }
00108$:
	ld	hl,#_anim_subirDos
	push	hl
	call	_asignarFrameDos
	pop	af
	jp	_girarFrameDos
;src/main.c:299: case ST_bajando: { asignarFrameDos(anim_bajarDos);     break; }
00109$:
	ld	hl,#_anim_bajarDos
	push	hl
	call	_asignarFrameDos
	pop	af
;src/main.c:300: }
;src/main.c:301: girarFrameDos();
	jp  _girarFrameDos
;src/main.c:304: u8 dibujaGuardaBloque(u8 numrand, u8 numranddos, u8 numero, u8 total, u8 cantBlo){
;	---------------------------------
; Function dibujaGuardaBloque
; ---------------------------------
_dibujaGuardaBloque::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:307: if(numrand<2 && numranddos>2 || numranddos<2 && numrand>2 || numranddos>7 && numrand<10 || numranddos<7 && numrand>10 || (numrand>1 && numranddos>1 && numrand<11 && numranddos<8)){
	ld	a,4 (ix)
	sub	a, #0x02
	jr	NC,00107$
	ld	a,#0x02
	sub	a, 5 (ix)
	jr	C,00103$
00107$:
	ld	a,5 (ix)
	sub	a, #0x02
	jr	NC,00109$
	ld	a,#0x02
	sub	a, 4 (ix)
	jr	C,00103$
00109$:
	ld	a,#0x07
	sub	a, 5 (ix)
	jr	NC,00111$
	ld	a,4 (ix)
	sub	a, #0x0A
	jr	C,00103$
00111$:
	ld	a,5 (ix)
	sub	a, #0x07
	jr	NC,00115$
	ld	a,#0x0A
	sub	a, 4 (ix)
	jr	C,00103$
00115$:
	ld	a,#0x01
	sub	a, 4 (ix)
	jr	NC,00104$
	ld	a,#0x01
	sub	a, 5 (ix)
	jr	NC,00104$
	ld	a,4 (ix)
	sub	a, #0x0B
	jr	NC,00104$
	ld	a,5 (ix)
	sub	a, #0x08
	jr	NC,00104$
00103$:
;src/main.c:309: if(matriz[numranddos][numrand]!=numero){
	ld	bc,#_matriz+0
	ld	e,5 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl,bc
	ld	c,4 (ix)
	ld	e,c
	ld	d,#0x00
	add	hl,de
	ld	a,6 (ix)
	sub	a,(hl)
	jr	Z,00104$
;src/main.c:311: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, numrand*6, (16*numranddos)+24);
	ld	a,5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	add	a, #0x18
	ld	d,a
	ld	a,c
	add	a, a
	add	a, c
	add	a, a
	ld	b,a
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/main.c:312: cpct_drawSprite(pre_bloque, pvmem, PRE_BLOQUE_W, PRE_BLOQUE_H);
	ld	hl,#0x1006
	push	hl
	push	bc
	ld	hl,#_pre_bloque
	push	hl
	call	_cpct_drawSprite
;src/main.c:314: total--;
	dec	7 (ix)
;src/main.c:315: cantBlo++;
00104$:
;src/main.c:318: return total;
	ld	l,7 (ix)
	pop	ix
	ret
;src/main.c:340: void dibujaBloques(){
;	---------------------------------
; Function dibujaBloques
; ---------------------------------
_dibujaBloques::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:343: cantBlo=0;
	ld	hl,#_cantBlo + 0
	ld	(hl), #0x00
;src/main.c:346: total=totalBloq;
	ld	hl,#_totalBloq + 0
	ld	c, (hl)
;src/main.c:347: while(total>0){
00101$:
	ld	a,c
	or	a, a
	jp	Z,00104$
;src/main.c:348: tiempo+=ronda;
	ld	hl,#_ronda + 0
	ld	b, (hl)
	ld	-4 (ix),b
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
	ld	hl,#_tiempo
	ld	a,(hl)
	add	a, -4 (ix)
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, -3 (ix)
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, -2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, -1 (ix)
	ld	(hl),a
;src/main.c:349: tiempo=tiempo%200;
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x00C8
	push	hl
	ld	hl,(_tiempo + 2)
	push	hl
	ld	hl,(_tiempo)
	push	hl
	call	__modulong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	de, #_tiempo
	ld	hl, #2
	add	hl, sp
	ld	bc, #4
	ldir
	pop	bc
;src/main.c:350: tiempo++;
	ld	hl, #_tiempo+0
	inc	(hl)
	jr	NZ,00114$
	ld	hl, #_tiempo+1
	inc	(hl)
	jr	NZ,00114$
	ld	hl, #_tiempo+2
	inc	(hl)
	jr	NZ,00114$
	ld	hl, #_tiempo+3
	inc	(hl)
00114$:
;src/main.c:351: numrand=(tiempo*cpct_getRandom_xsp40_u8())%13;
	push	bc
	call	_cpct_getRandom_xsp40_u8
	ld	e,l
	pop	bc
	ld	d,#0x00
	ld	hl,#0x0000
	push	bc
	push	hl
	push	de
	ld	hl,(_tiempo + 2)
	push	hl
	ld	hl,(_tiempo)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x000D
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	__modulong
	pop	af
	pop	af
	pop	af
	pop	af
	pop	bc
	ld	b,l
;src/main.c:352: numranddos=(tiempo*cpct_getRandom_xsp40_u8())%11;
	push	bc
	call	_cpct_getRandom_xsp40_u8
	ld	e,l
	pop	bc
	ld	d,#0x00
	ld	hl,#0x0000
	push	bc
	push	hl
	push	de
	ld	hl,(_tiempo + 2)
	push	hl
	ld	hl,(_tiempo)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x000B
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	__modulong
	pop	af
	pop	af
	pop	af
	pop	af
	pop	bc
	ld	d,l
;src/main.c:353: pos=(numranddos*12+numrand);
	ld	a,d
	ld	e,a
	add	a, a
	add	a, e
	add	a, a
	add	a, a
	ld	e,a
	ld	hl,#_pos
	add	a, b
	ld	(hl),a
;src/main.c:355: total=dibujaGuardaBloque(numrand, numranddos, numero, total, cantBlo);
	ld	a,(_cantBlo)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	a,#0x02
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	inc	sp
	call	_dibujaGuardaBloque
	pop	af
	pop	af
	inc	sp
	ld	c,l
	jp	00101$
00104$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:361: void dibujarLlave(u8 color){
;	---------------------------------
; Function dibujarLlave
; ---------------------------------
_dibujarLlave::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:364: switch(color){
	ld	a,#0x03
	sub	a, 4 (ix)
	jp	C,00106$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00112$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00112$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
;src/main.c:366: case 0:
00101$:
;src/main.c:367: cpct_drawTileAligned2x4_f(pre_tileset[16], cpct_getScreenPtr(CPCT_VMEM_START, 12, 40));
	ld	hl,#0x280C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 32)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:368: cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, 14, 40));
	ld	hl,#0x280E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 34)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:369: cpct_drawTileAligned2x4_f(pre_tileset[25], cpct_getScreenPtr(CPCT_VMEM_START, 16, 40));
	ld	hl,#0x2810
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 50)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:370: break;
	jp	00106$
;src/main.c:372: case 1: 
00102$:
;src/main.c:373: cpct_drawTileAligned2x4_f(pre_tileset[32], cpct_getScreenPtr(CPCT_VMEM_START, 6, 4));
	ld	hl,#0x0406
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 64)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:374: cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, 8, 4));
	ld	hl,#0x0408
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 52)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:375: cpct_drawTileAligned2x4_f(pre_tileset[27], cpct_getScreenPtr(CPCT_VMEM_START, 10, 4));
	ld	hl,#0x040A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 54)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:376: break;
	jp	00106$
;src/main.c:378: case 2: 
00103$:
;src/main.c:379: cpct_drawTileAligned2x4_f(pre_tileset[32], cpct_getScreenPtr(CPCT_VMEM_START, 60, 180));
	ld	hl,#0xB43C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 64)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:380: cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, 62, 180));
	ld	hl,#0xB43E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 52)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:381: cpct_drawTileAligned2x4_f(pre_tileset[27], cpct_getScreenPtr(CPCT_VMEM_START, 64, 180));
	ld	hl,#0xB440
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 54)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:382: break;
	jr	00106$
;src/main.c:384: case 3: 
00104$:
;src/main.c:385: cpct_drawTileAligned2x4_f(pre_tileset[16], cpct_getScreenPtr(CPCT_VMEM_START, 66, 4));
	ld	hl,#0x0442
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 32)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:386: cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, 68, 4));
	ld	hl,#0x0444
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 34)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:387: cpct_drawTileAligned2x4_f(pre_tileset[25], cpct_getScreenPtr(CPCT_VMEM_START, 70, 4));
	ld	hl,#0x0446
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 50)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:390: }
00106$:
	pop	ix
	ret
;src/main.c:394: void borrarLlave(u8 color){
;	---------------------------------
; Function borrarLlave
; ---------------------------------
_borrarLlave::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:397: switch(color){
	ld	a,#0x03
	sub	a, 4 (ix)
	jp	C,00106$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00112$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00112$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
;src/main.c:399: case 0: 
00101$:
;src/main.c:400: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 12, 40));
	ld	hl,#0x280C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:401: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 14, 40));
	ld	hl,#0x280E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:402: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 16, 40));
	ld	hl,#0x2810
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:403: break;
	jp	00106$
;src/main.c:405: case 1: 
00102$:
;src/main.c:406: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 60, 180));
	ld	hl,#0xB43C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:407: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 62, 180));
	ld	hl,#0xB43E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:408: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 64, 180));
	ld	hl,#0xB440
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:409: break;
	jp	00106$
;src/main.c:411: case 2: 
00103$:
;src/main.c:412: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 6, 4));
	ld	hl,#0x0406
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:413: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 8, 4));
	ld	hl,#0x0408
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:414: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 10, 4));
	ld	hl,#0x040A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:415: break;
	jr	00106$
;src/main.c:417: case 3: 
00104$:
;src/main.c:418: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 66, 4));
	ld	hl,#0x0442
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:419: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 68, 4));
	ld	hl,#0x0444
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:420: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 70, 4));
	ld	hl,#0x0446
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:423: }
00106$:
	pop	ix
	ret
;src/main.c:427: void bloquearPuertas(){
;	---------------------------------
; Function bloquearPuertas
; ---------------------------------
_bloquearPuertas::
;src/main.c:429: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 2, 24));
	ld	hl,#0x1802
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x000a) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:430: cpct_drawTileAligned2x4_f(pre_tileset[6], cpct_getScreenPtr(CPCT_VMEM_START, 2, 28));
	ld	hl,#0x1C02
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x000c) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:431: cpct_drawTileAligned2x4_f(pre_tileset[4], cpct_getScreenPtr(CPCT_VMEM_START, 2, 32));
	ld	hl,#0x2002
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0008) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:432: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 2, 36));
	ld	hl,#0x2402
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x000a) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:433: cpct_drawTileAligned2x4_f(pre_tileset[6], cpct_getScreenPtr(CPCT_VMEM_START, 2, 40));
	ld	hl,#0x2802
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x000c) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:434: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 0, 40));
	ld	hl,#0x2800
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x000a) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:436: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 76, 180));
	ld	hl,#0xB44C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x000a) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:437: cpct_drawTileAligned2x4_f(pre_tileset[4], cpct_getScreenPtr(CPCT_VMEM_START, 74, 180));
	ld	hl,#0xB44A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0008) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:438: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 74, 184));
	ld	hl,#0xB84A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x000a) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:439: cpct_drawTileAligned2x4_f(pre_tileset[6], cpct_getScreenPtr(CPCT_VMEM_START, 74, 188));
	ld	hl,#0xBC4A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x000c) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:440: cpct_drawTileAligned2x4_f(pre_tileset[4], cpct_getScreenPtr(CPCT_VMEM_START, 74, 192));
	ld	hl,#0xC04A
	push	hl
	ld	l, #0x00
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0008) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:441: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 74, 196));
	ld	hl,#0xC44A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x000a) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
	ret
;src/main.c:446: void abrirPuerta(u8 personaje){
;	---------------------------------
; Function abrirPuerta
; ---------------------------------
_abrirPuerta::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:449: switch(personaje){
	ld	a,4 (ix)
	or	a, a
	jr	Z,00101$
	ld	a,4 (ix)
	dec	a
	jp	Z,00102$
	jp	00104$
;src/main.c:451: case 0:
00101$:
;src/main.c:452: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 24));
	ld	hl,#0x1802
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:453: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 28));
	ld	hl,#0x1C02
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:454: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 32));
	ld	hl,#0x2002
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:455: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 36));
	ld	hl,#0x2402
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:456: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 40));
	ld	hl,#0x2802
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:457: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 0, 40));
	ld	hl,#0x2800
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:458: break;
	jp	00104$
;src/main.c:460: case 1:
00102$:
;src/main.c:461: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 76, 180));
	ld	hl,#0xB44C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:462: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 180));
	ld	hl,#0xB44A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:463: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 184));
	ld	hl,#0xB84A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:464: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 188));
	ld	hl,#0xBC4A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:465: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 192));
	ld	hl,#0xC04A
	push	hl
	ld	l, #0x00
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:466: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 196));
	ld	hl,#0xC44A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:468: }
00104$:
	pop	ix
	ret
;src/main.c:472: void dibujarMarcador(){
;	---------------------------------
; Function dibujarMarcador
; ---------------------------------
_dibujarMarcador::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;src/main.c:476: sprintf(str0, "%d", prota.marcador);
	ld	hl,#_prota+28
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	push	de
	ld	de,#___str_0
	push	de
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	hl,#0x0620
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	bc
	ld	hl,#0x000F
	push	hl
	push	de
	push	bc
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:479: sprintf(str1, "%d", protaDos.marcador);
	ld	hl,#_protaDos+28
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x0004
	add	hl,sp
	push	hl
	push	de
	ld	de,#___str_0
	push	de
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	hl,#0x062B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	bc
	ld	hl,#0x000F
	push	hl
	push	de
	push	bc
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "%d"
	.db 0x00
;src/main.c:486: void sumaMarcador(u8 soy, u8 num){
;	---------------------------------
; Function sumaMarcador
; ---------------------------------
_sumaMarcador::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:492: switch(num){
	ld	a,#0x05
	sub	a, 5 (ix)
	ld	a,#0x00
	rla
	ld	c,a
;src/main.c:489: switch(soy){
	ld	a,4 (ix)
	dec	a
	jr	Z,00101$
	ld	a,4 (ix)
	sub	a, #0x02
	jp	Z,00109$
	jp	00118$
;src/main.c:490: case 1:
00101$:
;src/main.c:492: switch(num){
	ld	a,c
	or	a, a
	jp	NZ,00108$
	ld	e,5 (ix)
	ld	d,#0x00
	ld	hl,#00138$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00138$:
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
;src/main.c:493: case 0:
00102$:
;src/main.c:494: cpct_drawStringM0("0", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
	ld	hl,#0x0620
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_1
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:495: break;
	jp	00108$
;src/main.c:496: case 1:
00103$:
;src/main.c:497: cpct_drawStringM0("1", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
	ld	hl,#0x0620
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_2
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:498: break;
	jp	00108$
;src/main.c:499: case 2:
00104$:
;src/main.c:500: cpct_drawStringM0("2", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
	ld	hl,#0x0620
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_3
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:501: break;
	jr	00108$
;src/main.c:502: case 3:
00105$:
;src/main.c:503: cpct_drawStringM0("3", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
	ld	hl,#0x0620
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_4
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:504: break;
	jr	00108$
;src/main.c:505: case 4:
00106$:
;src/main.c:506: cpct_drawStringM0("4", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
	ld	hl,#0x0620
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_5
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:507: break;
	jr	00108$
;src/main.c:508: case 5:
00107$:
;src/main.c:509: cpct_drawStringM0("5", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
	ld	hl,#0x0620
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_6
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:511: }
00108$:
;src/main.c:514: protaDos.disparando=NO;
	ld	hl,#(_protaDos + 0x0015)
	ld	(hl),#0x00
;src/main.c:515: break;
	jp	00118$
;src/main.c:516: case 2:
00109$:
;src/main.c:518: switch(num){
	ld	a,c
	or	a, a
	jp	NZ,00116$
	ld	e,5 (ix)
	ld	d,#0x00
	ld	hl,#00139$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00139$:
	jp	00110$
	jp	00111$
	jp	00112$
	jp	00113$
	jp	00114$
	jp	00115$
;src/main.c:519: case 0:
00110$:
;src/main.c:520: cpct_drawStringM0("0", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
	ld	hl,#0x062B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_1
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:521: break;
	jp	00116$
;src/main.c:522: case 1:
00111$:
;src/main.c:523: cpct_drawStringM0("1", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
	ld	hl,#0x062B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_2
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:524: break;
	jp	00116$
;src/main.c:525: case 2:
00112$:
;src/main.c:526: cpct_drawStringM0("2", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
	ld	hl,#0x062B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_3
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:527: break;
	jr	00116$
;src/main.c:528: case 3:
00113$:
;src/main.c:529: cpct_drawStringM0("3", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
	ld	hl,#0x062B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_4
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:530: break;
	jr	00116$
;src/main.c:531: case 4:
00114$:
;src/main.c:532: cpct_drawStringM0("4", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
	ld	hl,#0x062B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_5
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:533: break;
	jr	00116$
;src/main.c:534: case 5:
00115$:
;src/main.c:535: cpct_drawStringM0("5", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
	ld	hl,#0x062B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_6
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:537: }
00116$:
;src/main.c:540: prota.disparando=NO;
	ld	hl,#(_prota + 0x0015)
	ld	(hl),#0x00
;src/main.c:543: }
00118$:
	pop	ix
	ret
___str_1:
	.ascii "0"
	.db 0x00
___str_2:
	.ascii "1"
	.db 0x00
___str_3:
	.ascii "2"
	.db 0x00
___str_4:
	.ascii "3"
	.db 0x00
___str_5:
	.ascii "4"
	.db 0x00
___str_6:
	.ascii "5"
	.db 0x00
;src/main.c:550: void comprobarPuerta(u8 personaje){
;	---------------------------------
; Function comprobarPuerta
; ---------------------------------
_comprobarPuerta::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:553: switch(personaje){
	ld	a,4 (ix)
	or	a, a
	jr	Z,00101$
	ld	a,4 (ix)
	dec	a
	jr	Z,00107$
	jp	00114$
;src/main.c:555: case 0:
00101$:
;src/main.c:556: if(prota.x + ANCHO_PERSONAJE / 2 >= 3 && prota.x + ANCHO_PERSONAJE <= 7 && prota.y + ALTO_PERSONAJE / 2 >= 25  && prota.y + ALTO_PERSONAJE / 2 <= 45){
	ld	hl, #_prota + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,e
	sub	a, #0x03
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C,00114$
	ld	hl,#0x0005
	add	hl,bc
	ld	a,#0x07
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00158$
	xor	a, #0x80
00158$:
	jp	M,00114$
	ld	hl, #_prota + 1
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x0007
	add	hl,bc
	ld	a,l
	sub	a, #0x19
	ld	a,h
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C,00114$
	ld	a,#0x2D
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00159$
	xor	a, #0x80
00159$:
	jp	M,00114$
;src/main.c:557: sumaMarcador(1, ++prota.marcador);//1 para jimmy
	ld	hl,#_prota + 28
	ld	b,(hl)
	inc	b
	ld	(hl),b
	push	bc
	inc	sp
	ld	a,#0x01
	push	af
	inc	sp
	call	_sumaMarcador
	pop	af
;src/main.c:558: lastWinner = 1;
	ld	hl,#_lastWinner + 0
	ld	(hl), #0x01
;src/main.c:559: ronda++;
	ld	hl, #_ronda+0
	inc	(hl)
;src/main.c:560: reaparecer();
	call	_reaparecer
;src/main.c:562: break;
	jr	00114$
;src/main.c:564: case 1:
00107$:
;src/main.c:565: if(protaDos.x + ANCHO_PERSONAJE / 2 >= 72 && protaDos.x + ANCHO_PERSONAJE <= 78 && protaDos.y + ALTO_PERSONAJE / 2 >= 175  && protaDos.y + ALTO_PERSONAJE / 2 <= 196){
	ld	hl, #_protaDos + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,e
	sub	a, #0x48
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00114$
	ld	hl,#0x0005
	add	hl,bc
	ld	a,#0x4E
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	jp	M,00114$
	ld	hl, #_protaDos + 1
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x0007
	add	hl,bc
	ld	a,l
	sub	a, #0xAF
	ld	a,h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00114$
	ld	a,#0xC4
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00161$
	xor	a, #0x80
00161$:
	jp	M,00114$
;src/main.c:566: sumaMarcador(2, ++protaDos.marcador);//2 paa obdulia
	ld	hl,#_protaDos + 28
	ld	b,(hl)
	inc	b
	ld	(hl),b
	push	bc
	inc	sp
	ld	a,#0x02
	push	af
	inc	sp
	call	_sumaMarcador
	pop	af
;src/main.c:567: lastWinner = 2;
	ld	hl,#_lastWinner + 0
	ld	(hl), #0x02
;src/main.c:568: ronda++;
	ld	hl, #_ronda+0
	inc	(hl)
;src/main.c:569: reaparecer();
	call	_reaparecer
;src/main.c:572: }
00114$:
	pop	ix
	ret
;src/main.c:576: void comprobarLlave(u8 personaje){
;	---------------------------------
; Function comprobarLlave
; ---------------------------------
_comprobarLlave::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:579: switch(personaje){
	ld	a,4 (ix)
	or	a, a
	jr	Z,00101$
	ld	a,4 (ix)
	dec	a
	jr	Z,00107$
	jp	00114$
;src/main.c:581: case 0:
00101$:
;src/main.c:582: if(prota.x + ANCHO_PERSONAJE / 2 >= 60 && prota.x + ANCHO_PERSONAJE <= 71 && prota.y + ALTO_PERSONAJE / 2 >= 180  && prota.y + ALTO_PERSONAJE / 2 <= 194){
	ld	hl,#_prota+0
	ld	c,(hl)
	ld	b,#0x00
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,e
	sub	a, #0x3C
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C,00114$
	ld	hl,#0x0005
	add	hl,bc
	ld	a,#0x47
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00158$
	xor	a, #0x80
00158$:
	jp	M,00114$
	ld	hl, #_prota + 1
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x0007
	add	hl,bc
	ld	a,l
	sub	a, #0xB4
	ld	a,h
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C,00114$
	ld	a,#0xC2
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00159$
	xor	a, #0x80
00159$:
	jp	M,00114$
;src/main.c:583: prota.llavecogida = 1;
	ld	hl,#(_prota + 0x0019)
	ld	(hl),#0x01
;src/main.c:584: borrarLlave(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_borrarLlave
	inc	sp
;src/main.c:585: dibujarLlave(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarLlave
	inc	sp
;src/main.c:586: abrirPuerta(0);
	xor	a, a
	push	af
	inc	sp
	call	_abrirPuerta
	inc	sp
;src/main.c:589: break;
	jr	00114$
;src/main.c:591: case 1:
00107$:
;src/main.c:592: if(protaDos.x + ANCHO_PERSONAJE / 2 >= 7 && protaDos.x + ANCHO_PERSONAJE <= 18 && protaDos.y + ALTO_PERSONAJE / 2 >= 32  && protaDos.y + ALTO_PERSONAJE / 2 <= 46){
	ld	hl,#_protaDos+0
	ld	c,(hl)
	ld	b,#0x00
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,e
	sub	a, #0x07
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00114$
	ld	hl,#0x0005
	add	hl,bc
	ld	a,#0x12
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	jp	M,00114$
	ld	hl, #_protaDos + 1
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x0007
	add	hl,bc
	ld	a,l
	sub	a, #0x20
	ld	a,h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00114$
	ld	a,#0x2E
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00161$
	xor	a, #0x80
00161$:
	jp	M,00114$
;src/main.c:593: protaDos.llavecogida = 1;
	ld	hl,#(_protaDos + 0x0019)
	ld	(hl),#0x01
;src/main.c:594: borrarLlave(0);
	xor	a, a
	push	af
	inc	sp
	call	_borrarLlave
	inc	sp
;src/main.c:595: dibujarLlave(3);
	ld	a,#0x03
	push	af
	inc	sp
	call	_dibujarLlave
	inc	sp
;src/main.c:596: abrirPuerta(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_abrirPuerta
	inc	sp
;src/main.c:599: }
00114$:
	pop	ix
	ret
;src/main.c:603: void actualizarMarcadorMunicion(u8 personaje, u8 valor){
;	---------------------------------
; Function actualizarMarcadorMunicion
; ---------------------------------
_actualizarMarcadorMunicion::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/main.c:616: switch(personaje){
	ld	a,4 (ix)
	or	a, a
	jr	Z,00122$
	ld	a,4 (ix)
	dec	a
	jp	Z,00125$
	jp	00116$
;src/main.c:619: while(i<10){
00122$:
	ld	-2 (ix),#0x00
00105$:
	ld	a,-2 (ix)
	sub	a, #0x0A
	jp	NC,00116$
;src/main.c:621: cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base));
	ld	a,-2 (ix)
	add	a, a
	ld	c,a
	ld	a,#0x1A
	sub	a, c
	ld	c,a
;src/main.c:620: if(i<valor){
	ld	a,-2 (ix)
	sub	a, 5 (ix)
	jr	NC,00103$
;src/main.c:621: cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base));
	push	bc
	ld	a,#0x0C
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 74)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:622: cpct_drawTileAligned2x4_f(pre_tileset[36], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base-4));
	ld	a,#0x08
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 72)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
	jr	00104$
00103$:
;src/main.c:625: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base));
	push	bc
	ld	a,#0x0C
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:626: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base-4));
	ld	a,#0x08
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
00104$:
;src/main.c:628: i++;
	inc	-2 (ix)
	jp	00105$
;src/main.c:633: while(i<10){
00125$:
	ld	c,#0x00
00112$:
;src/main.c:635: cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base));
	ld	a,c
	cp	a,#0x0A
	jp	NC,00116$
	add	a, a
	add	a, #0x32
	ld	-1 (ix),a
;src/main.c:634: if(i<valor){
	ld	a,c
	sub	a, 5 (ix)
	jr	NC,00110$
;src/main.c:635: cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base));
	push	bc
	ld	a,#0x0C
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 74)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	ld	a,#0x08
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 72)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
	jr	00111$
00110$:
;src/main.c:639: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base));
	push	bc
	ld	a,#0x0C
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	ld	a,#0x08
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#(_pre_tileset + 0x0030) + 0)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
00111$:
;src/main.c:642: i++;
	inc	c
	jp	00112$
;src/main.c:646: }
00116$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:648: u8 compruebaAzul(u8 x1,u8 x2,u8 x3,u8 y1,u8 y2,u8 y3){
;	---------------------------------
; Function compruebaAzul
; ---------------------------------
_compruebaAzul::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:652: if(cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, x1, y1), 0) == COLISIONABLE && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, x2, y2), 0) == COLISIONABLE && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, x3, y3), 0) == COLISIONABLE){
	ld	h,7 (ix)
	ld	l,4 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	bc,#0x0000
	push	bc
	push	hl
	call	_cpct_get6Bits
	ld	a,l
	sub	a, #0x30
	jr	NZ,00102$
	ld	h,8 (ix)
	ld	l,5 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	bc,#0x0000
	push	bc
	push	hl
	call	_cpct_get6Bits
	ld	a,l
	sub	a, #0x30
	jr	NZ,00102$
	ld	h,9 (ix)
	ld	l,6 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	bc,#0x0000
	push	bc
	push	hl
	call	_cpct_get6Bits
	ld	a,l
	sub	a, #0x30
	jr	NZ,00102$
;src/main.c:653: return 1;
	ld	l,#0x01
	jr	00105$
00102$:
;src/main.c:655: return 0;   
	ld	l,#0x00
00105$:
	pop	ix
	ret
;src/main.c:659: u8 validarColision(u8 dir, TProta * pro, u8 tecla){
;	---------------------------------
; Function validarColision
; ---------------------------------
_validarColision::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-13
	add	hl,sp
	ld	sp,hl
;src/main.c:671: switch(dir){
	ld	a,#0x03
	sub	a, 4 (ix)
	jp	C,00137$
;src/main.c:673: x1=pro->x-1;
	ld	c,5 (ix)
	ld	b,6 (ix)
;src/main.c:682: if(tecla==1){
	ld	a,7 (ix)
	dec	a
	jr	NZ,00208$
	ld	a,#0x01
	jr	00209$
00208$:
	xor	a,a
00209$:
	ld	-3 (ix),a
;src/main.c:705: x1=pro->x+3;
	ld	a,(bc)
	ld	-4 (ix),a
;src/main.c:674: y1=pro->y+7;
	ld	hl,#0x0001
	add	hl,bc
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	e,(hl)
;src/main.c:707: x2=pro->x+4;
	ld	a,-4 (ix)
	add	a, #0x04
	ld	-7 (ix),a
;src/main.c:674: y1=pro->y+7;
	ld	a,e
	add	a, #0x07
	ld	-8 (ix),a
;src/main.c:678: y3=pro->y+13;
	ld	a,e
	add	a, #0x0D
	ld	-9 (ix),a
;src/main.c:671: switch(dir){
	push	de
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00210$
	add	hl,de
	add	hl,de
	add	hl,de
	pop	de
	jp	(hl)
00210$:
	jp	00101$
	jp	00110$
	jp	00119$
	jp	00128$
;src/main.c:672: case 0:
00101$:
;src/main.c:673: x1=pro->x-1;
	ld	c,-4 (ix)
	dec	c
	ld	-10 (ix),c
;src/main.c:674: y1=pro->y+7;
	ld	a,-8 (ix)
	ld	-1 (ix),a
;src/main.c:676: y2=pro->y;
;src/main.c:678: y3=pro->y+13;
	ld	d,-9 (ix)
;src/main.c:679: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	push	de
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	a,-10 (ix)
	push	af
	inc	sp
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
	dec	l
	jr	NZ,00103$
;src/main.c:680: return 1; 
	ld	l,#0x01
	jp	00138$
00103$:
;src/main.c:682: if(tecla==1){
	ld	a,-3 (ix)
	or	a, a
	jp	Z,00137$
;src/main.c:683: y1++;y1++;
	ld	l,-1 (ix)
	inc	l
	ld	b,l
	inc	b
;src/main.c:684: y2++;y2++;
	inc	e
	inc	e
;src/main.c:685: y3++;y3++;
	ld	l,d
	inc	l
	ld	d,l
	inc	d
;src/main.c:686: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	push	de
	push	bc
	ld	a,c
	push	af
	inc	sp
	ld	a,-10 (ix)
	push	af
	inc	sp
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
	dec	l
	jr	NZ,00105$
;src/main.c:687: pro->y=pro->y+2;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c,(hl)
	inc	c
	inc	c
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),c
;src/main.c:688: return 1; 
	ld	l,#0x01
	jp	00138$
00105$:
;src/main.c:690: y1--;y1--;
	dec	b
	dec	b
;src/main.c:691: y2--;y2--;
	dec	e
	dec	e
;src/main.c:692: y3--;y3--;
	dec	d
	ld	l,d
	dec	l
;src/main.c:693: y1--;y1--;
	dec	b
	dec	b
;src/main.c:694: y2--;y2--;
	dec	e
	dec	e
;src/main.c:695: y3--;y3--;
	ld	d,l
	dec	d
	dec	d
;src/main.c:696: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	de
	push	bc
	ld	a,c
	push	af
	inc	sp
	ld	a,-10 (ix)
	push	af
	inc	sp
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	dec	l
	jp	NZ,00137$
;src/main.c:697: pro->y=pro->y-2;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c,(hl)
	dec	c
	dec	c
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),c
;src/main.c:698: return 1; 
	ld	l,#0x01
	jp	00138$
;src/main.c:704: case 1:
00110$:
;src/main.c:705: x1=pro->x+3;
	ld	a,-4 (ix)
	add	a, #0x03
	ld	-1 (ix),a
;src/main.c:706: y1=pro->y-1;
	ld	d,e
	dec	d
	ld	-10 (ix),d
;src/main.c:707: x2=pro->x+4;
	ld	a,-7 (ix)
	ld	-2 (ix),a
;src/main.c:709: x3=pro->x;
	ld	e,-4 (ix)
;src/main.c:711: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	push	de
	inc	sp
	push	de
	inc	sp
	ld	d, -10 (ix)
	push	de
	ld	h,-2 (ix)
	ld	l,-1 (ix)
	push	hl
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
	dec	l
	jr	NZ,00112$
;src/main.c:712: return 1; 
	ld	l,#0x01
	jp	00138$
00112$:
;src/main.c:714: if(tecla==1){
	ld	a,-3 (ix)
	or	a, a
	jp	Z,00137$
;src/main.c:715: x1--;
	dec	-1 (ix)
;src/main.c:716: x2--;
	dec	-2 (ix)
;src/main.c:717: x3--;
	dec	e
;src/main.c:718: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	push	de
	inc	sp
	push	de
	inc	sp
	ld	d, -10 (ix)
	push	de
	ld	h,-2 (ix)
	ld	l,-1 (ix)
	push	hl
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
	dec	l
	jr	NZ,00114$
;src/main.c:719: pro->x--;
	ld	a,(bc)
	add	a,#0xFF
	ld	(bc),a
;src/main.c:720: return 1; 
	ld	l,#0x01
	jp	00138$
00114$:
;src/main.c:722: x1++;
	ld	h,-1 (ix)
	inc	h
;src/main.c:723: x2++;
	ld	l,-2 (ix)
	inc	l
;src/main.c:724: x3++;
	inc	e
;src/main.c:725: x1++;
	ld	a,h
	inc	a
	ld	-2 (ix),a
;src/main.c:726: x2++;
	ld	a,l
	inc	a
	ld	-1 (ix),a
;src/main.c:727: x3++;
	inc	e
;src/main.c:728: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	inc	sp
	push	de
	inc	sp
	ld	d, -10 (ix)
	push	de
	ld	h,-1 (ix)
	ld	l,-2 (ix)
	push	hl
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	bc
	dec	l
	jp	NZ,00137$
;src/main.c:729: pro->x++;
	ld	a,(bc)
	inc	a
	ld	(bc),a
;src/main.c:730: return 1; 
	ld	l,#0x01
	jp	00138$
;src/main.c:736: case 2: 
00119$:
;src/main.c:737: x1=pro->x+6;
	ld	a,-4 (ix)
	add	a, #0x06
	ld	c,a
	ld	-11 (ix),c
;src/main.c:738: y1=pro->y+7;
	ld	a,-8 (ix)
	ld	-13 (ix),a
;src/main.c:740: y2=pro->y;
;src/main.c:742: y3=pro->y+13;
	ld	d,-9 (ix)
;src/main.c:743: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	push	de
	ld	a,-13 (ix)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	a,-11 (ix)
	push	af
	inc	sp
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
	dec	l
	jr	NZ,00121$
;src/main.c:744: return 1; 
	ld	l,#0x01
	jp	00138$
00121$:
;src/main.c:746: if(tecla==1){
	ld	a,-3 (ix)
	or	a, a
	jp	Z,00137$
;src/main.c:747: y1--;y1--;
	ld	l,-13 (ix)
	dec	l
	ld	b,l
	dec	b
;src/main.c:748: y2--;y2--;
	dec	e
	dec	e
;src/main.c:749: y3--;y3--;
	ld	l,d
	dec	l
	ld	d,l
	dec	d
;src/main.c:750: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	push	de
	push	bc
	ld	a,c
	push	af
	inc	sp
	ld	a,-11 (ix)
	push	af
	inc	sp
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
	dec	l
	jr	NZ,00123$
;src/main.c:751: pro->y=pro->y-2;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c,(hl)
	dec	c
	dec	c
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),c
;src/main.c:752: return 1; 
	ld	l,#0x01
	jp	00138$
00123$:
;src/main.c:754: y1++;y1++;
	inc	b
	inc	b
;src/main.c:755: y2++;y2++;
	inc	e
	inc	e
;src/main.c:756: y3++;y3++;
	ld	l,d
	inc	l
	inc	l
;src/main.c:757: y1++;y1++;
	ld	a,b
	inc	a
	ld	b,a
	inc	b
;src/main.c:758: y2++;y2++;
	inc	e
	inc	e
;src/main.c:759: y3++;y3++;
	inc	l
	ld	d,l
	inc	d
;src/main.c:760: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	de
	push	bc
	ld	a,c
	push	af
	inc	sp
	ld	a,-11 (ix)
	push	af
	inc	sp
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	dec	l
	jp	NZ,00137$
;src/main.c:761: pro->y=pro->y+2;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c,(hl)
	inc	c
	inc	c
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),c
;src/main.c:762: return 1; 
	ld	l,#0x01
	jp	00138$
;src/main.c:768: case 3: 
00128$:
;src/main.c:769: x1=pro->x+2;
	ld	a,-4 (ix)
	add	a, #0x02
	ld	-2 (ix),a
;src/main.c:770: y1=pro->y+ALTO_PERSONAJE+1;
	ld	a,e
	add	a, #0x0F
	ld	d,a
	ld	-1 (ix),d
;src/main.c:771: x2=pro->x+4;
	ld	e,-7 (ix)
;src/main.c:773: x3=pro->x;
	ld	l,-4 (ix)
	ld	-12 (ix),l
;src/main.c:775: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	push	de
	inc	sp
	push	de
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	d, -12 (ix)
	push	de
	ld	a,-2 (ix)
	push	af
	inc	sp
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
	dec	l
	jr	NZ,00130$
;src/main.c:776: return 1; 
	ld	l,#0x01
	jr	00138$
00130$:
;src/main.c:778: if(tecla==1){
	ld	a,-3 (ix)
	or	a, a
	jr	Z,00137$
;src/main.c:780: x1--;
	dec	-2 (ix)
;src/main.c:781: x2--;
	dec	e
;src/main.c:782: x3--;
	ld	a,-12 (ix)
	add	a,#0xFF
	ld	-10 (ix),a
;src/main.c:783: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	push	de
	inc	sp
	push	de
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	d, -10 (ix)
	push	de
	ld	a,-2 (ix)
	push	af
	inc	sp
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
	dec	l
	jr	NZ,00132$
;src/main.c:784: pro->x--;
	ld	a,(bc)
	add	a,#0xFF
	ld	(bc),a
;src/main.c:785: return 1; 
	ld	l,#0x01
	jr	00138$
00132$:
;src/main.c:787: x1++;
	ld	h,-2 (ix)
	inc	h
;src/main.c:788: x2++;
	inc	e
;src/main.c:789: x3++;
	ld	l,-10 (ix)
	inc	l
;src/main.c:790: x1++;
	ld	a,h
	inc	a
	ld	-2 (ix),a
;src/main.c:791: x2++;
	inc	e
;src/main.c:792: x3++;
	ld	a,l
	inc	a
	ld	-10 (ix),a
;src/main.c:793: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
	push	bc
	push	de
	inc	sp
	push	de
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	d, -10 (ix)
	push	de
	ld	a,-2 (ix)
	push	af
	inc	sp
	call	_compruebaAzul
	pop	af
	pop	af
	pop	af
	pop	bc
	dec	l
	jr	NZ,00137$
;src/main.c:794: pro->x++;
	ld	a,(bc)
	inc	a
	ld	(bc),a
;src/main.c:795: return 1; 
	ld	l,#0x01
	jr	00138$
;src/main.c:799: }
00137$:
;src/main.c:801: return 0;
	ld	l,#0x00
00138$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:805: void actualizarMunicion(u8 personaje, u8 valor){
;	---------------------------------
; Function actualizarMunicion
; ---------------------------------
_actualizarMunicion::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:807: switch(personaje){
	ld	a,4 (ix)
	or	a, a
	jr	Z,00101$
	ld	a,4 (ix)
	dec	a
	jr	Z,00102$
	jr	00104$
;src/main.c:809: case 0: 
00101$:
;src/main.c:810: prota.municion = valor;
	ld	hl,#(_prota + 0x0014)
	ld	a,5 (ix)
	ld	(hl),a
;src/main.c:811: actualizarMarcadorMunicion(0, prota.municion);
	ld	a,5 (ix)
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_actualizarMarcadorMunicion
	pop	af
;src/main.c:812: break;
	jr	00104$
;src/main.c:813: case 1: 
00102$:
;src/main.c:814: protaDos.municion = valor;
	ld	hl,#(_protaDos + 0x0014)
	ld	a,5 (ix)
	ld	(hl),a
;src/main.c:815: actualizarMarcadorMunicion(1, protaDos.municion);
	ld	d, 5 (ix)
	ld	e,#0x01
	push	de
	call	_actualizarMarcadorMunicion
	pop	af
;src/main.c:818: }
00104$:
	pop	ix
	ret
;src/main.c:821: void decrecerMunicion(u8 personaje){
;	---------------------------------
; Function decrecerMunicion
; ---------------------------------
_decrecerMunicion::
;src/main.c:823: switch(personaje){
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	or	a, a
	jr	Z,00101$
	ld	a,0 (iy)
	dec	a
	jr	Z,00104$
	ret
;src/main.c:825: case 0: 
00101$:
;src/main.c:826: if(prota.municion>0){
	ld	bc,#_prota+20
	ld	a,(bc)
	or	a, a
	ret	Z
;src/main.c:827: prota.municion--;
	ld	d,a
	dec	d
	ld	a,d
	ld	(bc),a
;src/main.c:828: actualizarMarcadorMunicion(0, prota.municion);
	push	de
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_actualizarMarcadorMunicion
	pop	af
;src/main.c:830: break;
	ret
;src/main.c:831: case 1: 
00104$:
;src/main.c:832: if(protaDos.municion>0){
	ld	bc,#_protaDos+20
	ld	a,(bc)
	or	a, a
	ret	Z
;src/main.c:833: protaDos.municion--;
	ld	d,a
	dec	d
	ld	a,d
	ld	(bc),a
;src/main.c:834: actualizarMarcadorMunicion(1, protaDos.municion);
	ld	e, #0x01
	push	de
	call	_actualizarMarcadorMunicion
	pop	af
;src/main.c:837: }
	ret
;src/main.c:840: void recargarMunicion(u8 personaje){
;	---------------------------------
; Function recargarMunicion
; ---------------------------------
_recargarMunicion::
;src/main.c:842: switch(personaje){
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	or	a, a
	jr	Z,00101$
	ld	a,0 (iy)
	dec	a
	jr	Z,00102$
	ret
;src/main.c:844: case 0: 
00101$:
;src/main.c:845: prota.municion = 10;
	ld	hl,#_prota+20
	ld	(hl),#0x0A
;src/main.c:846: actualizarMarcadorMunicion(0, prota.municion);
	ld	b,(hl)
	push	bc
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_actualizarMarcadorMunicion
	pop	af
;src/main.c:847: break;
	ret
;src/main.c:848: case 1: 
00102$:
;src/main.c:849: protaDos.municion = 10;
	ld	hl,#_protaDos+20
	ld	(hl),#0x0A
;src/main.c:850: actualizarMarcadorMunicion(1, protaDos.municion);
	ld	b,(hl)
	push	bc
	inc	sp
	ld	a,#0x01
	push	af
	inc	sp
	call	_actualizarMarcadorMunicion
	pop	af
;src/main.c:851: }
	ret
;src/main.c:854: void comprobarRecargaMunicion(u8 personaje){
;	---------------------------------
; Function comprobarRecargaMunicion
; ---------------------------------
_comprobarRecargaMunicion::
;src/main.c:857: switch(personaje){
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	or	a, a
	jr	Z,00101$
	ld	a,0 (iy)
	dec	a
	jr	Z,00107$
	ret
;src/main.c:859: case 0:
00101$:
;src/main.c:860: if(prota.x + ANCHO_PERSONAJE / 2 >= 7 && prota.x + ANCHO_PERSONAJE <= 18 && prota.y + ALTO_PERSONAJE / 2 >= 32  && prota.y + ALTO_PERSONAJE / 2 <= 70)
	ld	hl,#_prota+0
	ld	c,(hl)
	ld	b,#0x00
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,e
	sub	a, #0x07
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	ret	C
	ld	hl,#0x0005
	add	hl,bc
	ld	a,#0x12
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00158$
	xor	a, #0x80
00158$:
	ret	M
	ld	hl,#_prota+1
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x0007
	add	hl,bc
	ld	a,l
	sub	a, #0x20
	ld	a,h
	rla
	ccf
	rra
	sbc	a, #0x80
	ret	C
	ld	a,#0x46
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00159$
	xor	a, #0x80
00159$:
	ret	M
;src/main.c:861: recargarMunicion(0);
	xor	a, a
	push	af
	inc	sp
	call	_recargarMunicion
	inc	sp
;src/main.c:862: break;
	ret
;src/main.c:864: case 1:
00107$:
;src/main.c:865: if(protaDos.x + ANCHO_PERSONAJE / 2 >= 60 && protaDos.x + ANCHO_PERSONAJE <= 71 && protaDos.y + ALTO_PERSONAJE / 2 >= 156  && protaDos.y + ALTO_PERSONAJE / 2 <= 194)
	ld	hl,#_protaDos+0
	ld	c,(hl)
	ld	b,#0x00
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,e
	sub	a, #0x3C
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	ret	C
	ld	hl,#0x0005
	add	hl,bc
	ld	a,#0x47
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	ret	M
	ld	hl,#_protaDos+1
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x0007
	add	hl,bc
	ld	a,l
	sub	a, #0x9C
	ld	a,h
	rla
	ccf
	rra
	sbc	a, #0x80
	ret	C
	ld	a,#0xC2
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00161$
	xor	a, #0x80
00161$:
	ret	M
;src/main.c:866: recargarMunicion(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_recargarMunicion
	inc	sp
;src/main.c:868: }
	ret
;src/main.c:871: void dibujarMapa() {
;	---------------------------------
; Function dibujarMapa
; ---------------------------------
_dibujarMapa::
;src/main.c:873: cpct_etm_drawTilemap2x4(pre_terrain_W, pre_terrain_H, ORIGEN_MAPA, mapa);
	ld	hl,(_mapa)
	push	hl
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2732
	push	hl
	ld	l, #0x00
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpct_etm_drawTileBox2x4
	ret
;src/main.c:880: void llenarVmem(u8 x_start, u8 x_end, u8 y_start, u8 y_end, u8 color){
;	---------------------------------
; Function llenarVmem
; ---------------------------------
_llenarVmem::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:883: for(j=y_start;j<y_end;j=j+4)
	ld	c,6 (ix)
00107$:
	ld	a,c
	sub	a, 7 (ix)
	jr	NC,00109$
;src/main.c:884: for(i=x_start;i<x_end;i=i+2)  
	ld	b,4 (ix)
00104$:
	ld	a,b
	sub	a, 5 (ix)
	jr	NC,00108$
;src/main.c:885: cpct_drawTileAligned2x4_f(pre_tileset[color], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
	push	bc
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	bc
	ld	l,8 (ix)
	ld	h,#0x00
	add	hl, hl
	ld	a,#<(_pre_tileset)
	add	a, l
	ld	l,a
	ld	a,#>(_pre_tileset)
	adc	a, h
	ld	h,a
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:884: for(i=x_start;i<x_end;i=i+2)  
	inc	b
	inc	b
	jr	00104$
00108$:
;src/main.c:883: for(j=y_start;j<y_end;j=j+4)
	inc	c
	inc	c
	inc	c
	inc	c
	jr	00107$
00109$:
	pop	ix
	ret
;src/main.c:890: void dibujarCaritaPersonaje(u8 personaje, u8 x, u8 y){
;	---------------------------------
; Function dibujarCaritaPersonaje
; ---------------------------------
_dibujarCaritaPersonaje::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:892: switch(personaje){
	ld	a,#0x02
	sub	a, 4 (ix)
	jp	C,00105$
;src/main.c:895: cpct_drawTileAligned2x4_f(pre_tileset[18], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
	ld	b,6 (ix)
	inc	b
	inc	b
	inc	b
	inc	b
;src/main.c:896: cpct_drawTileAligned2x4_f(pre_tileset[9], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
	ld	c,5 (ix)
	inc	c
	inc	c
;src/main.c:892: switch(personaje){
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00111$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00111$:
	jp	00101$
	jp	00102$
	jp	00103$
;src/main.c:893: case 0: 
00101$:
;src/main.c:894: cpct_drawTileAligned2x4_f(pre_tileset[8], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
	push	bc
	ld	h,6 (ix)
	ld	l,5 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 16)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:895: cpct_drawTileAligned2x4_f(pre_tileset[18], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
	push	bc
	push	bc
	inc	sp
	ld	a,5 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 36)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:896: cpct_drawTileAligned2x4_f(pre_tileset[9], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
	push	bc
	ld	a,6 (ix)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 18)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 38)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:898: break;
	jp	00105$
;src/main.c:899: case 1:
00102$:
;src/main.c:900: cpct_drawTileAligned2x4_f(pre_tileset[28], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
	push	bc
	ld	h,6 (ix)
	ld	l,5 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 56)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:901: cpct_drawTileAligned2x4_f(pre_tileset[38], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
	push	bc
	push	bc
	inc	sp
	ld	a,5 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 76)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:902: cpct_drawTileAligned2x4_f(pre_tileset[29], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
	push	bc
	ld	a,6 (ix)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 58)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 78)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:904: break;
	jr	00105$
;src/main.c:905: case 2:
00103$:
;src/main.c:906: cpct_drawTileAligned2x4_f(pre_tileset[8], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
	push	bc
	ld	h,6 (ix)
	ld	l,5 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 16)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:907: cpct_drawTileAligned2x4_f(pre_tileset[18], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
	push	bc
	push	bc
	inc	sp
	ld	a,5 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 36)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:908: cpct_drawTileAligned2x4_f(pre_tileset[29], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
	push	bc
	ld	a,6 (ix)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 58)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 78)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:911: }
00105$:
	pop	ix
	ret
;src/main.c:914: void dibujarGanador(u8 ganador){
;	---------------------------------
; Function dibujarGanador
; ---------------------------------
_dibujarGanador::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:918: estado = 5;
	ld	hl,#_estado + 0
	ld	(hl), #0x05
;src/main.c:919: llenarVmem(5,74,40,160,24);
	ld	hl,#0x18A0
	push	hl
	ld	hl,#0x284A
	push	hl
	ld	a,#0x05
	push	af
	inc	sp
	call	_llenarVmem
	pop	af
	pop	af
	inc	sp
;src/main.c:921: switch(ganador){
	ld	a,4 (ix)
	or	a, a
	jr	Z,00101$
	ld	a,4 (ix)
	dec	a
	jr	Z,00102$
	jp	00103$
;src/main.c:922: case 0: 
00101$:
;src/main.c:923: cpct_drawStringM0("POINT TO:", cpct_getScreenPtr(CPCT_VMEM_START, 24, 75), 15, 0);
	ld	hl,#0x4B18
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_7
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:924: cpct_drawStringM0("Jimmy", cpct_getScreenPtr(CPCT_VMEM_START, 30, 108), 11, 0);
	ld	hl,#0x6C1E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000B
	push	hl
	push	bc
	ld	hl,#___str_8
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:925: dibujarCaritaPersonaje(0, 14, 108);
	ld	hl,#0x6C0E
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
;src/main.c:926: dibujarCaritaPersonaje(0, 63, 108);
	inc	sp
	ld	hl,#0x6C3F
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
	pop	af
	inc	sp
;src/main.c:927: break;
	jr	00103$
;src/main.c:928: case 1:
00102$:
;src/main.c:929: cpct_drawStringM0("POINT TO:", cpct_getScreenPtr(CPCT_VMEM_START, 24, 75), 15, 0);
	ld	hl,#0x4B18
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_7
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:930: cpct_drawStringM0("Obdulia", cpct_getScreenPtr(CPCT_VMEM_START, 27, 108), 10, 0);
	ld	hl,#0x6C1B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000A
	push	hl
	push	bc
	ld	hl,#___str_9
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:931: dibujarCaritaPersonaje(1, 14, 108);
	ld	hl,#0x6C0E
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
;src/main.c:932: dibujarCaritaPersonaje(1, 63, 108);
	inc	sp
	ld	hl,#0x6C3F
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
	pop	af
	inc	sp
;src/main.c:934: }
00103$:
;src/main.c:937: timer = 0;  
	ld	de,#0x0000
;src/main.c:939: while(timer2<2){
	ld	c,#0x00
00107$:
	ld	a,c
	sub	a, #0x02
	jr	NC,00110$
;src/main.c:940: while(timer<30000){
00104$:
	ld	a,e
	sub	a, #0x30
	ld	a,d
	sbc	a, #0x75
	jr	NC,00106$
;src/main.c:941: timer++;
	inc	de
	jr	00104$
00106$:
;src/main.c:943: timer2++;
	inc	c
;src/main.c:944: timer = 0;
	ld	de,#0x0000
	jr	00107$
00110$:
	pop	ix
	ret
___str_7:
	.ascii "POINT TO:"
	.db 0x00
___str_8:
	.ascii "Jimmy"
	.db 0x00
___str_9:
	.ascii "Obdulia"
	.db 0x00
;src/main.c:950: void dibujarAyuda(){
;	---------------------------------
; Function dibujarAyuda
; ---------------------------------
_dibujarAyuda::
;src/main.c:955: cpct_drawStringM0("1 VS 1", cpct_getScreenPtr(CPCT_VMEM_START, 26, 4), 11, 0);
	ld	hl,#0x041A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000B
	push	hl
	push	bc
	ld	hl,#___str_10
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:956: cpct_drawStringM0("TWO WAYS TO WIN:", cpct_getScreenPtr(CPCT_VMEM_START, 9, 20), 15, 0);
	ld	hl,#0x1409
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_11
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:957: cpct_drawStringM0("GET THE KEY OF", cpct_getScreenPtr(CPCT_VMEM_START, 12, 40), 6, 0);
	ld	hl,#0x280C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_12
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:958: cpct_drawStringM0("YOUR DOOR THEN", cpct_getScreenPtr(CPCT_VMEM_START, 12, 50), 6, 0);
	ld	hl,#0x320C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_13
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:959: cpct_drawStringM0("ESCAPE THROUGH IT", cpct_getScreenPtr(CPCT_VMEM_START, 12, 60), 6, 0);
	ld	hl,#0x3C0C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_14
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:961: cpct_drawStringM0("KILL YOUR ENEMY", cpct_getScreenPtr(CPCT_VMEM_START, 12, 80), 6, 0);
	ld	hl,#0x500C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_15
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:962: cpct_drawStringM0("TO SCORE A POINT", cpct_getScreenPtr(CPCT_VMEM_START, 12, 90), 6, 0);
	ld	hl,#0x5A0C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_16
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:964: cpct_drawStringM0("DON'T FORGET:", cpct_getScreenPtr(CPCT_VMEM_START, 9, 110), 15, 0);
	ld	hl,#0x6E09
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_17
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:966: cpct_drawStringM0("YOU CAN RELOAD", cpct_getScreenPtr(CPCT_VMEM_START, 12, 130), 6, 0);
	ld	hl,#0x820C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_18
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:967: cpct_drawStringM0("YOUR WEAPON BY", cpct_getScreenPtr(CPCT_VMEM_START, 12, 140), 6, 0);
	ld	hl,#0x8C0C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_19
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:968: cpct_drawStringM0("WALKING CLOSE TO", cpct_getScreenPtr(CPCT_VMEM_START, 12, 150), 6, 0);
	ld	hl,#0x960C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_20
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:969: cpct_drawStringM0("YOUR AMMO BOX", cpct_getScreenPtr(CPCT_VMEM_START, 12, 160), 6, 0);
	ld	hl,#0xA00C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_21
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:971: cpct_drawStringM0("PRESS ANY KEY", cpct_getScreenPtr(CPCT_VMEM_START, 14, 180), 10, 0);
	ld	hl,#0xB40E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000A
	push	hl
	push	bc
	ld	hl,#___str_22
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:972: cpct_drawStringM0("TO START!", cpct_getScreenPtr(CPCT_VMEM_START, 22, 190), 10, 0);
	ld	hl,#0xBE16
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000A
	push	hl
	push	bc
	ld	hl,#___str_23
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:974: cpct_drawTileAligned2x4_f(pre_tileset[16], cpct_getScreenPtr(CPCT_VMEM_START, 0, 40));
	ld	hl,#0x2800
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 32)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:975: cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, 2, 40));
	ld	hl,#0x2802
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 34)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:976: cpct_drawTileAligned2x4_f(pre_tileset[25], cpct_getScreenPtr(CPCT_VMEM_START, 4, 40));
	ld	hl,#0x2804
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 50)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:978: cpct_drawTileAligned2x4_f(pre_tileset[32], cpct_getScreenPtr(CPCT_VMEM_START, 0, 50));
	ld	hl,#0x3200
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 64)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:979: cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, 2, 50));
	ld	hl,#0x3202
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 52)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:980: cpct_drawTileAligned2x4_f(pre_tileset[27], cpct_getScreenPtr(CPCT_VMEM_START, 4, 50));
	ld	hl,#0x3204
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 54)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:982: dibujarCaritaPersonaje(0, 0, 80);
	ld	hl,#0x5000
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
;src/main.c:983: dibujarCaritaPersonaje(1, 4, 80);
	inc	sp
	ld	hl,#0x5004
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
	pop	af
	inc	sp
;src/main.c:985: cpct_drawTileAligned2x4_f(pre_tileset[30], cpct_getScreenPtr(CPCT_VMEM_START, 0, 132));
	ld	hl,#0x8400
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 60)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:986: cpct_drawTileAligned2x4_f(pre_tileset[31], cpct_getScreenPtr(CPCT_VMEM_START, 2, 132));
	ld	hl,#0x8402
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 62)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:987: cpct_drawTileAligned2x4_f(pre_tileset[33], cpct_getScreenPtr(CPCT_VMEM_START, 4, 132));
	ld	hl,#0x8404
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 66)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:988: cpct_drawTileAligned2x4_f(pre_tileset[35], cpct_getScreenPtr(CPCT_VMEM_START, 0, 136));
	ld	hl,#0x8800
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0046) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:989: cpct_drawTileAligned2x4_f(pre_tileset[35], cpct_getScreenPtr(CPCT_VMEM_START, 2, 136));
	ld	hl,#0x8802
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0046) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:990: cpct_drawTileAligned2x4_f(pre_tileset[35], cpct_getScreenPtr(CPCT_VMEM_START, 4, 136));
	ld	hl,#0x8804
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x0046) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:991: cpct_drawTileAligned2x4_f(pre_tileset[20], cpct_getScreenPtr(CPCT_VMEM_START, 0, 140));
	ld	hl,#0x8C00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 40)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:992: cpct_drawTileAligned2x4_f(pre_tileset[22], cpct_getScreenPtr(CPCT_VMEM_START, 2, 140));
	ld	hl,#0x8C02
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002c) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:993: cpct_drawTileAligned2x4_f(pre_tileset[22], cpct_getScreenPtr(CPCT_VMEM_START, 4, 140));
	ld	hl,#0x8C04
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x002c) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:995: timer = 0;  
	ld	de,#0x0000
;src/main.c:997: while(timer2<2){
	ld	c,#0x00
00104$:
	ld	a,c
	sub	a, #0x02
	ret	NC
;src/main.c:998: while(timer<30000){
00101$:
	ld	a,e
	sub	a, #0x30
	ld	a,d
	sbc	a, #0x75
	jr	NC,00103$
;src/main.c:999: timer++;
	inc	de
	jr	00101$
00103$:
;src/main.c:1001: timer2++;
	inc	c
;src/main.c:1002: timer = 0;
	ld	de,#0x0000
	jr	00104$
___str_10:
	.ascii "1 VS 1"
	.db 0x00
___str_11:
	.ascii "TWO WAYS TO WIN:"
	.db 0x00
___str_12:
	.ascii "GET THE KEY OF"
	.db 0x00
___str_13:
	.ascii "YOUR DOOR THEN"
	.db 0x00
___str_14:
	.ascii "ESCAPE THROUGH IT"
	.db 0x00
___str_15:
	.ascii "KILL YOUR ENEMY"
	.db 0x00
___str_16:
	.ascii "TO SCORE A POINT"
	.db 0x00
___str_17:
	.ascii "DON'T FORGET:"
	.db 0x00
___str_18:
	.ascii "YOU CAN RELOAD"
	.db 0x00
___str_19:
	.ascii "YOUR WEAPON BY"
	.db 0x00
___str_20:
	.ascii "WALKING CLOSE TO"
	.db 0x00
___str_21:
	.ascii "YOUR AMMO BOX"
	.db 0x00
___str_22:
	.ascii "PRESS ANY KEY"
	.db 0x00
___str_23:
	.ascii "TO START!"
	.db 0x00
;src/main.c:1007: void dibujarFondoMenu(){
;	---------------------------------
; Function dibujarFondoMenu
; ---------------------------------
_dibujarFondoMenu::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-16
	add	hl,sp
	ld	sp,hl
;src/main.c:1013: t=4; //Controla el patron de stripes
	ld	-16 (ix),#0x04
;src/main.c:1015: for(j=64;j<200;j=j+4){
	ld	-15 (ix),#0x40
;src/main.c:1016: for(i=0;i<80;i=i+2){
00141$:
	ld	a,#0xBA
	sub	a, -15 (ix)
	ld	a,#0x00
	rla
	ld	-4 (ix),a
	ld	a,-15 (ix)
	sub	a, #0xB9
	ld	a,#0x00
	rla
	ld	-10 (ix),a
	ld	a,#0x53
	sub	a, -15 (ix)
	ld	a,#0x00
	rla
	ld	-11 (ix),a
	ld	a,-15 (ix)
	sub	a, #0x54
	jr	NZ,00188$
	ld	a,#0x01
	jr	00189$
00188$:
	xor	a,a
00189$:
	ld	-13 (ix),a
	ld	a,-15 (ix)
	sub	a, #0xB8
	jr	NZ,00190$
	ld	a,#0x01
	jr	00191$
00190$:
	xor	a,a
00191$:
	ld	-7 (ix),a
	ld	a,-15 (ix)
	sub	a, #0xB8
	ld	a,#0x00
	rla
	ld	-12 (ix),a
	ld	a,#0x54
	sub	a, -15 (ix)
	ld	a,#0x00
	rla
	ld	-8 (ix),a
	ld	a,-15 (ix)
	sub	a, #0x52
	ld	a,#0x00
	rla
	ld	-9 (ix),a
	ld	-14 (ix),#0x00
00124$:
;src/main.c:1019: else if((j>83 && j<185) && (i<8 || i>70))cpct_drawTileAligned2x4_f(pre_tileset[15], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
	ld	a,-14 (ix)
	sub	a, #0x08
	ld	a,#0x00
	rla
	ld	-1 (ix),a
;src/main.c:1018: if(j<82 || j>186)cpct_drawTileAligned2x4_f(pre_tileset[15], cpct_getScreenPtr(CPCT_VMEM_START, i, j));  
	ld	a,-9 (ix)
	or	a, a
	jr	NZ,00106$
	ld	a,-4 (ix)
	or	a, a
	jr	Z,00107$
00106$:
	ld	h,-15 (ix)
	ld	l,-14 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x001e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
	jr	00108$
00107$:
;src/main.c:1019: else if((j>83 && j<185) && (i<8 || i>70))cpct_drawTileAligned2x4_f(pre_tileset[15], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
	ld	a,-11 (ix)
	or	a, a
	jr	Z,00108$
	ld	a,-10 (ix)
	or	a, a
	jr	Z,00108$
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00101$
	ld	a,#0x46
	sub	a, -14 (ix)
	jr	NC,00108$
00101$:
	ld	h,-15 (ix)
	ld	l,-14 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#(_pre_tileset + 0x001e) + 0)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
00108$:
;src/main.c:1020: if((j==84 || j==184) && (i>=8 && i<=71))cpct_drawTileAligned2x4_f(pre_tileset[t], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
	ld	l,-16 (ix)
	ld	h,#0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl,#_pre_tileset
	add	hl,bc
	ld	-3 (ix),l
	ld	-2 (ix),h
	ld	a,-13 (ix)
	or	a, a
	jr	NZ,00114$
	ld	a,-7 (ix)
	or	a, a
	jr	Z,00111$
00114$:
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00111$
	ld	a,#0x47
	sub	a, -14 (ix)
	jr	C,00111$
	ld	h,-15 (ix)
	ld	l,-14 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	call	_cpct_drawTileAligned2x4_f
00111$:
;src/main.c:1021: if((j>84 && j<184) && (i==8 || i==70))cpct_drawTileAligned2x4_f(pre_tileset[t], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
	ld	a,-8 (ix)
	or	a, a
	jr	Z,00116$
	ld	a,-12 (ix)
	or	a, a
	jr	Z,00116$
	ld	a,-14 (ix)
	sub	a, #0x08
	jr	Z,00115$
	ld	a,-14 (ix)
	sub	a, #0x46
	jr	NZ,00116$
00115$:
	ld	h,-15 (ix)
	ld	l,-14 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	-5 (ix),h
	ld	-6 (ix),l
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,(hl)
	ld	-3 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-2 (ix),a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	call	_cpct_drawTileAligned2x4_f
00116$:
;src/main.c:1022: t++; if(t>6)t=4;
	inc	-16 (ix)
	ld	a,#0x06
	sub	a, -16 (ix)
	jr	NC,00125$
	ld	-16 (ix),#0x04
00125$:
;src/main.c:1016: for(i=0;i<80;i=i+2){
	inc	-14 (ix)
	inc	-14 (ix)
	ld	a,-14 (ix)
	sub	a, #0x50
	jp	C,00124$
;src/main.c:1015: for(j=64;j<200;j=j+4){
	inc	-15 (ix)
	inc	-15 (ix)
	inc	-15 (ix)
	inc	-15 (ix)
	ld	a,-15 (ix)
	sub	a, #0xC8
	jp	C,00141$
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1028: void dibujarYellowStripes(){
;	---------------------------------
; Function dibujarYellowStripes
; ---------------------------------
_dibujarYellowStripes::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;src/main.c:1032: u8 t=4;
	ld	-6 (ix),#0x04
;src/main.c:1034: for(j=0;j<200;j=j+4){
	ld	c,#0x00
;src/main.c:1035: for(i=0;i<80;i=i+2){          
00129$:
	ld	a,#0x84
	sub	a, c
	ld	a,#0x00
	rla
	ld	e,a
	ld	a,c
	sub	a, #0x44
	jr	NZ,00159$
	ld	a,#0x01
	jr	00160$
00159$:
	xor	a,a
00160$:
	ld	-1 (ix),a
	ld	a,c
	sub	a, #0x80
	jr	NZ,00161$
	ld	a,#0x01
	jr	00162$
00161$:
	xor	a,a
00162$:
	ld	-2 (ix),a
	ld	a,c
	sub	a, #0x48
	jr	NZ,00163$
	ld	a,#0x01
	jr	00164$
00163$:
	xor	a,a
00164$:
	ld	-3 (ix),a
	ld	a,c
	sub	a, #0x84
	jr	NZ,00165$
	ld	a,#0x01
	jr	00166$
00165$:
	xor	a,a
00166$:
	ld	-4 (ix),a
	ld	a,c
	sub	a, #0x44
	ld	a,#0x00
	rla
	ld	-5 (ix),a
	ld	b,#0x00
00119$:
;src/main.c:1036: if(j<68 || j>132)cpct_drawTileAligned2x4_f(pre_tileset[t], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
	ld	a,-5 (ix)
	or	a,a
	jr	NZ,00109$
	or	a,e
	jr	Z,00110$
00109$:
	push	bc
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
	push	hl
	pop	iy
	ld	l,-6 (ix)
	ld	h,#0x00
	add	hl, hl
	ld	a,#<(_pre_tileset)
	add	a, l
	ld	l,a
	ld	a,#>(_pre_tileset)
	adc	a, h
	ld	h,a
	ld	d,(hl)
	inc	hl
	ld	h,(hl)
	push	bc
	push	de
	push	iy
	ld	l, d
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	de
	pop	bc
	jp	00111$
00110$:
;src/main.c:1037: else if(j==68 || j==128)cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00105$
	ld	a,-2 (ix)
	or	a, a
	jr	Z,00106$
00105$:
	push	bc
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
	push	hl
	pop	iy
	ld	hl, (#_pre_tileset + 34)
	push	bc
	push	de
	push	iy
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	de
	pop	bc
	jr	00111$
00106$:
;src/main.c:1038: else if(j==72 || j==132)cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
	ld	a,-3 (ix)
	or	a, a
	jr	NZ,00101$
	ld	a,-4 (ix)
	or	a, a
	jr	Z,00102$
00101$:
	push	bc
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
	push	hl
	pop	iy
	ld	hl, (#_pre_tileset + 52)
	push	bc
	push	de
	push	iy
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	de
	pop	bc
	jr	00111$
00102$:
;src/main.c:1039: else cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, i, j));    
	push	bc
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
	push	hl
	pop	iy
	ld	hl, (#_pre_tileset + 46)
	push	bc
	push	de
	push	iy
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	de
	pop	bc
00111$:
;src/main.c:1040: t++;if(t > 6)t = 4;
	inc	-6 (ix)
	ld	a,#0x06
	sub	a, -6 (ix)
	jr	NC,00120$
	ld	-6 (ix),#0x04
00120$:
;src/main.c:1035: for(i=0;i<80;i=i+2){          
	inc	b
	inc	b
	ld	a,b
	sub	a, #0x50
	jp	C,00119$
;src/main.c:1042: t-2; if(t > 6)t = 4;
	ld	a,#0x06
	sub	a, -6 (ix)
	jr	NC,00122$
	ld	-6 (ix),#0x04
00122$:
;src/main.c:1034: for(j=0;j<200;j=j+4){
	inc	c
	inc	c
	inc	c
	inc	c
	ld	a,c
	sub	a, #0xC8
	jp	C,00129$
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1046: void dibujarGetPsyched(){
;	---------------------------------
; Function dibujarGetPsyched
; ---------------------------------
_dibujarGetPsyched::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:1051: dibujarYellowStripes();
	call	_dibujarYellowStripes
;src/main.c:1052: cpct_drawStringM0("Round", cpct_getScreenPtr(CPCT_VMEM_START, 23, 85), 15, 1);
	ld	hl,#0x5517
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x010F
	push	hl
	push	bc
	ld	hl,#___str_24
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1053: cpct_drawStringM0("Get Psyched!", cpct_getScreenPtr(CPCT_VMEM_START, 16, 110), 10, 1);
	ld	hl,#0x6E10
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x010A
	push	hl
	push	bc
	ld	hl,#___str_25
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1055: sprintf(str, "%d", ronda+1);
	ld	hl,#_ronda + 0
	ld	e, (hl)
	ld	d,#0x00
	inc	de
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	push	de
	ld	de,#___str_26
	push	de
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	hl,#0x5532
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	bc
	ld	hl,#0x010F
	push	hl
	push	de
	push	bc
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1058: timer = 0;  
	ld	de,#0x0000
;src/main.c:1060: while(timer2<3) {//<3
	ld	c,#0x00
00104$:
	ld	a,c
	sub	a, #0x03
	jr	NC,00106$
;src/main.c:1061: while(timer<30000){
00101$:
	ld	a,e
	sub	a, #0x30
	ld	a,d
	sbc	a, #0x75
	jr	NC,00103$
;src/main.c:1062: timer++;
	inc	de
	jr	00101$
00103$:
;src/main.c:1064: timer2++;
	inc	c
;src/main.c:1065: timer = 0;
	ld	de,#0x0000
	jr	00104$
00106$:
;src/main.c:1068: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
	ld	sp, ix
	pop	ix
	ret
___str_24:
	.ascii "Round"
	.db 0x00
___str_25:
	.ascii "Get Psyched!"
	.db 0x00
___str_26:
	.ascii "%d"
	.db 0x00
;src/main.c:1071: void dibujarVictoria(u8 personaje){
;	---------------------------------
; Function dibujarVictoria
; ---------------------------------
_dibujarVictoria::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:1075: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:1076: dibujarYellowStripes();
	call	_dibujarYellowStripes
;src/main.c:1077: switch(personaje){
	ld	a,4 (ix)
	or	a, a
	jr	Z,00101$
	ld	a,4 (ix)
	dec	a
	jp	Z,00102$
	jp	00103$
;src/main.c:1081: case 0:
00101$:
;src/main.c:1082: cpct_drawStringM0("   Jimmy wins!   ", cpct_getScreenPtr(CPCT_VMEM_START, 6, 40), 15, 0);
	ld	hl,#0x2806
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_27
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1083: cpct_drawStringM0("FEAR NOT OBDULIA", cpct_getScreenPtr(CPCT_VMEM_START, 9, 80), 10, 1);
	ld	hl,#0x5009
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x010A
	push	hl
	push	bc
	ld	hl,#___str_28
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1084: cpct_drawStringM0("IT WAS ONLY A", cpct_getScreenPtr(CPCT_VMEM_START, 14, 99), 10, 1);
	ld	hl,#0x630E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x010A
	push	hl
	push	bc
	ld	hl,#___str_29
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1085: cpct_drawStringM0("HORRIBLE NIGHTMARE", cpct_getScreenPtr(CPCT_VMEM_START, 4, 118), 10, 1);
	ld	hl,#0x7604
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x010A
	push	hl
	push	bc
	ld	hl,#___str_30
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1086: break;
	jr	00103$
;src/main.c:1088: case 1:
00102$:
;src/main.c:1089: cpct_drawStringM0("   Obdulia wins!   ", cpct_getScreenPtr(CPCT_VMEM_START, 2, 40), 15, 0);
	ld	hl,#0x2802
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_31
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1090: cpct_drawStringM0("FEAR NOT JIMMY", cpct_getScreenPtr(CPCT_VMEM_START, 10, 80), 11, 1);
	ld	hl,#0x500A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x010B
	push	hl
	push	bc
	ld	hl,#___str_32
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1091: cpct_drawStringM0("IT WAS ONLY A", cpct_getScreenPtr(CPCT_VMEM_START, 14, 99), 11, 1);
	ld	hl,#0x630E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x010B
	push	hl
	push	bc
	ld	hl,#___str_29
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1092: cpct_drawStringM0("HORRIBLE NIGHTMARE", cpct_getScreenPtr(CPCT_VMEM_START, 4, 118), 11, 1);
	ld	hl,#0x7604
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x010B
	push	hl
	push	bc
	ld	hl,#___str_30
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1094: }
00103$:
;src/main.c:1096: timer = 0;  
	ld	de,#0x0000
;src/main.c:1098: while(timer2<20){
	ld	c,#0x00
00107$:
	ld	a,c
	sub	a, #0x14
	jr	NC,00109$
;src/main.c:1099: while(timer<30000){
00104$:
	ld	a,e
	sub	a, #0x30
	ld	a,d
	sbc	a, #0x75
	jr	NC,00106$
;src/main.c:1100: timer++;
	inc	de
	jr	00104$
00106$:
;src/main.c:1102: timer2++;
	inc	c
;src/main.c:1103: timer = 0;
	ld	de,#0x0000
	jr	00107$
00109$:
;src/main.c:1106: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
	pop	ix
	ret
___str_27:
	.ascii "   Jimmy wins!   "
	.db 0x00
___str_28:
	.ascii "FEAR NOT OBDULIA"
	.db 0x00
___str_29:
	.ascii "IT WAS ONLY A"
	.db 0x00
___str_30:
	.ascii "HORRIBLE NIGHTMARE"
	.db 0x00
___str_31:
	.ascii "   Obdulia wins!   "
	.db 0x00
___str_32:
	.ascii "FEAR NOT JIMMY"
	.db 0x00
;src/main.c:1109: void dibujarTwitter(u8 x, u8 y){ 
;	---------------------------------
; Function dibujarTwitter
; ---------------------------------
_dibujarTwitter::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:1111: cpct_drawTileAligned2x4_f(pre_tileset[48], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 96)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
;src/main.c:1112: cpct_drawTileAligned2x4_f(pre_tileset[49], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
	ld	c,4 (ix)
	inc	c
	inc	c
	push	bc
	ld	a,5 (ix)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 98)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	bc
;src/main.c:1113: cpct_drawTileAligned2x4_f(pre_tileset[50], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
	ld	b,5 (ix)
	inc	b
	inc	b
	inc	b
	inc	b
	push	bc
	push	bc
	inc	sp
	ld	a,4 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
	pop	bc
	ld	hl, (#_pre_tileset + 100)
	push	bc
	push	de
	push	hl
	call	_cpct_drawTileAligned2x4_f
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl, (#_pre_tileset + 102)
	push	bc
	push	hl
	call	_cpct_drawTileAligned2x4_f
	pop	ix
	ret
;src/main.c:1117: void dibujarCreditos(){
;	---------------------------------
; Function dibujarCreditos
; ---------------------------------
_dibujarCreditos::
;src/main.c:1120: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:1122: cpct_drawStringM0("SubXplosion TEAM", cpct_getScreenPtr(CPCT_VMEM_START, 8, 0), 14, 0);
	ld	hl,#0x0008
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000E
	push	hl
	push	bc
	ld	hl,#___str_33
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1123: dibujarTwitter(12,12);
	ld	hl,#0x0C0C
	push	hl
	call	_dibujarTwitter
;src/main.c:1124: cpct_drawStringM0("@SubXplosion", cpct_getScreenPtr(CPCT_VMEM_START, 18, 12), 15, 0);
	ld	hl, #0x0C12
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_34
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1126: dibujarCaritaPersonaje(0,8, 40);
	ld	hl,#0x2808
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
;src/main.c:1127: cpct_drawStringM0("Carlos", cpct_getScreenPtr(CPCT_VMEM_START, 15, 40), 6, 0);
	inc	sp
	ld	hl,#0x280F
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_35
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1128: cpct_drawStringM0("Aniorte Llanes", cpct_getScreenPtr(CPCT_VMEM_START, 15, 50), 6, 0);
	ld	hl,#0x320F
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	push	hl
	push	bc
	ld	hl,#___str_36
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1130: dibujarCaritaPersonaje(0,8, 80);
	ld	hl,#0x5008
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
;src/main.c:1131: cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 31, 77), 12, 0);
	inc	sp
	ld	hl,#0x4D1F
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000C
	push	hl
	push	bc
	ld	hl,#___str_37
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1132: cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 31, 87), 12, 0);
	ld	hl,#0x571F
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000C
	push	hl
	push	bc
	ld	hl,#___str_37
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1133: cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 59, 87), 12, 0);
	ld	hl,#0x573B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000C
	push	hl
	push	bc
	ld	hl,#___str_37
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1134: cpct_drawStringM0("Adrian", cpct_getScreenPtr(CPCT_VMEM_START, 15, 80), 12, 0);
	ld	hl,#0x500F
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000C
	push	hl
	push	bc
	ld	hl,#___str_38
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1135: cpct_drawStringM0("Garcia Garcia", cpct_getScreenPtr(CPCT_VMEM_START, 15, 90), 12, 0);
	ld	hl,#0x5A0F
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000C
	push	hl
	push	bc
	ld	hl,#___str_39
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1137: dibujarCaritaPersonaje(0,8, 120);
	ld	hl,#0x7808
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
;src/main.c:1138: cpct_drawStringM0("Andreu", cpct_getScreenPtr(CPCT_VMEM_START, 15, 120), 9, 0);
	inc	sp
	ld	hl,#0x780F
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0009
	push	hl
	push	bc
	ld	hl,#___str_40
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1139: cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 27, 126), 9, 0);
	ld	hl,#0x7E1B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0009
	push	hl
	push	bc
	ld	hl,#___str_37
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1140: cpct_drawStringM0("~", cpct_getScreenPtr(CPCT_VMEM_START, 31, 128), 9, 0);
	ld	hl,#0x801F
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0009
	push	hl
	push	bc
	ld	hl,#___str_41
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1141: cpct_drawStringM0("Ordonez Arboleda", cpct_getScreenPtr(CPCT_VMEM_START, 15, 130), 9, 0);
	ld	hl,#0x820F
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0009
	push	hl
	push	bc
	ld	hl,#___str_42
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1143: cpct_drawStringM0("Subxplosionstudio", cpct_getScreenPtr(CPCT_VMEM_START, 10, 170), 15, 0);
	ld	hl,#0xAA0A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_43
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1144: cpct_drawStringM0("@gmail.com", cpct_getScreenPtr(CPCT_VMEM_START, 22, 180), 15, 0);
	ld	hl,#0xB416
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_44
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
___str_33:
	.ascii "SubXplosion TEAM"
	.db 0x00
___str_34:
	.ascii "@SubXplosion"
	.db 0x00
___str_35:
	.ascii "Carlos"
	.db 0x00
___str_36:
	.ascii "Aniorte Llanes"
	.db 0x00
___str_37:
	.db 0xB4
	.db 0x00
___str_38:
	.ascii "Adrian"
	.db 0x00
___str_39:
	.ascii "Garcia Garcia"
	.db 0x00
___str_40:
	.ascii "Andreu"
	.db 0x00
___str_41:
	.ascii "~"
	.db 0x00
___str_42:
	.ascii "Ordonez Arboleda"
	.db 0x00
___str_43:
	.ascii "Subxplosionstudio"
	.db 0x00
___str_44:
	.ascii "@gmail.com"
	.db 0x00
;src/main.c:1153: void dibujarConfiguracionControles(u8 modo){
;	---------------------------------
; Function dibujarConfiguracionControles
; ---------------------------------
_dibujarConfiguracionControles::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:1156: if(modo == 0){
	ld	a,4 (ix)
	or	a, a
	jr	NZ,00102$
;src/main.c:1158: llenarVmem(10,68,92,176,24);
	ld	hl,#0x18B0
	push	hl
	ld	hl,#0x5C44
	push	hl
	ld	a,#0x0A
	push	af
	inc	sp
	call	_llenarVmem
	pop	af
;src/main.c:1159: cpct_drawStringM0("CONTROL", cpct_getScreenPtr(CPCT_VMEM_START, 26, 95), 15, 0);
	inc	sp
	ld	hl,#0x5F1A
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_45
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1161: dibujarCaritaPersonaje(0, 14,120);
	ld	hl,#0x780E
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
;src/main.c:1162: dibujarCaritaPersonaje(1, 14,152);
	inc	sp
	ld	hl,#0x980E
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
	pop	af
	inc	sp
00102$:
;src/main.c:1167: llenarVmem(20,68,120,128,24);
	ld	hl,#0x1880
	push	hl
	ld	hl,#0x7844
	push	hl
	ld	a,#0x14
	push	af
	inc	sp
	call	_llenarVmem
	pop	af
;src/main.c:1168: llenarVmem(20,68,152,160,24);
	inc	sp
	ld	hl,#0x18A0
	ex	(sp),hl
	ld	hl,#0x9844
	push	hl
	ld	a,#0x14
	push	af
	inc	sp
	call	_llenarVmem
	pop	af
	pop	af
	inc	sp
;src/main.c:1170: if(seleccionControles == 0){
	ld	iy,#_seleccionControles
	ld	a,0 (iy)
	or	a, a
	jp	NZ,00120$
;src/main.c:1172: switch(prota.controles){ 
	ld	hl,#_prota+26
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jr	C,00106$
	ld	d,#0x00
	ld	hl,#00148$
	add	hl,de
	add	hl,de
;src/main.c:1173: case 0: cpct_drawStringM0("< WASD >", cpct_getScreenPtr(CPCT_VMEM_START, 28, 120), 15, 0);break;
	jp	(hl)
00148$:
	jr	00103$
	jr	00104$
	jr	00105$
00103$:
	ld	hl,#0x781C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_46
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	jr	00106$
;src/main.c:1174: case 1: cpct_drawStringM0("< Keypad >", cpct_getScreenPtr(CPCT_VMEM_START, 24, 120), 15, 0);break;
00104$:
	ld	hl,#0x7818
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_47
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	jr	00106$
;src/main.c:1175: case 2: cpct_drawStringM0("< Joystick >", cpct_getScreenPtr(CPCT_VMEM_START, 20, 120), 15, 0);break; 
00105$:
	ld	hl,#0x7814
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_48
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1176: }
00106$:
;src/main.c:1177: switch(protaDos.controles){    
	ld	hl,#_protaDos+26
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jp	C,00122$
	ld	d,#0x00
	ld	hl,#00149$
	add	hl,de
	add	hl,de
;src/main.c:1178: case 0: cpct_drawStringM0("WASD", cpct_getScreenPtr(CPCT_VMEM_START, 36, 152), 15, 0);break;
	jp	(hl)
00149$:
	jr	00107$
	jr	00108$
	jr	00109$
00107$:
	ld	hl,#0x9824
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_49
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	jp	00122$
;src/main.c:1179: case 1: cpct_drawStringM0("Keypad", cpct_getScreenPtr(CPCT_VMEM_START, 32, 152), 15, 0);break;
00108$:
	ld	hl,#0x9820
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_50
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	jp	00122$
;src/main.c:1180: case 2: cpct_drawStringM0("Joystick", cpct_getScreenPtr(CPCT_VMEM_START, 28, 152), 15, 0);break;
00109$:
	ld	hl,#0x981C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_51
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1181: }   
	jp	00122$
00120$:
;src/main.c:1185: switch(prota.controles){ 
	ld	hl,#_prota+26
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jr	C,00114$
	ld	d,#0x00
	ld	hl,#00150$
	add	hl,de
	add	hl,de
;src/main.c:1186: case 0: cpct_drawStringM0("WASD", cpct_getScreenPtr(CPCT_VMEM_START, 36, 120), 15, 0);break;
	jp	(hl)
00150$:
	jr	00111$
	jr	00112$
	jr	00113$
00111$:
	ld	hl,#0x7824
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_49
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	jr	00114$
;src/main.c:1187: case 1: cpct_drawStringM0("Keypad", cpct_getScreenPtr(CPCT_VMEM_START, 32, 120), 15, 0);break;
00112$:
	ld	hl,#0x7820
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_50
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	jr	00114$
;src/main.c:1188: case 2: cpct_drawStringM0("Joystick", cpct_getScreenPtr(CPCT_VMEM_START, 28, 120), 15, 0);break;
00113$:
	ld	hl,#0x781C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_51
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1189: }
00114$:
;src/main.c:1190: switch(protaDos.controles){    
	ld	hl,#_protaDos+26
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jr	C,00122$
	ld	d,#0x00
	ld	hl,#00151$
	add	hl,de
	add	hl,de
;src/main.c:1191: case 0: cpct_drawStringM0("< WASD >", cpct_getScreenPtr(CPCT_VMEM_START, 28, 152), 15, 0);break;
	jp	(hl)
00151$:
	jr	00115$
	jr	00116$
	jr	00117$
00115$:
	ld	hl,#0x981C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_46
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	jr	00122$
;src/main.c:1192: case 1: cpct_drawStringM0("< Keypad >", cpct_getScreenPtr(CPCT_VMEM_START, 24, 152), 15, 0);break;
00116$:
	ld	hl,#0x9818
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_47
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	jr	00122$
;src/main.c:1193: case 2: cpct_drawStringM0("< Joystick >", cpct_getScreenPtr(CPCT_VMEM_START, 20, 152), 15, 0);break;        
00117$:
	ld	hl,#0x9814
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_48
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1194: }  
00122$:
	pop	ix
	ret
___str_45:
	.ascii "CONTROL"
	.db 0x00
___str_46:
	.ascii "< WASD >"
	.db 0x00
___str_47:
	.ascii "< Keypad >"
	.db 0x00
___str_48:
	.ascii "< Joystick >"
	.db 0x00
___str_49:
	.ascii "WASD"
	.db 0x00
___str_50:
	.ascii "Keypad"
	.db 0x00
___str_51:
	.ascii "Joystick"
	.db 0x00
;src/main.c:1201: void dibujarPantallaPrincipal(){
;	---------------------------------
; Function dibujarPantallaPrincipal
; ---------------------------------
_dibujarPantallaPrincipal::
;src/main.c:1203: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:1206: cpct_drawSprite (pre_logo_0, cpctm_screenPtr(CPCT_VMEM_START, 0, 0), PRE_LOGO_0_W, PRE_LOGO_0_H);
	ld	hl,#0x4228
	push	hl
	ld	hl,#0xC000
	push	hl
	ld	hl,#_pre_logo_0
	push	hl
	call	_cpct_drawSprite
;src/main.c:1209: cpct_drawSprite (pre_logo_1, cpctm_screenPtr(CPCT_VMEM_START, PRE_LOGO_0_W, 0), PRE_LOGO_1_W, PRE_LOGO_1_H);
	ld	hl,#0x4228
	push	hl
	ld	h, #0xC0
	push	hl
	ld	hl,#_pre_logo_1
	push	hl
	call	_cpct_drawSprite
;src/main.c:1212: dibujarFondoMenu();
	call	_dibujarFondoMenu
;src/main.c:1213: mostrarMenu();
	call	_mostrarMenu
	ret
;src/main.c:1216: void dibujarPortada(){
;	---------------------------------
; Function dibujarPortada
; ---------------------------------
_dibujarPortada::
;src/main.c:1225: cpct_drawStringM0("SubXplosion", cpct_getScreenPtr(CPCT_VMEM_START, 18, 90), 10, 0);
	ld	hl,#0x5A12
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000A
	push	hl
	push	bc
	ld	hl,#___str_52
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1226: cpct_drawStringM0("Presents", cpct_getScreenPtr(CPCT_VMEM_START, 25, 120), 8, 0);
	ld	hl,#0x7819
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0008
	push	hl
	push	bc
	ld	hl,#___str_53
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
___str_52:
	.ascii "SubXplosion"
	.db 0x00
___str_53:
	.ascii "Presents"
	.db 0x00
;src/main.c:1232: void redefinirControles(u8 personaje, u8 modo, u8 disposicion){
;	---------------------------------
; Function redefinirControles
; ---------------------------------
_redefinirControles::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:1238: switch(modo){
	ld	a,#0x02
	sub	a, 5 (ix)
	ld	a,#0x00
	rla
	ld	e,a
;src/main.c:1240: switch(disposicion){
	ld	a,6 (ix)
	or	a, a
	jr	NZ,00152$
	ld	a,#0x01
	jr	00153$
00152$:
	xor	a,a
00153$:
	ld	c,a
	ld	a,6 (ix)
	dec	a
	jr	NZ,00154$
	ld	a,#0x01
	jr	00155$
00154$:
	xor	a,a
00155$:
	ld	b,a
;src/main.c:1235: switch(personaje){
	ld	a,4 (ix)
	or	a, a
	jr	Z,00101$
	ld	a,4 (ix)
	dec	a
	jr	Z,00109$
	jp	00118$
;src/main.c:1237: case 0: 
00101$:
;src/main.c:1238: switch(modo){
	ld	a,e
	or	a, a
	jr	NZ,00118$
	ld	e,5 (ix)
	ld	d,#0x00
	ld	hl,#00158$
	add	hl,de
	add	hl,de
;src/main.c:1239: case 0:
	jp	(hl)
00158$:
	jr	00102$
	jr	00106$
	jr	00107$
00102$:
;src/main.c:1240: switch(disposicion){
	ld	a,c
	or	a,a
	jr	NZ,00103$
	or	a,b
	jr	NZ,00104$
	jr	00118$
;src/main.c:1241: case 0: prota.controles = 0;break;
00103$:
	ld	hl,#(_prota + 0x001a)
	ld	(hl),#0x00
	jr	00118$
;src/main.c:1242: case 1: prota.controles = 1; break; 
00104$:
	ld	hl,#(_prota + 0x001a)
	ld	(hl),#0x01
;src/main.c:1244: break;
	jr	00118$
;src/main.c:1246: case 1: prota.controles = 2; break;
00106$:
	ld	hl,#(_prota + 0x001a)
	ld	(hl),#0x02
	jr	00118$
;src/main.c:1247: case 2: prota.controles = 3; break;
00107$:
	ld	hl,#(_prota + 0x001a)
	ld	(hl),#0x03
;src/main.c:1249: break;
	jr	00118$
;src/main.c:1251: case 1: 
00109$:
;src/main.c:1252: switch(modo){
	ld	a,e
	or	a, a
	jr	NZ,00118$
	ld	e,5 (ix)
	ld	d,#0x00
	ld	hl,#00159$
	add	hl,de
	add	hl,de
;src/main.c:1253: case 0:
	jp	(hl)
00159$:
	jr	00110$
	jr	00114$
	jr	00115$
00110$:
;src/main.c:1254: switch(disposicion){
	ld	a,c
	or	a,a
	jr	NZ,00111$
	or	a,b
	jr	NZ,00112$
	jr	00118$
;src/main.c:1255: case 0: protaDos.controles = 0;break;
00111$:
	ld	hl,#(_protaDos + 0x001a)
	ld	(hl),#0x00
	jr	00118$
;src/main.c:1256: case 1: protaDos.controles = 1; break; 
00112$:
	ld	hl,#(_protaDos + 0x001a)
	ld	(hl),#0x01
;src/main.c:1258: break;
	jr	00118$
;src/main.c:1260: case 1: protaDos.controles = 2; break;
00114$:
	ld	hl,#(_protaDos + 0x001a)
	ld	(hl),#0x02
	jr	00118$
;src/main.c:1261: case 2: protaDos.controles = 3; break;
00115$:
	ld	hl,#(_protaDos + 0x001a)
	ld	(hl),#0x03
;src/main.c:1264: }
00118$:
	pop	ix
	ret
;src/main.c:1267: void reset(){
;	---------------------------------
; Function reset
; ---------------------------------
_reset::
;src/main.c:1270: musica = 0;
	ld	hl,#_musica + 0
	ld	(hl), #0x00
;src/main.c:1271: cpct_akp_stop();
	call	_cpct_akp_stop
;src/main.c:1272: cpct_akp_musicInit(pre_music_presentation); 
	ld	hl,#_pre_music_presentation
	push	hl
	call	_cpct_akp_musicInit
	pop	af
;src/main.c:1274: ronda=0;
	ld	hl,#_ronda + 0
	ld	(hl), #0x00
;src/main.c:1275: prota.marcador=0;
	ld	hl,#(_prota + 0x001c)
	ld	(hl),#0x00
;src/main.c:1276: protaDos.marcador=0;
	ld	hl,#(_protaDos + 0x001c)
	ld	(hl),#0x00
;src/main.c:1277: estado = 3;
	ld	hl,#_estado + 0
	ld	(hl), #0x03
;src/main.c:1278: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:1279: dibujarPortada();
	call	_dibujarPortada
	ret
;src/main.c:1288: void reaparecer(){
;	---------------------------------
; Function reaparecer
; ---------------------------------
_reaparecer::
;src/main.c:1297: if(prota.marcador != 5 && protaDos.marcador != 5){
	ld	a, (#(_prota + 0x001c) + 0)
	sub	a, #0x05
	jr	NZ,00151$
	ld	a,#0x01
	jr	00152$
00151$:
	xor	a,a
00152$:
	ld	c,a
	bit	0,c
	jr	NZ,00112$
	ld	a, (#(_protaDos + 0x001c) + 0)
	sub	a, #0x05
	jr	Z,00112$
;src/main.c:1299: switch(lastWinner){
	ld	a,(#_lastWinner + 0)
	dec	a
	jr	Z,00101$
	ld	a,(#_lastWinner + 0)
	sub	a, #0x02
	jr	Z,00102$
	jr	00103$
;src/main.c:1301: case 1:
00101$:
;src/main.c:1302: dibujarGanador(0);
	xor	a, a
	push	af
	inc	sp
	call	_dibujarGanador
	inc	sp
;src/main.c:1303: break;
	jr	00103$
;src/main.c:1305: case 2:
00102$:
;src/main.c:1306: dibujarGanador(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarGanador
	inc	sp
;src/main.c:1309: }
00103$:
;src/main.c:1311: if(estado == 1)inicializarPartida();
	ld	a,(#_estado + 0)
	dec	a
	jr	NZ,00113$
	call	_inicializarPartida
	jr	00113$
00112$:
;src/main.c:1314: if(prota.marcador == 5){
	bit	0,c
	jr	Z,00109$
;src/main.c:1315: dibujarVictoria(0);
	xor	a, a
	push	af
	inc	sp
	call	_dibujarVictoria
	inc	sp
	jr	00110$
00109$:
;src/main.c:1317: else if (protaDos.marcador == 5){
	ld	a, (#(_protaDos + 0x001c) + 0)
	sub	a, #0x05
	jr	NZ,00110$
;src/main.c:1318: dibujarVictoria(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarVictoria
	inc	sp
00110$:
;src/main.c:1320: reset();
	call	_reset
00113$:
;src/main.c:1323: if(estado == 1)reapareciendo=1;
	ld	a,(#_estado + 0)
	dec	a
	ret	NZ
	ld	hl,#_reapareciendo + 0
	ld	(hl), #0x01
	ret
;src/main.c:1327: void mostrarMenu(){
;	---------------------------------
; Function mostrarMenu
; ---------------------------------
_mostrarMenu::
;src/main.c:1334: cpct_drawStringM0(JUGAR, cpct_getScreenPtr(CPCT_VMEM_START, 26, 104), 15, 0);
	ld	hl,#0x681A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_54
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1335: cpct_drawStringM0(MUSICA, cpct_getScreenPtr(CPCT_VMEM_START, 26, 124), 15, 0);
	ld	hl,#0x7C1A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_55
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1336: cpct_drawStringM0(CONTROLES, cpct_getScreenPtr(CPCT_VMEM_START, 26, 144), 15, 0);
	ld	hl,#0x901A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_56
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1337: cpct_drawStringM0(CREDITOS, cpct_getScreenPtr(CPCT_VMEM_START, 26, 164), 15, 0);
	ld	hl,#0xA41A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_57
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
___str_54:
	.ascii "Start"
	.db 0x00
___str_55:
	.ascii "Music"
	.db 0x00
___str_56:
	.ascii "Control"
	.db 0x00
___str_57:
	.ascii "Credits"
	.db 0x00
;src/main.c:1341: void refrescarMenu(){
;	---------------------------------
; Function refrescarMenu
; ---------------------------------
_refrescarMenu::
;src/main.c:1343: llenarVmem(16,20,104,172,24);
	ld	hl,#0x18AC
	push	hl
	ld	hl,#0x6814
	push	hl
	ld	a,#0x10
	push	af
	inc	sp
	call	_llenarVmem
	pop	af
	pop	af
	inc	sp
;src/main.c:1345: switch(seleccion){
	ld	a,#0x03
	ld	iy,#_seleccion
	sub	a, 0 (iy)
	jr	C,00105$
	ld	iy,#_seleccion
	ld	e,0 (iy)
	ld	d,#0x00
	ld	hl,#00119$
	add	hl,de
	add	hl,de
;src/main.c:1346: case 0: dibujarCaritaPersonaje(2, 16, 104); break;
	jp	(hl)
00119$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
00101$:
	ld	hl,#0x6810
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
	pop	af
	inc	sp
	jr	00105$
;src/main.c:1347: case 1: dibujarCaritaPersonaje(2, 16, 124); break;
00102$:
	ld	hl,#0x7C10
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
	pop	af
	inc	sp
	jr	00105$
;src/main.c:1348: case 2: dibujarCaritaPersonaje(2, 16, 144); break;    
00103$:
	ld	hl,#0x9010
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
	pop	af
	inc	sp
	jr	00105$
;src/main.c:1349: case 3: dibujarCaritaPersonaje(2, 16, 164); break;    
00104$:
	ld	hl,#0xA410
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_dibujarCaritaPersonaje
	pop	af
	inc	sp
;src/main.c:1350: }
00105$:
;src/main.c:1352: if(seleccionMusica == 1)cpct_drawStringM0("Y", cpct_getScreenPtr(CPCT_VMEM_START, 52, 123), 11, 0);
	ld	a,(#_seleccionMusica + 0)
	dec	a
	jr	NZ,00107$
	ld	hl,#0x7B34
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x000B
	push	hl
	push	bc
	ld	hl,#___str_58
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
00107$:
;src/main.c:1353: else cpct_drawStringM0("N", cpct_getScreenPtr(CPCT_VMEM_START, 52, 123), 4, 0);
	ld	hl,#0x7B34
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0004
	push	hl
	push	bc
	ld	hl,#___str_59
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
___str_58:
	.ascii "Y"
	.db 0x00
___str_59:
	.ascii "N"
	.db 0x00
;src/main.c:1358: void dibujarProta(){
;	---------------------------------
; Function dibujarProta
; ---------------------------------
_dibujarProta::
;src/main.c:1361: u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, prota.x, prota.y);
	ld	hl, #_prota + 1
	ld	d,(hl)
	ld	hl, #_prota + 0
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:1362: cpct_drawSpriteMaskedAlignedTable(prota.frame->sprite, pvmem, PRE_JIMMY_TILESET_00_W, PRE_JIMMY_TILESET_00_H, pre_tablatrans);
	ld	hl, (#_prota + 9)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#_pre_tablatrans
	push	hl
	ld	hl,#0x0E05
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
;src/main.c:1365: void dibujarProtaDos(){
;	---------------------------------
; Function dibujarProtaDos
; ---------------------------------
_dibujarProtaDos::
;src/main.c:1368: u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, protaDos.x, protaDos.y);
	ld	hl, #_protaDos + 1
	ld	d,(hl)
	ld	hl, #_protaDos + 0
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:1369: cpct_drawSpriteMaskedAlignedTable(protaDos.frame->sprite, pvmem, PRE_OBDULIA_TILESET_00_W, PRE_OBDULIA_TILESET_00_H, pre_tablatrans);
	ld	hl, (#_protaDos + 9)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#_pre_tablatrans
	push	hl
	ld	hl,#0x0E05
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
;src/main.c:1373: void borrarProta(){
;	---------------------------------
; Function borrarProta
; ---------------------------------
_borrarProta::
;src/main.c:1375: cpct_etm_drawTileBox2x4 (prota.px / 2, (prota.py - (ORIGEN_MAPA_Y)) / 4, 3, 4, pre_terrain_W, ORIGEN_MAPA, mapa);
	ld	bc,(_mapa)
	ld	hl, #_prota + 4
	ld	e,(hl)
	ld	d,#0x00
	ld	h,e
	ld	l,d
	bit	7, d
	jr	Z,00103$
	inc	de
	inc	de
	inc	de
	ld	h,e
	ld	l,d
00103$:
	ld	e, h
	ld	d, l
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, (#_prota + 3)
	srl	a
	ld	d,a
	push	bc
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2704
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cpct_etm_drawTileBox2x4
	ret
;src/main.c:1378: void borrarProtaDos(){
;	---------------------------------
; Function borrarProtaDos
; ---------------------------------
_borrarProtaDos::
;src/main.c:1380: cpct_etm_drawTileBox2x4 (protaDos.px / 2, (protaDos.py - (ORIGEN_MAPA_Y)) / 4, 3, 4, pre_terrain_W, ORIGEN_MAPA, mapa);
	ld	bc,(_mapa)
	ld	hl, #_protaDos + 4
	ld	e,(hl)
	ld	d,#0x00
	ld	h,e
	ld	l,d
	bit	7, d
	jr	Z,00103$
	inc	de
	inc	de
	inc	de
	ld	h,e
	ld	l,d
00103$:
	ld	e, h
	ld	d, l
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, (#_protaDos + 3)
	srl	a
	ld	d,a
	push	bc
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2704
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cpct_etm_drawTileBox2x4
	ret
;src/main.c:1384: void redibujarProta(){
;	---------------------------------
; Function redibujarProta
; ---------------------------------
_redibujarProta::
;src/main.c:1385: borrarProta();
	call	_borrarProta
;src/main.c:1386: prota.px = prota.x;
	ld	bc,#_prota + 3
	ld	a, (#_prota + 0)
	ld	(bc),a
;src/main.c:1387: prota.py = prota.y;
	ld	bc,#_prota + 4
	ld	a, (#_prota + 1)
	ld	(bc),a
;src/main.c:1388: dibujarProta();
	jp  _dibujarProta
;src/main.c:1390: void redibujarProtaDos(){
;	---------------------------------
; Function redibujarProtaDos
; ---------------------------------
_redibujarProtaDos::
;src/main.c:1391: borrarProtaDos();
	call	_borrarProtaDos
;src/main.c:1392: protaDos.px = protaDos.x;
	ld	bc,#_protaDos + 3
	ld	a, (#_protaDos + 0)
	ld	(bc),a
;src/main.c:1393: protaDos.py = protaDos.y;
	ld	bc,#_protaDos + 4
	ld	a, (#_protaDos + 1)
	ld	(bc),a
;src/main.c:1394: dibujarProtaDos();
	jp  _dibujarProtaDos
;src/main.c:1402: void comprobarLimites(TProta * pro, Tdisparo * disp){
;	---------------------------------
; Function comprobarLimites
; ---------------------------------
_comprobarLimites::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;src/main.c:1404: if(pro->miraAtacando==M_abajo){
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	pop	iy
	ld	a,24 (iy)
	ld	-5 (ix),a
;src/main.c:1405: if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+25 || disp->y < 1) && pro->disparando==SI){
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	hl,#0x0015
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	a,(bc)
	ld	l,a
	ld	e, c
	ld	d, b
	inc	de
;src/main.c:1408: disp->px=disp->x;
	ld	a,c
	add	a, #0x02
	ld	-4 (ix),a
	ld	a,b
	adc	a, #0x00
	ld	-3 (ix),a
;src/main.c:1412: disp->py = 0;
	ld	a,c
	add	a, #0x03
	ld	-7 (ix),a
	ld	a,b
	adc	a, #0x00
	ld	-6 (ix),a
;src/main.c:1405: if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+25 || disp->y < 1) && pro->disparando==SI){
	ld	a,#0x4A
	sub	a, l
	ld	a,#0x00
	rla
	ld	-8 (ix),a
	ld	a,l
	sub	a, #0x01
	ld	a,#0x00
	rla
	ld	l,a
;src/main.c:1404: if(pro->miraAtacando==M_abajo){
	ld	a,-5 (ix)
	sub	a, #0x02
	jr	NZ,00114$
;src/main.c:1405: if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+25 || disp->y < 1) && pro->disparando==SI){
	ld	a,-8 (ix)
	or	a,a
	jr	NZ,00106$
	or	a,l
	jr	NZ,00106$
	ld	a,(de)
	ld	l,a
	ld	a,#0xBE
	sub	a, l
	jr	C,00106$
	ld	a,l
	sub	a, #0x01
	jp	NC,00116$
00106$:
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l,(hl)
	dec	l
	jp	NZ,00116$
;src/main.c:1406: pro->disparando=NO;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/main.c:1407: borrarDisparoHorizontal(disp);
	push	bc
	push	de
	push	bc
	call	_borrarDisparoHorizontal
	pop	af
	pop	de
	pop	bc
;src/main.c:1408: disp->px=disp->x;
	ld	a,(bc)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),a
;src/main.c:1409: borrarDisparoVertical(disp);
	push	bc
	push	de
	push	bc
	call	_borrarDisparoVertical
	pop	af
	pop	de
	pop	bc
;src/main.c:1410: disp->y = 0;
	xor	a, a
	ld	(de),a
;src/main.c:1411: disp->x = 0;
	xor	a, a
	ld	(bc),a
;src/main.c:1412: disp->py = 0;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),#0x00
;src/main.c:1413: disp->px = 0;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x00
	jr	00116$
00114$:
;src/main.c:1418: if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+26 || disp->y < 1) && pro->disparando==SI){
	ld	a,-8 (ix)
	or	a,a
	jr	NZ,00112$
	or	a,l
	jr	NZ,00112$
	ld	a,(de)
	ld	l,a
	ld	a,#0xBF
	sub	a, l
	jr	C,00112$
	ld	a,l
	sub	a, #0x01
	jr	NC,00116$
00112$:
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l,(hl)
	dec	l
	jr	NZ,00116$
;src/main.c:1419: pro->disparando=NO;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/main.c:1420: borrarDisparoHorizontal(disp);
	push	bc
	push	de
	push	bc
	call	_borrarDisparoHorizontal
	pop	af
	pop	de
	pop	bc
;src/main.c:1421: disp->px=disp->x;
	ld	a,(bc)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),a
;src/main.c:1422: borrarDisparoVertical(disp);
	push	bc
	push	de
	push	bc
	call	_borrarDisparoVertical
	pop	af
	pop	de
	pop	bc
;src/main.c:1423: disp->y = 0;
	xor	a, a
	ld	(de),a
;src/main.c:1424: disp->x = 0;
	xor	a, a
	ld	(bc),a
;src/main.c:1425: disp->py = 0;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),#0x00
;src/main.c:1426: disp->px = 0;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x00
00116$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1433: void compruebaDisparos(){
;	---------------------------------
; Function compruebaDisparos
; ---------------------------------
_compruebaDisparos::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:1434: if(disparo.x<disparoDos.x+6 && disparo.x>disparoDos.x-6 && disparo.y<disparoDos.y+12 && disparo.y>disparoDos.y-10 && disparo.x!=0){
	ld	hl,#_disparo+0
	ld	e,(hl)
	ld	a, (#_disparoDos + 0)
	ld	-2 (ix),a
	ld	-1 (ix),#0x00
	ld	a,-2 (ix)
	add	a, #0x06
	ld	c,a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	b,a
	ld	-4 (ix),e
	ld	-3 (ix),#0x00
	ld	a,-4 (ix)
	sub	a, c
	ld	a,-3 (ix)
	sbc	a, b
	jp	PO, 00150$
	xor	a, #0x80
00150$:
	jp	P,00116$
	ld	a,-2 (ix)
	add	a,#0xFA
	ld	c,a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	b,a
	ld	a,c
	sub	a, -4 (ix)
	ld	a,b
	sbc	a, -3 (ix)
	jp	PO, 00151$
	xor	a, #0x80
00151$:
	jp	P,00116$
	ld	hl, #(_disparo + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #(_disparoDos + 0x0001) + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x000C
	add	hl,de
	ld	b,#0x00
	ld	a,c
	sub	a, l
	ld	a,b
	sbc	a, h
	jp	PO, 00152$
	xor	a, #0x80
00152$:
	jp	P,00116$
	ld	a,e
	add	a,#0xF6
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
	ld	a,e
	sub	a, c
	ld	a,d
	sbc	a, b
	jp	PO, 00153$
	xor	a, #0x80
00153$:
	jp	P,00116$
	ld	a, (#_disparo + 0)
	or	a, a
	jp	Z,00116$
;src/main.c:1435: borrarDisparoHorizontal(&disparoDos);
	ld	hl,#_disparoDos
	push	hl
	call	_borrarDisparoHorizontal
;src/main.c:1436: borrarDisparoHorizontal(&disparo);
	ld	hl, #_disparo
	ex	(sp),hl
	call	_borrarDisparoHorizontal
	pop	af
;src/main.c:1437: if(prota.miraAtacando==M_abajo || prota.miraAtacando==M_arriba){
	ld	a,(#(_prota + 0x0018) + 0)
	ld	-4 (ix), a
	sub	a, #0x02
	jr	Z,00101$
	ld	a,-4 (ix)
	sub	a, #0x03
	jr	NZ,00102$
00101$:
;src/main.c:1438: borrarDisparoVertical(&disparo);
	ld	hl,#_disparo
	push	hl
	call	_borrarDisparoVertical
;src/main.c:1439: borrarDisparoVertical(&disparoDos);
	ld	hl, #_disparoDos
	ex	(sp),hl
	call	_borrarDisparoVertical
	pop	af
00102$:
;src/main.c:1443: if(prota.miraAtacando==M_derecha){
	ld	a,(#(_prota + 0x0018) + 0)
	ld	-4 (ix),a
;src/main.c:1434: if(disparo.x<disparoDos.x+6 && disparo.x>disparoDos.x-6 && disparo.y<disparoDos.y+12 && disparo.y>disparoDos.y-10 && disparo.x!=0){
	ld	a,(#_disparo + 0)
	ld	-2 (ix),a
;src/main.c:1444: disparo.px=disparo.x+1;
;src/main.c:1443: if(prota.miraAtacando==M_derecha){
	ld	a,-4 (ix)
	or	a, a
	jr	NZ,00105$
;src/main.c:1444: disparo.px=disparo.x+1;
	ld	a,-2 (ix)
	inc	a
	ld	-4 (ix),a
	ld	hl,#(_disparo + 0x0002)
	ld	a,-4 (ix)
	ld	(hl),a
;src/main.c:1445: borrarDisparoHorizontal(&disparo);
	ld	hl,#_disparo
	push	hl
	call	_borrarDisparoHorizontal
	pop	af
;src/main.c:1446: disparo.px=disparo.x-4;
	ld	a, (#_disparo + 0)
	add	a,#0xFC
	ld	(#(_disparo + 0x0002)),a
;src/main.c:1447: borrarDisparoHorizontal(&disparo);
	ld	hl,#_disparo
	push	hl
	call	_borrarDisparoHorizontal
	pop	af
;src/main.c:1448: disparo.px=disparo.x-2;
	ld	a, (#_disparo + 0)
	add	a,#0xFE
	ld	(#(_disparo + 0x0002)),a
;src/main.c:1449: borrarDisparoHorizontal(&disparo);
	ld	hl,#_disparo
	push	hl
	call	_borrarDisparoHorizontal
	pop	af
;src/main.c:1450: disparo.px=disparo.x-6;
	ld	a, (#_disparo + 0)
	add	a,#0xFA
	ld	(#(_disparo + 0x0002)),a
;src/main.c:1451: borrarDisparoHorizontal(&disparo);
	ld	hl,#_disparo
	push	hl
	call	_borrarDisparoHorizontal
	pop	af
;src/main.c:1452: disparo.px=disparo.x;
	ld	a, (#_disparo + 0)
	ld	(#(_disparo + 0x0002)),a
	jr	00106$
00105$:
;src/main.c:1456: disparo.px=disparo.x;
	ld	hl,#(_disparo + 0x0002)
	ld	a,-2 (ix)
	ld	(hl),a
00106$:
;src/main.c:1458: if(protaDos.miraAtacando==M_derecha){
	ld	hl, #_protaDos + 24
	ld	c,(hl)
;src/main.c:1459: disparoDos.px=disparoDos.x+1;
	ld	de,#_disparoDos + 2
	ld	hl, #_disparoDos + 0
	ld	b,(hl)
;src/main.c:1458: if(protaDos.miraAtacando==M_derecha){
	ld	a,c
	or	a, a
	jr	NZ,00108$
;src/main.c:1459: disparoDos.px=disparoDos.x+1;
	ld	a,b
	inc	a
	ld	(de),a
	jr	00109$
00108$:
;src/main.c:1462: disparoDos.px=disparoDos.x;
	ld	a,b
	ld	(de),a
00109$:
;src/main.c:1464: disparo.py=disparo.y;
	ld	a, (#(_disparo + 0x0001) + 0)
	ld	(#(_disparo + 0x0003)),a
;src/main.c:1465: disparoDos.py=disparoDos.y;
	ld	a, (#(_disparoDos + 0x0001) + 0)
	ld	(#(_disparoDos + 0x0003)),a
;src/main.c:1467: borrarDisparoHorizontal(&disparoDos);
	ld	hl,#_disparoDos
	push	hl
	call	_borrarDisparoHorizontal
;src/main.c:1468: borrarDisparoHorizontal(&disparo);
	ld	hl, #_disparo
	ex	(sp),hl
	call	_borrarDisparoHorizontal
	pop	af
;src/main.c:1469: disparo.x=0;
	ld	hl,#_disparo
	ld	(hl),#0x00
;src/main.c:1470: disparoDos.x=0;
	ld	hl,#_disparoDos
	ld	(hl),#0x00
;src/main.c:1471: disparo.y=0;
	ld	hl,#(_disparo + 0x0001)
	ld	(hl),#0x00
;src/main.c:1472: disparoDos.y=0;
	ld	hl,#(_disparoDos + 0x0001)
	ld	(hl),#0x00
;src/main.c:1473: prota.disparando=NO;
	ld	hl,#(_prota + 0x0015)
	ld	(hl),#0x00
;src/main.c:1474: protaDos.disparando=NO;
	ld	hl,#(_protaDos + 0x0015)
	ld	(hl),#0x00
00116$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1479: void comprobarDisparo(u8 numX, u8 numY, u8 mirada, TProta * pro, Tdisparo * disp){
;	---------------------------------
; Function comprobarDisparo
; ---------------------------------
_comprobarDisparo::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;src/main.c:1481: comprobarLimites(pro, disp);
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	call	_comprobarLimites
	pop	af
	pop	af
;src/main.c:1482: if((mirada==M_derecha || mirada==M_izquierda) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY+4), 0) == 48){
	ld	a,7 (ix)
	ld	-4 (ix),a
	ld	a,8 (ix)
	ld	-3 (ix),a
;src/main.c:1483: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
	ld	a,9 (ix)
	ld	-8 (ix),a
	ld	a,10 (ix)
	ld	-7 (ix),a
;src/main.c:1482: if((mirada==M_derecha || mirada==M_izquierda) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY+4), 0) == 48){
	ld	a,-4 (ix)
	add	a, #0x15
	ld	c,a
	ld	a,-3 (ix)
	adc	a, #0x00
	ld	b,a
;src/main.c:1483: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
	ld	a,-8 (ix)
	add	a, #0x01
	ld	-2 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
;src/main.c:1484: cpct_drawSpriteMaskedAlignedTable(disp->sprite, pvmem, PRE_DISPARO_W, PRE_DISPARO_H, pre_tablatrans);
	ld	a,-8 (ix)
	add	a, #0x05
	ld	-6 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-5 (ix),a
;src/main.c:1482: if((mirada==M_derecha || mirada==M_izquierda) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY+4), 0) == 48){
	ld	a,6 (ix)
	or	a, a
	jr	Z,00121$
	ld	a,6 (ix)
	dec	a
	jr	NZ,00118$
00121$:
	ld	a,(bc)
	dec	a
	jr	NZ,00118$
	push	bc
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	de,#0x0000
	push	de
	push	hl
	call	_cpct_get6Bits
	pop	bc
	ld	a,l
	sub	a, #0x30
	jr	NZ,00118$
	ld	a,5 (ix)
	add	a, #0x04
	push	bc
	push	af
	inc	sp
	ld	a,4 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	de,#0x0000
	push	de
	push	hl
	call	_cpct_get6Bits
	pop	bc
	ld	a,l
	sub	a, #0x30
	jr	NZ,00118$
;src/main.c:1483: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	d,(hl)
	pop	hl
	push	hl
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:1484: cpct_drawSpriteMaskedAlignedTable(disp->sprite, pvmem, PRE_DISPARO_W, PRE_DISPARO_H, pre_tablatrans);
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#_pre_tablatrans
	push	hl
	ld	hl,#0x0502
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	jp	00124$
00118$:
;src/main.c:1486: else if((mirada==M_arriba || mirada==M_abajo) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX-1, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX+2, numY), 0) == 48){
	ld	a,6 (ix)
	sub	a, #0x03
	jr	Z,00114$
	ld	a,6 (ix)
	sub	a, #0x02
	jr	NZ,00111$
00114$:
	ld	a,(bc)
	dec	a
	jr	NZ,00111$
	ld	d,4 (ix)
	dec	d
	push	bc
	ld	a,5 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	de,#0x0000
	push	de
	push	hl
	call	_cpct_get6Bits
	pop	bc
	ld	a,l
	sub	a, #0x30
	jr	NZ,00111$
	ld	d,4 (ix)
	inc	d
	inc	d
	push	bc
	ld	a,5 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	de,#0x0000
	push	de
	push	hl
	call	_cpct_get6Bits
	pop	bc
	ld	a,l
	sub	a, #0x30
	jr	NZ,00111$
;src/main.c:1487: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	d,(hl)
	pop	hl
	push	hl
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:1488: cpct_drawSpriteMaskedAlignedTable(disp->sprite, pvmem, PRE_DISPARO_W, PRE_DISPARO_H, pre_tablatrans);
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#_pre_tablatrans
	push	hl
	ld	hl,#0x0502
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	jp	00124$
00111$:
;src/main.c:1492: pro->disparando=NO;
	xor	a, a
	ld	(bc),a
;src/main.c:1493: if(pro->soy==1){
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	de, #0x001B
	add	hl, de
	ld	e,(hl)
	ld	a,e
	dec	a
	jr	NZ,00104$
;src/main.c:1494: TProta * proOp=&protaDos;
;src/main.c:1495: borrarBloques(mirada, proOp, disp, pro);
	push	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	ld	hl,#_protaDos
	push	hl
	ld	a,6 (ix)
	push	af
	inc	sp
	call	_borrarBloques
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	pop	bc
	jr	00105$
00104$:
;src/main.c:1497: else if(pro->soy==2){
	ld	a,e
	sub	a, #0x02
	jr	NZ,00105$
;src/main.c:1498: TProta * proOp=&prota;
;src/main.c:1499: borrarBloques(mirada, proOp, disp, pro);
	push	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	ld	hl,#_prota
	push	hl
	ld	a,6 (ix)
	push	af
	inc	sp
	call	_borrarBloques
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	pop	bc
00105$:
;src/main.c:1502: if(reapareciendo==0 && pro->disparando==SI){
	ld	a,(#_reapareciendo + 0)
	or	a, a
	jr	NZ,00107$
	ld	a,(bc)
	dec	a
	jr	NZ,00107$
;src/main.c:1504: borrarDisparoHorizontal(disp);
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	call	_borrarDisparoHorizontal
	pop	af
	jr	00108$
00107$:
;src/main.c:1507: reapareciendo=0;
	ld	hl,#_reapareciendo + 0
	ld	(hl), #0x00
00108$:
;src/main.c:1510: disp->y = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/main.c:1511: disp->x = 0;
	pop	hl
	push	hl
	ld	(hl),#0x00
;src/main.c:1512: disp->py = 0;
	pop	bc
	push	bc
	inc	bc
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc),a
;src/main.c:1513: disp->px = 0;
	pop	bc
	push	bc
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc),a
00124$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1518: void dispararDerecha(TProta * pro, Tdisparo * disp){
;	---------------------------------
; Function dispararDerecha
; ---------------------------------
_dispararDerecha::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/main.c:1522: if(disp->x == 0 && disp->y == 0){
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	a,(bc)
	ld	-3 (ix),a
	ld	hl,#0x0001
	add	hl,bc
	ex	(sp), hl
;src/main.c:1526: disp->px = disp->x;
	ld	e, c
	ld	d, b
	inc	de
	inc	de
;src/main.c:1522: if(disp->x == 0 && disp->y == 0){
	ld	a,-3 (ix)
	or	a, a
	jr	NZ,00102$
	pop	hl
	push	hl
	ld	a,(hl)
	or	a, a
	jr	NZ,00102$
;src/main.c:1523: disp->x = pro->x + 6;
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a, 0 (iy)
	add	a, #0x06
	ld	-2 (ix), a
	ld	(bc),a
;src/main.c:1524: disp->y = pro->y + 7;
	push	iy
	pop	hl
	inc	hl
	ld	a,(hl)
	add	a, #0x07
	ld	-1 (ix),a
	pop	hl
	push	hl
	ld	a,-1 (ix)
	ld	(hl),a
;src/main.c:1525: disp->py = disp->y;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;src/main.c:1526: disp->px = disp->x;
	ld	a,-2 (ix)
	ld	(de),a
;src/main.c:1527: decrecerMunicion(pro->soy-1);
	push	iy
	pop	hl
	push	bc
	ld	bc, #0x001B
	add	hl, bc
	pop	bc
	ld	l,(hl)
	ld	h,l
	dec	h
	push	bc
	push	de
	push	hl
	inc	sp
	call	_decrecerMunicion
	inc	sp
	pop	de
	pop	bc
	jr	00103$
00102$:
;src/main.c:1530: disp->px=disp->x-2;
	ld	a,-3 (ix)
	add	a,#0xFE
	ld	(de),a
;src/main.c:1532: borrarDisparoHorizontal(disp);
	push	bc
	push	de
	push	bc
	call	_borrarDisparoHorizontal
	pop	af
	pop	de
	pop	bc
;src/main.c:1534: disp->px=disp->x;
	ld	a,(bc)
	ld	(de),a
00103$:
;src/main.c:1538: disp->px = disp->x-2;
	ld	a,(bc)
	add	a,#0xFE
	ld	(de),a
;src/main.c:1539: disp->x++;
	ld	a,(bc)
	inc	a
	ld	(bc),a
;src/main.c:1542: numX = disp->x+1;
	ld	e,a
	inc	e
;src/main.c:1543: numY = disp->y;
	pop	hl
	push	hl
	ld	d,(hl)
;src/main.c:1545: comprobarDisparo(numX, numY, mirada, pro, disp);
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_comprobarDisparo
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1548: void dispararIzquierda(TProta * pro, Tdisparo * disp){
;	---------------------------------
; Function dispararIzquierda
; ---------------------------------
_dispararIzquierda::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;src/main.c:1550: if(disp->x == 0 && disp->y == 0){
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	a,(bc)
	ld	e,a
	ld	hl,#0x0001
	add	hl,bc
	ld	-5 (ix),l
	ld	-4 (ix),h
;src/main.c:1554: disp->px = disp->x;
	ld	hl,#0x0002
	add	hl,bc
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/main.c:1550: if(disp->x == 0 && disp->y == 0){
	ld	a,e
	or	a, a
	jr	NZ,00102$
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	or	a, a
	jr	NZ,00102$
;src/main.c:1551: disp->x = pro->x-1;
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	a,(de)
	add	a,#0xFF
	ld	-3 (ix), a
	ld	(bc),a
;src/main.c:1552: disp->y = pro->y + 7;
	ld	l, e
	ld	h, d
	inc	hl
	ld	a,(hl)
	add	a, #0x07
	ld	-6 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
;src/main.c:1553: disp->py = disp->y;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a,-6 (ix)
	ld	(hl),a
;src/main.c:1554: disp->px = disp->x;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,-3 (ix)
	ld	(hl),a
;src/main.c:1555: decrecerMunicion(pro->soy-1);
	ex	de,hl
	ld	de, #0x001B
	add	hl, de
	ld	e,(hl)
	dec	e
	push	bc
	ld	a,e
	push	af
	inc	sp
	call	_decrecerMunicion
	inc	sp
	pop	bc
	jr	00103$
00102$:
;src/main.c:1558: borrarDisparoHorizontal(disp);
	push	bc
	push	bc
	call	_borrarDisparoHorizontal
	pop	af
	pop	bc
00103$:
;src/main.c:1561: disp->px = disp->x+1;
	ld	a,(bc)
	inc	a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
;src/main.c:1562: disp->x--;
	ld	a,(bc)
	ld	e,a
	dec	e
	ld	a,e
	ld	(bc),a
;src/main.c:1564: numX = disp->x -1;
	dec	e
;src/main.c:1565: numY = disp->y;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	d,(hl)
;src/main.c:1566: comprobarDisparo(numX, numY, mirada, pro, disp);
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	push	de
	call	_comprobarDisparo
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1570: void dispararAbajo(TProta * pro, Tdisparo * disp){
;	---------------------------------
; Function dispararAbajo
; ---------------------------------
_dispararAbajo::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/main.c:1572: pro->miraAtacando=M_abajo;
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	ld	-1 (ix),a
	ld	a,-2 (ix)
	add	a, #0x18
	ld	l,a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	h,a
	ld	(hl),#0x02
;src/main.c:1573: if(disp->x == 0 && disp->y == 0){
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	a,(bc)
	ld	l,a
	ld	e, c
	ld	d, b
	inc	de
	ld	a,l
	or	a, a
	jr	NZ,00102$
	ld	a,(de)
	or	a, a
	jr	NZ,00102$
;src/main.c:1574: disp->x = pro->x+2;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	add	a, #0x02
	ld	-3 (ix), a
	ld	(bc),a
;src/main.c:1575: disp->y = pro->y+14;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	ld	a,(hl)
	add	a, #0x0E
	ld	(de),a
;src/main.c:1576: disp->px = disp->x;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a,-3 (ix)
	ld	(hl),a
;src/main.c:1577: decrecerMunicion(pro->soy-1);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	bc
	ld	bc, #0x001B
	add	hl, bc
	pop	bc
	ld	l,(hl)
	ld	h,l
	dec	h
	push	bc
	push	de
	push	hl
	inc	sp
	call	_decrecerMunicion
	inc	sp
	pop	de
	pop	bc
	jr	00103$
00102$:
;src/main.c:1580: borrarDisparoVertical(disp);
	push	bc
	push	de
	push	bc
	call	_borrarDisparoVertical
	pop	af
	pop	de
	pop	bc
00103$:
;src/main.c:1583: disp->py = disp->y;
	push	bc
	pop	iy
	inc	iy
	inc	iy
	inc	iy
	ld	a,(de)
	ld	0 (iy), a
;src/main.c:1584: disp->y++;
	ld	a,(de)
	inc	a
	ld	(de),a
;src/main.c:1586: numX = disp->x;
	push	af
	ld	a,(bc)
	ld	e,a
	pop	af
;src/main.c:1587: numY = disp->y+5;
	add	a, #0x05
	ld	d,a
;src/main.c:1588: comprobarDisparo(numX, numY, mirada, pro, disp);
	push	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	push	de
	call	_comprobarDisparo
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1591: void dispararArriba(TProta * pro, Tdisparo * disp){//TENGO LO DE ANDREU DE PEGADO
;	---------------------------------
; Function dispararArriba
; ---------------------------------
_dispararArriba::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/main.c:1593: if(disp->x == 0 && disp->y == 0){
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	a,(bc)
	ld	l,a
	ld	e, c
	ld	d, b
	inc	de
;src/main.c:1597: disp->pegado=0;
	ld	a,c
	add	a, #0x07
	ld	-2 (ix),a
	ld	a,b
	adc	a, #0x00
	ld	-1 (ix),a
;src/main.c:1593: if(disp->x == 0 && disp->y == 0){
	ld	a,l
	or	a, a
	jr	NZ,00102$
	ld	a,(de)
	or	a, a
	jr	NZ,00102$
;src/main.c:1594: disp->x = pro->x+2;
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a, 0 (iy)
	add	a, #0x02
	ld	-3 (ix), a
	ld	(bc),a
;src/main.c:1595: disp->y = pro->y-4;
	push	iy
	pop	hl
	inc	hl
	ld	a,(hl)
	add	a,#0xFC
	ld	(de),a
;src/main.c:1596: disp->px = disp->x;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a,-3 (ix)
	ld	(hl),a
;src/main.c:1597: disp->pegado=0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/main.c:1598: decrecerMunicion(pro->soy-1);
	ld	h,27 (iy)
	dec	h
	push	bc
	push	de
	push	hl
	inc	sp
	call	_decrecerMunicion
	inc	sp
	pop	de
	pop	bc
	jr	00103$
00102$:
;src/main.c:1601: disp->pegado=1;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x01
;src/main.c:1602: borrarDisparoVertical(disp);
	push	bc
	push	de
	push	bc
	call	_borrarDisparoVertical
	pop	af
	pop	de
	pop	bc
00103$:
;src/main.c:1605: disp->py = disp->y;
	push	bc
	pop	iy
	inc	iy
	inc	iy
	inc	iy
	ld	a,(de)
	ld	0 (iy), a
;src/main.c:1606: disp->y--;
	ld	a,(de)
	add	a,#0xFF
	ld	(de),a
;src/main.c:1608: if(disp->pegado==0){
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
;src/main.c:1605: disp->py = disp->y;
	push	af
	ld	a,(de)
	ld	e,a
	pop	af
;src/main.c:1608: if(disp->pegado==0){
	or	a, a
	jr	NZ,00106$
;src/main.c:1609: numY = disp->y-1;
	dec	e
;src/main.c:1612: numY = disp->y;
00106$:
;src/main.c:1614: numX = disp->x;
	ld	a,(bc)
	ld	d,a
;src/main.c:1615: comprobarDisparo(numX, numY, mirada, pro, disp);
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_comprobarDisparo
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1617: void atacar(u8 soy){
;	---------------------------------
; Function atacar
; ---------------------------------
_atacar::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/main.c:1618: TProta * pro=&prota;
	ld	bc,#_prota+0
;src/main.c:1619: Tdisparo * disp=&disparo;
	ld	-5 (ix),#<(_disparo)
	ld	-4 (ix),#>(_disparo)
;src/main.c:1620: switch(soy){
	ld	a,4 (ix)
	dec	a
	jr	Z,00103$
	ld	a,4 (ix)
	sub	a, #0x02
	jr	NZ,00103$
;src/main.c:1625: pro=&protaDos;
	ld	bc,#_protaDos
;src/main.c:1626: disp=&disparoDos;
	ld	-5 (ix),#<(_disparoDos)
	ld	-4 (ix),#>(_disparoDos)
;src/main.c:1628: }
00103$:
;src/main.c:1630: switch(pro->miraAtacando){
	push	bc
	pop	iy
	ld	a,24 (iy)
	ld	-1 (ix),a
	ld	a,#0x03
	sub	a, -1 (ix)
	jp	C,00130$
;src/main.c:1633: pro->disparando = NO;
	ld	hl,#0x0015
	add	hl,bc
	ex	de,hl
;src/main.c:1643: if(pro->x<6 && pro->y<35){
	ld	hl,#0x0001
	add	hl,bc
	ld	-3 (ix),l
	ld	-2 (ix),h
;src/main.c:1630: switch(pro->miraAtacando){
	push	de
	ld	e,-1 (ix)
	ld	d,#0x00
	ld	hl,#00183$
	add	hl,de
	add	hl,de
	add	hl,de
	pop	de
	jp	(hl)
00183$:
	jp	00104$
	jp	00110$
	jp	00121$
	jp	00126$
;src/main.c:1631: case M_derecha: 
00104$:
;src/main.c:1632: if(pro->x+5 > 11*6+6){
	ld	a,(bc)
	ld	l,a
	ld	h,#0x00
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a,#0x48
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00184$
	xor	a, #0x80
00184$:
	jp	P,00108$
;src/main.c:1633: pro->disparando = NO;
	xor	a, a
	ld	(de),a
	jr	00130$
00108$:
;src/main.c:1635: if(pro->disparando==SI)
	ld	a,(de)
	dec	a
	jr	NZ,00130$
;src/main.c:1636: dispararDerecha(pro, disp);
	pop	hl
	push	hl
	push	hl
	push	bc
	call	_dispararDerecha
	pop	af
	pop	af
;src/main.c:1638: break;
	jr	00130$
;src/main.c:1639: case M_izquierda:
00110$:
;src/main.c:1640: if(pro->x < 1){
	ld	a,(bc)
	ld	l,a
	sub	a, #0x01
	jr	NC,00119$
;src/main.c:1641: pro->disparando = NO;
	xor	a, a
	ld	(de),a
	jr	00130$
00119$:
;src/main.c:1643: if(pro->x<6 && pro->y<35){
	ld	a,l
	sub	a, #0x06
	jr	NC,00115$
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a, (hl)
	sub	a, #0x23
	jr	NC,00115$
;src/main.c:1644: pro->disparando=NO;
	xor	a, a
	ld	(de),a
	jr	00130$
00115$:
;src/main.c:1647: else if(pro->disparando==SI){
	ld	a,(de)
	dec	a
	jr	NZ,00112$
;src/main.c:1648: dispararIzquierda(pro, disp);
	pop	hl
	push	hl
	push	hl
	push	bc
	call	_dispararIzquierda
	pop	af
	pop	af
	jr	00130$
00112$:
;src/main.c:1652: pro->disparando=NO;
	xor	a, a
	ld	(de),a
;src/main.c:1655: break;
	jr	00130$
;src/main.c:1656: case M_abajo:
00121$:
;src/main.c:1657: if(pro->y > 15*11+15){
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	l,(hl)
	ld	a,#0xB4
	sub	a, l
	jr	NC,00123$
;src/main.c:1658: pro->disparando = NO;
	xor	a, a
	ld	(de),a
00123$:
;src/main.c:1660: if(pro->disparando==SI)
	ld	a,(de)
	dec	a
	jr	NZ,00130$
;src/main.c:1661: dispararAbajo(pro, disp);
	pop	hl
	push	hl
	push	hl
	push	bc
	call	_dispararAbajo
	pop	af
	pop	af
;src/main.c:1662: break;
	jr	00130$
;src/main.c:1663: case M_arriba:
00126$:
;src/main.c:1664: if(pro->disparando==SI)
	ld	a,(de)
	dec	a
	jr	NZ,00130$
;src/main.c:1665: dispararArriba(pro, disp);
	pop	hl
	push	hl
	push	hl
	push	bc
	call	_dispararArriba
	pop	af
	pop	af
;src/main.c:1667: }
00130$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1670: void borrarDisparoHorizontal(Tdisparo * disp){
;	---------------------------------
; Function borrarDisparoHorizontal
; ---------------------------------
_borrarDisparoHorizontal::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:1672: cpct_etm_drawTileBox2x4 ((disp->px) / 2, (disp->py) / 4, 1, 2, pre_terrain_W, ORIGEN_MAPA, mapa);  
	ld	bc,(_mapa)
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	pop	iy
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	ld	e,(hl)
	srl	e
	srl	e
	push	iy
	pop	hl
	inc	hl
	inc	hl
	ld	d, (hl)
	srl	d
	push	bc
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2702
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cpct_etm_drawTileBox2x4
	pop	ix
	ret
;src/main.c:1676: void borrarDisparoVertical(Tdisparo * disp){
;	---------------------------------
; Function borrarDisparoVertical
; ---------------------------------
_borrarDisparoVertical::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/main.c:1677: cpct_etm_drawTileBox2x4 ((disp->px-1) / 2, (disp->py) / 4, 2, 2, pre_terrain_W, ORIGEN_MAPA, mapa);
	ld	hl,(_mapa)
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	rrca
	rrca
	and	a,#0x3F
	ld	-3 (ix),a
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	c,(hl)
	ld	b,#0x00
	ld	l,c
	ld	h,b
	dec	hl
	ld	e, l
	ld	d, h
	bit	7, h
	jr	Z,00103$
	ld	e, c
	ld	d, b
00103$:
	sra	d
	rr	e
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2702
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	ld	d, -3 (ix)
	push	de
	call	_cpct_etm_drawTileBox2x4
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1680: void comprobacionesBloques(u8 c, u8 f){
;	---------------------------------
; Function comprobacionesBloques
; ---------------------------------
_comprobacionesBloques::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/main.c:1681: if((f == 1 && c== 2) || (matriz[f][c] == 2)  || (f == 9 && c== 10) || (f == 0 && c== 0) || (f == 10 && c== 12) || (f == 9 && c== 12) || (f == 1 && c== 0)){
	ld	a,5 (ix)
	dec	a
	jr	NZ,00156$
	ld	a,#0x01
	jr	00157$
00156$:
	xor	a,a
00157$:
	ld	c,a
	or	a, a
	jr	Z,00105$
	ld	a,4 (ix)
	sub	a, #0x02
	jp	Z,00116$
00105$:
	ld	e,5 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de,#_matriz
	add	hl,de
	ld	a,4 (ix)
	ld	-1 (ix), a
	ld	e, a
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	sub	a, #0x02
	jp	Z,00116$
	ld	a,5 (ix)
	sub	a, #0x09
	jr	NZ,00160$
	ld	a,#0x01
	jr	00161$
00160$:
	xor	a,a
00161$:
	ld	e,a
	or	a, a
	jr	Z,00109$
	ld	a,-1 (ix)
	sub	a, #0x0A
	jp	Z,00116$
00109$:
	ld	a,5 (ix)
	or	a, a
	jr	NZ,00111$
	ld	a,-1 (ix)
	or	a, a
	jp	Z,00116$
00111$:
	ld	a,-1 (ix)
	sub	a, #0x0C
	jr	NZ,00163$
	ld	a,#0x01
	jr	00164$
00163$:
	xor	a,a
00164$:
	ld	b,a
	ld	a,5 (ix)
	sub	a,#0x0A
	jr	NZ,00113$
	or	a,b
	jr	NZ,00116$
00113$:
	ld	a,e
	or	a, a
	jr	Z,00115$
	ld	a,b
	or	a, a
	jr	NZ,00116$
00115$:
	ld	a,c
	or	a, a
	jr	Z,00102$
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00116$
00102$:
;src/main.c:1686: cpct_etm_drawTileBox2x4 (((c*6)/2), (24+(f*16))/4, 3.5, 4, pre_terrain_W, ORIGEN_MAPA, mapa);  
	ld	hl,(_mapa)
	ex	(sp), hl
	ld	l,5 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl,#0x0018
	add	hl,bc
	ld	e, l
	ld	d, h
	bit	7, h
	jr	Z,00118$
	ld	hl,#0x001B
	add	hl,bc
	ex	de,hl
00118$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	b,e
	ld	e,-1 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	e,l
	ld	c,h
	bit	7, h
	jr	Z,00119$
	inc	hl
	ld	e,l
	ld	c,h
00119$:
	ld	d, c
	sra	d
	rr	e
	ld	d,e
	pop	hl
	push	hl
	push	hl
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2704
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	ld	c, d
	push	bc
	call	_cpct_etm_drawTileBox2x4
00116$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1690: void comprobacionesBloquesH(u8 c, u8 f, u8 f2, u8 mirar, Tdisparo * disp){
;	---------------------------------
; Function comprobacionesBloquesH
; ---------------------------------
_comprobacionesBloquesH::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;src/main.c:1691: if((f == 1 && c== 0) || (f == 9 && c== 12) || (f == 1 && c== 2)  || (f == 9 && c== 10)){
	ld	a,5 (ix)
	dec	a
	jr	NZ,00217$
	ld	a,#0x01
	jr	00218$
00217$:
	xor	a,a
00218$:
	ld	c,a
	or	a, a
	jr	Z,00136$
	ld	a,4 (ix)
	or	a, a
	jp	Z,00141$
00136$:
	ld	a,5 (ix)
	sub	a, #0x09
	jr	NZ,00219$
	ld	a,#0x01
	jr	00220$
00219$:
	xor	a,a
00220$:
	ld	b,a
	ld	a,4 (ix)
	sub	a, #0x0C
	jr	NZ,00221$
	ld	a,#0x01
	jr	00222$
00221$:
	xor	a,a
00222$:
	ld	l,a
	ld	a,b
	or	a, a
	jr	Z,00138$
	ld	a,l
	or	a, a
	jp	NZ,00141$
00138$:
	ld	a,c
	or	a, a
	jr	Z,00140$
	ld	a,4 (ix)
	sub	a, #0x02
	jp	Z,00141$
00140$:
	ld	a,b
	or	a, a
	jr	Z,00132$
	ld	a,4 (ix)
	sub	a, #0x0A
	jp	Z,00141$
00132$:
;src/main.c:1695: if(mirar==M_izquierda){
	ld	a,7 (ix)
	dec	a
	jr	NZ,00225$
	ld	a,#0x01
	jr	00226$
00225$:
	xor	a,a
00226$:
	ld	-8 (ix),a
;src/main.c:1696: disp->px=disp->x;
	ld	e,8 (ix)
	ld	d,9 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
;src/main.c:1694: else if((f == 10 && c== 12) || (f == 0 && c== 0)){
	ld	a,5 (ix)
	sub	a,#0x0A
	jr	NZ,00130$
	or	a,l
	jr	NZ,00125$
00130$:
	ld	a,5 (ix)
	or	a, a
	jr	NZ,00126$
	ld	a,4 (ix)
	or	a, a
	jr	NZ,00126$
00125$:
;src/main.c:1695: if(mirar==M_izquierda){
	ld	a,-8 (ix)
	or	a, a
	jr	Z,00104$
;src/main.c:1696: disp->px=disp->x;
	ld	a,(de)
	ld	(bc),a
	jr	00105$
00104$:
;src/main.c:1698: else if(mirar==M_derecha){
	ld	a,7 (ix)
	or	a, a
	jr	NZ,00105$
;src/main.c:1699: disp->px=disp->x;
	ld	a,(de)
	ld	(bc),a
00105$:
;src/main.c:1701: borrarDisparoHorizontal(disp);
	push	bc
	push	de
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	call	_borrarDisparoHorizontal
	pop	af
	pop	de
	pop	bc
;src/main.c:1703: if(mirar==M_izquierda){
	ld	a,-8 (ix)
	or	a, a
	jr	Z,00109$
;src/main.c:1704: disp->px=disp->x+1;
	ld	a,(de)
	inc	a
	ld	(bc),a
	jp	00141$
00109$:
;src/main.c:1706: else if(mirar==M_derecha){
	ld	a,7 (ix)
	or	a, a
	jp	NZ,00141$
;src/main.c:1707: disp->px=disp->x-2;
	ld	a,(de)
	add	a,#0xFE
	ld	(bc),a
	jp	00141$
00126$:
;src/main.c:1710: else if(matriz[f2][c]==2 || (matriz[f][c] == 2)){
	push	de
	ld	e,6 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	a,#<(_matriz)
	add	a, l
	ld	l,a
	ld	a,#>(_matriz)
	adc	a, h
	ld	h,a
	ld	a,4 (ix)
	ld	-7 (ix), a
	add	a, l
	ld	l,a
	ld	a,#0x00
	adc	a, h
	ld	h,a
	ld	a,(hl)
	sub	a, #0x02
	jp	Z,00141$
	push	de
	ld	e,5 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	a,#<(_matriz)
	add	a, l
	ld	l,a
	ld	a,#>(_matriz)
	adc	a, h
	ld	h,a
	ld	a,-7 (ix)
	add	a, l
	ld	l,a
	ld	a,#0x00
	adc	a, h
	ld	h,a
	ld	a,(hl)
	sub	a, #0x02
	jp	Z,00141$
;src/main.c:1715: cpct_etm_drawTileBox2x4 (((c*6)/2), (24+(f*16))/4, 3.5, 4, pre_terrain_W, ORIGEN_MAPA, mapa);
	ld	hl,(_mapa)
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	l,5 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	a,-2 (ix)
	add	a, #0x18
	ld	-4 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	bit	7, -3 (ix)
	jr	Z,00143$
	ld	a,-2 (ix)
	add	a, #0x1B
	ld	l,a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	h,a
00143$:
	sra	h
	rr	l
	sra	h
	rr	l
	ld	-4 (ix),l
	push	de
	ld	e,-7 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	ld	-2 (ix),l
	ld	-1 (ix),h
	bit	7, h
	jr	Z,00144$
	inc	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
00144$:
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	sra	h
	rr	l
	ld	-2 (ix),l
	push	bc
	push	de
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2704
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	ld	h,-4 (ix)
	ld	l,-2 (ix)
	push	hl
	call	_cpct_etm_drawTileBox2x4
	pop	de
	pop	bc
;src/main.c:1716: if(mirar==M_izquierda){
	ld	a,-8 (ix)
	or	a, a
	jr	Z,00114$
;src/main.c:1717: disp->px=disp->x;
	ld	a,(de)
	ld	(bc),a
	jr	00115$
00114$:
;src/main.c:1719: else if(mirar==M_derecha){
	ld	a,7 (ix)
	or	a, a
	jr	NZ,00115$
;src/main.c:1720: disp->px=disp->x;
	ld	a,(de)
	ld	(bc),a
00115$:
;src/main.c:1722: borrarDisparoHorizontal(disp);
	push	bc
	push	de
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	call	_borrarDisparoHorizontal
	pop	af
	pop	de
	pop	bc
;src/main.c:1724: if(mirar==M_izquierda){
	ld	a,-8 (ix)
	or	a, a
	jr	Z,00119$
;src/main.c:1725: disp->px=disp->x+1;
	ld	a,(de)
	inc	a
	ld	(bc),a
	jr	00141$
00119$:
;src/main.c:1727: else if(mirar==M_derecha){
	ld	a,7 (ix)
	or	a, a
	jr	NZ,00141$
;src/main.c:1728: disp->px=disp->x-2;
	ld	a,(de)
	add	a,#0xFE
	ld	(bc),a
00141$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1736: void compruebaPersonaje(u8 disx, u8 disy, u8 prox, u8 proy, TProta * pro, Tdisparo * disp){
;	---------------------------------
; Function compruebaPersonaje
; ---------------------------------
_compruebaPersonaje::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:1737: if(disx>prox-2 && disx<prox+7 && disy>proy-2 && disy<proy+15){
	ld	a,6 (ix)
	ld	-4 (ix),a
	ld	-3 (ix),#0x00
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	dec	bc
	dec	bc
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	-1 (ix),#0x00
	ld	a,c
	sub	a, -2 (ix)
	ld	a,b
	sbc	a, -1 (ix)
	jp	PO, 00136$
	xor	a, #0x80
00136$:
	jp	P,00110$
	ld	a,-4 (ix)
	add	a, #0x07
	ld	c,a
	ld	a,-3 (ix)
	adc	a, #0x00
	ld	b,a
	ld	a,-2 (ix)
	sub	a, c
	ld	a,-1 (ix)
	sbc	a, b
	jp	PO, 00137$
	xor	a, #0x80
00137$:
	jp	P,00110$
	ld	e,7 (ix)
	ld	d,#0x00
	ld	l,e
	ld	h,d
	dec	hl
	dec	hl
	ld	c,5 (ix)
	ld	b,#0x00
	ld	a,l
	sub	a, c
	ld	a,h
	sbc	a, b
	jp	PO, 00138$
	xor	a, #0x80
00138$:
	jp	P,00110$
	ld	hl,#0x000F
	add	hl,de
	ld	a,c
	sub	a, l
	ld	a,b
	sbc	a, h
	jp	PO, 00139$
	xor	a, #0x80
00139$:
	jp	P,00110$
;src/main.c:1738: sumaMarcador(pro->soy, ++pro->marcador);
	ld	c,8 (ix)
	ld	b,9 (ix)
	ld	hl,#0x001C
	add	hl,bc
	ld	d,(hl)
	inc	d
	ld	(hl),d
	push	bc
	pop	iy
	ld	a,27 (iy)
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	call	_sumaMarcador
	pop	af
	pop	bc
;src/main.c:1739: if(pro->identidad == 0)lastWinner = 1;
	inc	bc
	inc	bc
	ld	h,b
	ld	l, c
	ld	c,(hl)
	ld	a,c
	or	a, a
	jr	NZ,00102$
	ld	hl,#_lastWinner + 0
	ld	(hl), #0x01
00102$:
;src/main.c:1740: if(pro->identidad == 1)lastWinner = 2;
	dec	c
	jr	NZ,00104$
	ld	hl,#_lastWinner + 0
	ld	(hl), #0x02
00104$:
;src/main.c:1741: ronda++;
	ld	hl, #_ronda+0
	inc	(hl)
;src/main.c:1742: borrarDisparoHorizontal(disp);
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	call	_borrarDisparoHorizontal
	pop	af
;src/main.c:1743: reaparecer();
	call	_reaparecer
00110$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1747: void borrarBloques(u8 mirar, TProta * proOpuesto, Tdisparo * disp, TProta * pro){
;	---------------------------------
; Function borrarBloques
; ---------------------------------
_borrarBloques::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-21
	add	hl,sp
	ld	sp,hl
;src/main.c:1750: u8 c = (disp->x+2)/6;
	ld	a,7 (ix)
	ld	-13 (ix),a
	ld	a,8 (ix)
	ld	-12 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a,(hl)
	ld	-5 (ix), a
	ld	-7 (ix),a
	ld	-6 (ix),#0x00
	ld	c,-7 (ix)
	ld	b,-6 (ix)
	inc	bc
	inc	bc
	ld	hl,#0x0006
	push	hl
	push	bc
	call	__divsint
	pop	af
	pop	af
	ld	-16 (ix),l
;src/main.c:1751: u8 f = (disp->y-24)/16;
	ld	a,-13 (ix)
	add	a, #0x01
	ld	-20 (ix),a
	ld	a,-12 (ix)
	adc	a, #0x00
	ld	-19 (ix),a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	c,(hl)
	ld	-2 (ix),c
	ld	-1 (ix),#0x00
	ld	a,-2 (ix)
	add	a,#0xE8
	ld	-18 (ix),a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	-17 (ix),a
	ld	c,-18 (ix)
	ld	b,-17 (ix)
	ld	a,-17 (ix)
	rlca
	and	a,#0x01
	ld	-8 (ix),a
	ld	a,-2 (ix)
	add	a, #0xF7
	ld	-15 (ix),a
	ld	a,-1 (ix)
	adc	a, #0xFF
	ld	-14 (ix),a
	ld	a,-8 (ix)
	or	a, a
	jr	Z,00108$
	ld	c,-15 (ix)
	ld	b,-14 (ix)
00108$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	-11 (ix),c
;src/main.c:1752: u8 f2 = (disp->y-24+4)/16;
	ld	a,-2 (ix)
	add	a, #0xEC
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0xFF
	ld	d, a
	ld	b, d
	bit	7, d
	jr	Z,00109$
	ld	a,-2 (ix)
	add	a, #0xFB
	ld	c,a
	ld	a,-1 (ix)
	adc	a, #0xFF
	ld	b,a
00109$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	-21 (ix),c
;src/main.c:1753: switch(mirar){
	ld	a,#0x03
	sub	a, 4 (ix)
	jp	C,00106$
;src/main.c:1757: compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
	ld	a,5 (ix)
	ld	-4 (ix),a
	ld	a,6 (ix)
	ld	-3 (ix),a
;src/main.c:1768: c = (disp->x)/6;
	ld	a,#0x06
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
;src/main.c:1757: compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
	call	__divuchar
	pop	af
	ld	-5 (ix),l
	ld	a,-4 (ix)
	add	a, #0x01
	ld	-10 (ix),a
	ld	a,-3 (ix)
	adc	a, #0x00
	ld	-9 (ix),a
;src/main.c:1753: switch(mirar){
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00137$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00137$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
;src/main.c:1754: case M_derecha: 
00101$:
;src/main.c:1756: comprobacionesBloquesH(c, f, f2, mirar, disp);
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	h,4 (ix)
	ld	l,-21 (ix)
	push	hl
	ld	h,-11 (ix)
	ld	l,-16 (ix)
	push	hl
	call	_comprobacionesBloquesH
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1757: compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	d,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,(hl)
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	c,(hl)
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	b, (hl)
	inc	b
	inc	b
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_compruebaPersonaje
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;src/main.c:1758: break;
	jp	00106$
;src/main.c:1759: case M_izquierda:
00102$:
;src/main.c:1761: c = (disp->x-4)/6;
	ld	a,-7 (ix)
	add	a,#0xFC
	ld	c,a
	ld	a,-6 (ix)
	adc	a,#0xFF
	ld	b,a
	ld	hl,#0x0006
	push	hl
	push	bc
	call	__divsint
	pop	af
	pop	af
	ld	-11 (ix),l
;src/main.c:1762: f = (disp->y-24)/16;
	ld	a,-18 (ix)
	ld	-7 (ix),a
	ld	a,-17 (ix)
	ld	-6 (ix),a
	ld	a,-8 (ix)
	or	a, a
	jr	Z,00110$
	ld	a,-15 (ix)
	ld	-7 (ix),a
	ld	a,-14 (ix)
	ld	-6 (ix),a
00110$:
	ld	b,-7 (ix)
	ld	c,-6 (ix)
	sra	c
	rr	b
	sra	c
	rr	b
	sra	c
	rr	b
	sra	c
	rr	b
;src/main.c:1763: comprobacionesBloquesH(c, f, f2, mirar, disp);
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	h,4 (ix)
	ld	l,-21 (ix)
	push	hl
	push	bc
	inc	sp
	ld	a,-11 (ix)
	push	af
	inc	sp
	call	_comprobacionesBloquesH
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:1764: compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	d,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,(hl)
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	c,(hl)
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	b, (hl)
	inc	b
	inc	b
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_compruebaPersonaje
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;src/main.c:1765: break;
	jp	00106$
;src/main.c:1767: case M_abajo:
00103$:
;src/main.c:1768: c = (disp->x)/6;
	ld	c,-5 (ix)
;src/main.c:1769: f = (disp->y-12)/16;
	ld	a,-2 (ix)
	add	a,#0xF4
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0xFF
	ld	l, a
	ld	d, l
	bit	7, l
	jr	Z,00111$
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	inc	de
	inc	de
	inc	de
00111$:
	ld	b,e
	sra	d
	rr	b
	sra	d
	rr	b
	sra	d
	rr	b
	sra	d
	rr	b
;src/main.c:1770: comprobacionesBloques(c, f);
	push	bc
	call	_comprobacionesBloques
	pop	af
;src/main.c:1771: compruebaPersonaje(disp->x, disp->y+4, proOpuesto->x, proOpuesto->y, pro, disp);
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	d,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,(hl)
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	c,(hl)
	inc	c
	inc	c
	inc	c
	inc	c
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	b,(hl)
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_compruebaPersonaje
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;src/main.c:1772: break;
	jr	00106$
;src/main.c:1774: case M_arriba:
00104$:
;src/main.c:1775: c = (disp->x)/6;
	ld	d,-5 (ix)
;src/main.c:1776: f = (disp->y-24)/16;
	ld	b,-18 (ix)
	ld	e,-17 (ix)
	ld	a,-8 (ix)
	or	a, a
	jr	Z,00112$
	ld	b,-15 (ix)
	ld	e,-14 (ix)
00112$:
	sra	e
	rr	b
	sra	e
	rr	b
	sra	e
	rr	b
	sra	e
	rr	b
;src/main.c:1777: comprobacionesBloques(c, f);
	ld	c, d
	push	bc
	call	_comprobacionesBloques
	pop	af
;src/main.c:1778: compruebaPersonaje(disp->x, disp->y-4, proOpuesto->x, proOpuesto->y, pro, disp);
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	d,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,(hl)
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	a,(hl)
	add	a,#0xFC
	ld	c,a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	b,(hl)
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_compruebaPersonaje
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;src/main.c:1780: }
00106$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1784: void comprobarTeclado() {
;	---------------------------------
; Function comprobarTeclado
; ---------------------------------
_comprobarTeclado::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/main.c:1793: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/main.c:1798: if(estado == 3){
	ld	a,(#_estado + 0)
	sub	a, #0x03
	jr	NZ,00110$
;src/main.c:1806: timer = 0;  
	ld	de,#0x0000
;src/main.c:1808: while(timer2<7){
	ld	c,#0x00
00106$:
;src/main.c:1809: while(timer<30000){
	ld	a,c
	cp	a,#0x07
	jr	NC,00108$
	sub	a, #0x03
	jr	NZ,00407$
	ld	a,#0x01
	jr	00408$
00407$:
	xor	a,a
00408$:
	ld	b,a
00103$:
	ld	a,e
	sub	a, #0x30
	ld	a,d
	sbc	a, #0x75
	jr	NC,00105$
;src/main.c:1810: timer++;
	inc	de
;src/main.c:1811: if(timer2 == 3){musica = 1;seleccionMusica = 1;}
	ld	a,b
	or	a, a
	jr	Z,00103$
	ld	hl,#_musica + 0
	ld	(hl), #0x01
	ld	hl,#_seleccionMusica + 0
	ld	(hl), #0x01
	jr	00103$
00105$:
;src/main.c:1813: timer2++;
	inc	c
;src/main.c:1814: timer = 0;
	ld	de,#0x0000
	jr	00106$
00108$:
;src/main.c:1818: estado = 0;
	ld	hl,#_estado + 0
	ld	(hl), #0x00
;src/main.c:1819: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:1820: dibujarPantallaPrincipal();
	call	_dibujarPantallaPrincipal
;src/main.c:1821: mostrarMenu();
	call	_mostrarMenu
;src/main.c:1822: refrescarMenu();
	call	_refrescarMenu
00110$:
;src/main.c:1828: if(cpct_isAnyKeyPressed()){
	call	_cpct_isAnyKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00198$
;src/main.c:1831: if(estado == 5 || estado == 6){
	ld	a,(#_estado + 0)
	cp	a,#0x05
	jr	Z,00111$
	sub	a, #0x06
	jr	NZ,00112$
00111$:
;src/main.c:1833: estado = 1; //con presionar una tecla vuelve al juego,
	ld	hl,#_estado + 0
	ld	(hl), #0x01
;src/main.c:1834: inicializarPartida();
	call	_inicializarPartida
00112$:
;src/main.c:1857: if(estado == 0 && keyCounter > 9){
	ld	a,(#_estado + 0)
	or	a, a
	jp	NZ,00134$
	ld	a,#0x09
	ld	iy,#_keyCounter
	sub	a, 0 (iy)
	jp	NC,00134$
;src/main.c:1859: if(cpct_isKeyPressed(Key_CursorUp) && seleccion >0){
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00130$
	ld	a,(#_seleccion + 0)
	or	a, a
	jr	Z,00130$
;src/main.c:1860: seleccion--;
	ld	hl, #_seleccion+0
	dec	(hl)
;src/main.c:1861: refrescarMenu();
	call	_refrescarMenu
	jp	00131$
00130$:
;src/main.c:1863: else if(cpct_isKeyPressed(Key_CursorDown) && seleccion <3){
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00126$
	ld	a,(#_seleccion + 0)
	sub	a, #0x03
	jr	NC,00126$
;src/main.c:1864: seleccion++;
	ld	hl, #_seleccion+0
	inc	(hl)
;src/main.c:1865: refrescarMenu();
	call	_refrescarMenu
	jp	00131$
00126$:
;src/main.c:1867: else if(cpct_isKeyPressed(Key_Enter) || cpct_isKeyPressed(Key_Return))
	ld	hl,#0x4000
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	NZ,00122$
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00131$
00122$:
;src/main.c:1868: switch(seleccion){
	ld	a,#0x03
	ld	iy,#_seleccion
	sub	a, 0 (iy)
	jr	C,00131$
	ld	iy,#_seleccion
	ld	e,0 (iy)
	ld	d,#0x00
	ld	hl,#00412$
	add	hl,de
	add	hl,de
;src/main.c:1870: case 0: cpct_clearScreen(0); inicializarPartida(); break; // Inicia el estado del juego
	jp	(hl)
00412$:
	jr	00114$
	jr	00115$
	jr	00119$
	jr	00120$
00114$:
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
	call	_inicializarPartida
	jr	00131$
;src/main.c:1871: case 1: if(seleccionMusica){ musica = 0; seleccionMusica = 0; cpct_akp_stop(); cpct_akp_musicInit(pre_music_presentation); refrescarMenu();} else {seleccionMusica = 1; musica = 1; refrescarMenu();}break; //Activa y desactiva la musica
00115$:
	ld	a,(#_seleccionMusica + 0)
	or	a, a
	jr	Z,00117$
	ld	hl,#_musica + 0
	ld	(hl), #0x00
	ld	hl,#_seleccionMusica + 0
	ld	(hl), #0x00
	call	_cpct_akp_stop
	ld	hl,#_pre_music_presentation
	push	hl
	call	_cpct_akp_musicInit
	pop	af
	call	_refrescarMenu
	jr	00131$
00117$:
	ld	hl,#_seleccionMusica + 0
	ld	(hl), #0x01
	ld	hl,#_musica + 0
	ld	(hl), #0x01
	call	_refrescarMenu
	jr	00131$
;src/main.c:1872: case 2: estado = 4; dibujarConfiguracionControles(0);break;
00119$:
	ld	hl,#_estado + 0
	ld	(hl), #0x04
	xor	a, a
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
	jr	00131$
;src/main.c:1873: case 3: estado = 2; dibujarCreditos(); break;
00120$:
	ld	hl,#_estado + 0
	ld	(hl), #0x02
	call	_dibujarCreditos
;src/main.c:1874: }      
00131$:
;src/main.c:1877: keyCounter = 0;
	ld	hl,#_keyCounter + 0
	ld	(hl), #0x00
00134$:
;src/main.c:1881: if(estado == 2){
	ld	a,(#_estado + 0)
	sub	a, #0x02
	jr	NZ,00139$
;src/main.c:1882: if(cpct_isKeyPressed(Key_Esc)){
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00139$
;src/main.c:1884: estado = 0;
	ld	hl,#_estado + 0
	ld	(hl), #0x00
;src/main.c:1885: dibujarPantallaPrincipal();
	call	_dibujarPantallaPrincipal
;src/main.c:1886: mostrarMenu();
	call	_mostrarMenu
;src/main.c:1887: refrescarMenu();
	call	_refrescarMenu
00139$:
;src/main.c:1893: if(estado == 4){
	ld	a,(#_estado + 0)
	sub	a, #0x04
	jp	NZ,00198$
;src/main.c:1895: if(cpct_isKeyPressed(Key_CursorDown) && seleccionControles == 0){
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00144$
	ld	a,(#_seleccionControles + 0)
	or	a, a
	jr	NZ,00144$
;src/main.c:1896: seleccionControles = 1;
	ld	hl,#_seleccionControles + 0
	ld	(hl), #0x01
;src/main.c:1897: dibujarConfiguracionControles(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
	jr	00145$
00144$:
;src/main.c:1899: else if(cpct_isKeyPressed(Key_CursorUp) && seleccionControles == 1){
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00145$
	ld	a,(#_seleccionControles + 0)
	dec	a
	jr	NZ,00145$
;src/main.c:1900: seleccionControles = 0;
	ld	hl,#_seleccionControles + 0
	ld	(hl), #0x00
;src/main.c:1901: dibujarConfiguracionControles(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
00145$:
;src/main.c:1904: switch(seleccionControles){
	ld	a,(#_seleccionControles + 0)
	or	a, a
	jr	Z,00147$
	ld	a,(#_seleccionControles + 0)
	dec	a
	jp	Z,00169$
	jp	00191$
;src/main.c:1906: case 0:
00147$:
;src/main.c:1907: if(cpct_isKeyPressed(Key_CursorRight) && prota.controles <2  && keyCounter > 9){
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00165$
	ld	bc,#_prota+26
	ld	a,(bc)
	ld	-3 (ix), a
	sub	a, #0x02
	jr	NC,00165$
	ld	a,#0x09
	ld	iy,#_keyCounter
	sub	a, 0 (iy)
	jr	NC,00165$
;src/main.c:1908: if(protaDos.controles == prota.controles+1 && (prota.controles + 2) <=2 ){
	ld	hl,#_protaDos+26
	ld	l,(hl)
	ld	a,-3 (ix)
	ld	-2 (ix),a
	ld	-1 (ix),#0x00
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	inc	de
	ld	-5 (ix),l
	ld	-4 (ix),#0x00
	ld	a,e
	sub	a, -5 (ix)
	jr	NZ,00421$
	ld	a,d
	sub	a, -4 (ix)
	jr	NZ,00421$
	ld	a,#0x01
	jr	00422$
00421$:
	xor	a,a
00422$:
	ld	e,a
	or	a, a
	jr	Z,00151$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	a,#0x02
	cp	a, l
	ld	a,#0x00
	sbc	a, h
	jp	PO, 00423$
	xor	a, #0x80
00423$:
	jp	M,00151$
;src/main.c:1909: prota.controles = prota.controles+2; 
	ld	a,-3 (ix)
	add	a, #0x02
	ld	(bc),a
;src/main.c:1910: dibujarConfiguracionControles(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
	jr	00152$
00151$:
;src/main.c:1912: else if(prota.controles+1!=protaDos.controles){
	ld	a,e
	or	a, a
	jr	NZ,00152$
;src/main.c:1913: prota.controles++; 
	ld	a,-3 (ix)
	inc	a
	ld	(bc),a
;src/main.c:1914: dibujarConfiguracionControles(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
00152$:
;src/main.c:1916: keyCounter = 0;
	ld	hl,#_keyCounter + 0
	ld	(hl), #0x00
	jp	00191$
00165$:
;src/main.c:1920: else if(cpct_isKeyPressed(Key_CursorLeft) && prota.controles >0  && keyCounter > 9){
	ld	hl,#0x0101
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00191$
	ld	hl, #(_prota + 0x001a) + 0
	ld	d,(hl)
	ld	a,d
	or	a, a
	jp	Z,00191$
	ld	a,#0x09
	ld	iy,#_keyCounter
	sub	a, 0 (iy)
	jp	NC,00191$
;src/main.c:1921: if(protaDos.controles == prota.controles-1 && (prota.controles - 2) >=0 ){
	ld	hl,#_protaDos+26
	ld	e,(hl)
	ld	c,d
	ld	b,#0x00
	ld	a,c
	add	a,#0xFF
	ld	-5 (ix),a
	ld	a,b
	adc	a,#0xFF
	ld	-4 (ix),a
	ld	-2 (ix),e
	ld	-1 (ix),#0x00
	ld	a,-2 (ix)
	sub	a, -5 (ix)
	jr	NZ,00424$
	ld	a,-1 (ix)
	sub	a, -4 (ix)
	jr	NZ,00424$
	ld	a,#0x01
	jr	00425$
00424$:
	xor	a,a
00425$:
	ld	e,a
	or	a, a
	jr	Z,00157$
	dec	bc
	dec	bc
	bit	7, b
	jr	NZ,00157$
;src/main.c:1922: prota.controles = prota.controles - 2;
	dec	d
	dec	d
	ld	hl,#(_prota + 0x001a)
	ld	(hl),d
;src/main.c:1923: dibujarConfiguracionControles(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
	jr	00158$
00157$:
;src/main.c:1925: else if(prota.controles-1!=protaDos.controles){
	ld	a,e
	or	a, a
	jr	NZ,00158$
;src/main.c:1926: prota.controles--; 
	dec	d
	ld	hl,#(_prota + 0x001a)
	ld	(hl),d
;src/main.c:1927: dibujarConfiguracionControles(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
00158$:
;src/main.c:1929: keyCounter = 0;
	ld	hl,#_keyCounter + 0
	ld	(hl), #0x00
;src/main.c:1931: break;
	jp	00191$
;src/main.c:1932: case 1:
00169$:
;src/main.c:1933: if(cpct_isKeyPressed(Key_CursorRight) && protaDos.controles <2  && keyCounter > 9){
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00187$
	ld	hl, #(_protaDos + 0x001a) + 0
	ld	d,(hl)
	ld	a,d
	sub	a, #0x02
	jr	NC,00187$
	ld	a,#0x09
	ld	iy,#_keyCounter
	sub	a, 0 (iy)
	jr	NC,00187$
;src/main.c:1934: if(prota.controles == protaDos.controles+1 && (protaDos.controles + 2) <=2 ){
	ld	hl,#_prota+26
	ld	e,(hl)
	ld	c,d
	ld	b,#0x00
	ld	hl,#0x0001
	add	hl,bc
	ex	(sp), hl
	ld	-2 (ix),e
	ld	-1 (ix),#0x00
	ld	a,-2 (ix)
	sub	a, -5 (ix)
	jr	NZ,00426$
	ld	a,-1 (ix)
	sub	a, -4 (ix)
	jr	NZ,00426$
	ld	a,#0x01
	jr	00427$
00426$:
	xor	a,a
00427$:
	ld	e,a
	or	a, a
	jr	Z,00173$
	inc	bc
	inc	bc
	ld	l,b
	ld	a,#0x02
	cp	a, c
	ld	a,#0x00
	sbc	a, l
	jp	PO, 00428$
	xor	a, #0x80
00428$:
	jp	M,00173$
;src/main.c:1935: protaDos.controles = protaDos.controles + 2;
	inc	d
	inc	d
	ld	hl,#(_protaDos + 0x001a)
	ld	(hl),d
;src/main.c:1936: dibujarConfiguracionControles(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
	jr	00174$
00173$:
;src/main.c:1938: else if(protaDos.controles+1!=prota.controles){
	ld	a,e
	or	a, a
	jr	NZ,00174$
;src/main.c:1939: protaDos.controles++; 
	inc	d
	ld	hl,#(_protaDos + 0x001a)
	ld	(hl),d
;src/main.c:1940: dibujarConfiguracionControles(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
00174$:
;src/main.c:1942: keyCounter = 0;
	ld	hl,#_keyCounter + 0
	ld	(hl), #0x00
	jp	00191$
00187$:
;src/main.c:1945: else if(cpct_isKeyPressed(Key_CursorLeft) && protaDos.controles >0  && keyCounter > 9){
	ld	hl,#0x0101
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00191$
	ld	a,(#(_protaDos + 0x001a) + 0)
	ld	-5 (ix), a
	or	a, a
	jr	Z,00191$
	ld	a,#0x09
	ld	iy,#_keyCounter
	sub	a, 0 (iy)
	jr	NC,00191$
;src/main.c:1946: if(prota.controles == protaDos.controles-1 && (protaDos.controles - 2) >=0 ){
	ld	hl,#_prota+26
	ld	e,(hl)
	ld	a,-5 (ix)
	ld	-2 (ix),a
	ld	-1 (ix),#0x00
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	dec	bc
	ld	d,#0x00
	ld	a,c
	sub	a, e
	jr	NZ,00429$
	ld	a,b
	sub	a, d
	jr	NZ,00429$
	ld	a,#0x01
	jr	00430$
00429$:
	xor	a,a
00430$:
	ld	c,a
	or	a, a
	jr	Z,00179$
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	dec	de
	dec	de
	bit	7, d
	jr	NZ,00179$
;src/main.c:1947: protaDos.controles = protaDos.controles-2; 
	ld	c,-5 (ix)
	dec	c
	dec	c
	ld	hl,#(_protaDos + 0x001a)
	ld	(hl),c
;src/main.c:1948: dibujarConfiguracionControles(1);            
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
	jr	00180$
00179$:
;src/main.c:1950: else if(protaDos.controles-1!=prota.controles){
	ld	a,c
	or	a, a
	jr	NZ,00180$
;src/main.c:1951: protaDos.controles--; 
	ld	c,-5 (ix)
	dec	c
	ld	hl,#(_protaDos + 0x001a)
	ld	(hl),c
;src/main.c:1952: dibujarConfiguracionControles(1);                 
	ld	a,#0x01
	push	af
	inc	sp
	call	_dibujarConfiguracionControles
	inc	sp
00180$:
;src/main.c:1954: keyCounter = 0;
	ld	hl,#_keyCounter + 0
	ld	(hl), #0x00
;src/main.c:1957: }
00191$:
;src/main.c:1960: if(cpct_isKeyPressed(Key_Esc)){
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00198$
;src/main.c:1962: estado = 0;
	ld	hl,#_estado + 0
	ld	(hl), #0x00
;src/main.c:1963: llenarVmem(10,68,92,176,24);
	ld	hl,#0x18B0
	push	hl
	ld	hl,#0x5C44
	push	hl
	ld	a,#0x0A
	push	af
	inc	sp
	call	_llenarVmem
	pop	af
	pop	af
	inc	sp
;src/main.c:1964: mostrarMenu();
	call	_mostrarMenu
;src/main.c:1965: refrescarMenu();
	call	_refrescarMenu
00198$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1984: u8 compruebaTeclas(const cpct_keyID* k, u8 numk, TProta * pro) {
;	---------------------------------
; Function compruebaTeclas
; ---------------------------------
_compruebaTeclas::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-16
	add	hl,sp
	ld	sp,hl
;src/main.c:1985: u8 i, j=0, uno=0, dos=0, tres=0, cuatro=0, cinco=0;
	ld	-11 (ix),#0x00
	ld	-14 (ix),#0x00
	ld	-12 (ix),#0x00
	ld	-16 (ix),#0x00
	ld	-15 (ix),#0x00
;src/main.c:1987: if (cpct_isAnyKeyPressed()) {
	call	_cpct_isAnyKeyPressed
	ld	-3 (ix), l
	ld	a, l
	or	a, a
	jp	Z,00273$
;src/main.c:1988: for(i=1; i <= numk; i++, k++) {
	ld	-13 (ix),#0x00
	ld	-3 (ix),#0x01
	ld	a,4 (ix)
	ld	-5 (ix),a
	ld	a,5 (ix)
	ld	-4 (ix),a
00275$:
	ld	a,6 (ix)
	sub	a, -3 (ix)
	jr	C,00117$
;src/main.c:1990: if (cpct_isKeyPressed(*k)){
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	c,(hl)
	inc	hl
	ld	h,(hl)
	ld	l, c
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00276$
;src/main.c:1992: if(uno==0){uno=i;}
	ld	a,-11 (ix)
	or	a, a
	jr	NZ,00113$
	ld	a,-3 (ix)
	ld	-11 (ix),a
	jr	00114$
00113$:
;src/main.c:1993: else if(dos==0){dos=i;}
	ld	a,-14 (ix)
	or	a, a
	jr	NZ,00110$
	ld	a,-3 (ix)
	ld	-14 (ix),a
	jr	00114$
00110$:
;src/main.c:1994: else if(tres==0){tres=i;}
	ld	a,-12 (ix)
	or	a, a
	jr	NZ,00107$
	ld	a,-3 (ix)
	ld	-12 (ix),a
	jr	00114$
00107$:
;src/main.c:1995: else if(cuatro==0){cuatro=i;}
	ld	a,-16 (ix)
	or	a, a
	jr	NZ,00104$
	ld	a,-3 (ix)
	ld	-16 (ix),a
	jr	00114$
00104$:
;src/main.c:1996: else if(cinco==0){cinco=i;}
	ld	a,-15 (ix)
	or	a, a
	jr	NZ,00114$
	ld	a,-3 (ix)
	ld	-15 (ix),a
00114$:
;src/main.c:1998: j++;
	inc	-13 (ix)
00276$:
;src/main.c:1988: for(i=1; i <= numk; i++, k++) {
	inc	-3 (ix)
	ld	a,-5 (ix)
	add	a, #0x02
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	jr	00275$
00117$:
;src/main.c:2001: if(j==0){
	ld	a,-13 (ix)
;src/main.c:2002: return 0;
	or	a,a
	jr	NZ,00270$
	ld	l,a
	jp	00277$
00270$:
;src/main.c:2004: else if(j==1){
	ld	a,-13 (ix)
	dec	a
	jp	NZ,00267$
;src/main.c:2005: switch(uno){
	ld	a,-11 (ix)
	sub	a, #0x01
	jp	C,00135$
	ld	a,#0x05
	sub	a, -11 (ix)
	jp	C,00135$
	ld	e,-11 (ix)
	dec	e
	ld	d,#0x00
	ld	hl,#00606$
	add	hl,de
	add	hl,de
;src/main.c:2006: case 1: 
	jp	(hl)
00606$:
	jr	00118$
	jr	00119$
	jr	00123$
	jr	00127$
	jr	00131$
00118$:
;src/main.c:2007: return uno;
	ld	l,-11 (ix)
	jp	00277$
;src/main.c:2009: case 2:
00119$:
;src/main.c:2010: if(validarColision(2,pro,1)==1)
	ld	a,#0x01
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00121$
;src/main.c:2011: return uno;
	ld	l,-11 (ix)
	jp	00277$
00121$:
;src/main.c:2012: else return uno;
	ld	l,-11 (ix)
	jp	00277$
;src/main.c:2014: case 3:
00123$:
;src/main.c:2015: if(validarColision(0,pro,1)==1)
	ld	a,#0x01
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00125$
;src/main.c:2016: return uno;
	ld	l,-11 (ix)
	jp	00277$
00125$:
;src/main.c:2017: else return uno;
	ld	l,-11 (ix)
	jp	00277$
;src/main.c:2019: case 4:
00127$:
;src/main.c:2020: if(validarColision(3,pro,1)==1)
	ld	a,#0x01
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00129$
;src/main.c:2021: return uno;
	ld	l,-11 (ix)
	jp	00277$
00129$:
;src/main.c:2022: else return uno;
	ld	l,-11 (ix)
	jp	00277$
;src/main.c:2024: case 5:
00131$:
;src/main.c:2025: if(validarColision(1,pro,1)==1)
	ld	a,#0x01
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00133$
;src/main.c:2026: return uno;
	ld	l,-11 (ix)
	jp	00277$
00133$:
;src/main.c:2027: else return uno;
	ld	l,-11 (ix)
	jp	00277$
;src/main.c:2029: }
00135$:
;src/main.c:2030: return 0;
	ld	l,#0x00
	jp	00277$
00267$:
;src/main.c:2032: else if(j>1 && uno==1 && pro->disparando==NO){
	ld	a,#0x01
	sub	a, -13 (ix)
	ld	a,#0x00
	rla
	ld	-5 (ix),a
	ld	a,7 (ix)
	ld	-7 (ix),a
	ld	a,8 (ix)
	ld	-6 (ix),a
	ld	a,-5 (ix)
	or	a, a
	jr	Z,00262$
	ld	a,-11 (ix)
	dec	a
	jr	NZ,00262$
	ld	a,-7 (ix)
	ld	-2 (ix),a
	ld	a,-6 (ix)
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	de, #0x0015
	add	hl, de
	ld	a,(hl)
	ld	-2 (ix), a
	or	a, a
	jr	NZ,00262$
;src/main.c:2033: return 1;
	ld	l,#0x01
	jp	00277$
00262$:
;src/main.c:2035: else if(j>1){
	ld	a,-5 (ix)
	or	a, a
	jp	Z,00273$
;src/main.c:2038: if(dos==4){
	ld	a,-14 (ix)
	sub	a, #0x04
	jr	NZ,00617$
	ld	a,#0x01
	jr	00618$
00617$:
	xor	a,a
00618$:
	ld	-2 (ix),a
;src/main.c:2056: pro->y+=2;
	ld	a,-7 (ix)
	add	a, #0x01
	ld	-5 (ix),a
	ld	a,-6 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
;src/main.c:2078: else if(dos==5){
	ld	a,-14 (ix)
	sub	a, #0x05
	jr	NZ,00619$
	ld	a,#0x01
	jr	00620$
00619$:
	xor	a,a
00620$:
	ld	-3 (ix),a
;src/main.c:2040: if(pro->mira==M_abajo){
	ld	a,-7 (ix)
	add	a, #0x0C
	ld	-10 (ix),a
	ld	a,-6 (ix)
	adc	a, #0x00
	ld	-9 (ix),a
;src/main.c:2036: switch(uno){
	ld	a,-11 (ix)
	sub	a, #0x02
	jr	Z,00136$
	ld	a,-11 (ix)
	sub	a, #0x03
	jp	Z,00197$
	jp	00273$
;src/main.c:2037: case 2: 
00136$:
;src/main.c:2038: if(dos==4){
	ld	a,-2 (ix)
	or	a, a
	jp	Z,00195$
;src/main.c:2039: if(validarColision(3,pro,0)==1 && validarColision(2,pro,0)==1 && pro->x>3 && pro->y<15*11+15){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jp	NZ,00160$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jp	NZ,00160$
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	ld	a,#0x03
	sub	a, c
	jp	NC,00160$
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a, (hl)
	sub	a, #0xB4
	jp	NC,00160$
;src/main.c:2040: if(pro->mira==M_abajo){
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	sub	a, #0x02
	jp	NZ,00146$
;src/main.c:2041: andando_entrar(M_derecha, pro);
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
;src/main.c:2042: andando_animar(M_derecha, pro);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_andando_animar
	pop	af
	inc	sp
;src/main.c:2043: pro->y+=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	add	a, #0x02
	ld	-8 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
;src/main.c:2044: if(validarColision(2, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00138$
;src/main.c:2045: pro->x++;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	inc	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
00138$:
;src/main.c:2046: if(validarColision(2, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00140$
;src/main.c:2047: pro->x++;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	inc	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
00140$:
;src/main.c:2049: return uno;
	ld	l,-11 (ix)
	jp	00277$
00146$:
;src/main.c:2052: bajando_entrar(M_abajo, pro);
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_bajando_entrar
	pop	af
	inc	sp
;src/main.c:2053: abajo_animar(pro);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	call	_abajo_animar
	pop	af
;src/main.c:2054: pro->x++;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	inc	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
;src/main.c:2055: if(validarColision(3, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00142$
;src/main.c:2056: pro->y+=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-8 (ix),a
	inc	-8 (ix)
	inc	-8 (ix)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
00142$:
;src/main.c:2057: if(validarColision(3, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00144$
;src/main.c:2058: pro->y+=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-8 (ix),a
	inc	-8 (ix)
	inc	-8 (ix)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
00144$:
;src/main.c:2061: return dos;
	ld	l,-14 (ix)
	jp	00277$
00160$:
;src/main.c:2065: else if(validarColision(3,pro,0)==0 && validarColision(2,pro,0)==1){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00156$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00156$
;src/main.c:2066: return uno;
	ld	l,-11 (ix)
	jp	00277$
00156$:
;src/main.c:2068: else if(validarColision(3,pro,0)==1 && validarColision(2,pro,0)==0){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00152$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00152$
;src/main.c:2069: return dos;
	ld	l,-14 (ix)
	jp	00277$
00152$:
;src/main.c:2071: else if(validarColision(0,pro,0)==1){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00149$
;src/main.c:2072: return uno;
	ld	l,-11 (ix)
	jp	00277$
00149$:
;src/main.c:2075: return dos;
	ld	l,-14 (ix)
	jp	00277$
00195$:
;src/main.c:2078: else if(dos==5){
	ld	a,-3 (ix)
	or	a, a
	jp	Z,00273$
;src/main.c:2079: if(validarColision(1,pro,0)==1 && validarColision(2,pro,0)==1 && pro->y<15*11+15){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jp	NZ,00188$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jp	NZ,00188$
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a, (hl)
	sub	a, #0xB4
	jp	NC,00188$
;src/main.c:2080: if(pro->mira==M_arriba){
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	sub	a, #0x03
	jp	NZ,00174$
;src/main.c:2081: andando_entrar(M_derecha, pro);
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
;src/main.c:2082: andando_animar(M_derecha, pro);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_andando_animar
	pop	af
	inc	sp
;src/main.c:2083: pro->y-=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	add	a,#0xFE
	ld	-8 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
;src/main.c:2084: if(validarColision(2, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00166$
;src/main.c:2085: pro->x++;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	inc	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
00166$:
;src/main.c:2086: if(validarColision(2, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00168$
;src/main.c:2087: pro->x++;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	inc	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
00168$:
;src/main.c:2088: return uno;
	ld	l,-11 (ix)
	jp	00277$
00174$:
;src/main.c:2091: subiendo_entrar(M_arriba, pro);
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_subiendo_entrar
	pop	af
	inc	sp
;src/main.c:2092: arriba_animar(pro);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	call	_arriba_animar
	pop	af
;src/main.c:2093: pro->x++;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	a,(hl)
	inc	a
	ld	-8 (ix),a
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
;src/main.c:2094: if(validarColision(1, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00170$
;src/main.c:2095: pro->y-=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-8 (ix),a
	dec	-8 (ix)
	dec	-8 (ix)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
00170$:
;src/main.c:2096: if(validarColision(1, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00172$
;src/main.c:2097: pro->y-=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-8 (ix),a
	dec	-8 (ix)
	dec	-8 (ix)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
00172$:
;src/main.c:2099: return dos;
	ld	l,-14 (ix)
	jp	00277$
00188$:
;src/main.c:2103: else if(validarColision(1,pro,0)==0 && validarColision(2,pro,0)==1){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00184$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00184$
;src/main.c:2104: return uno;
	ld	l,-11 (ix)
	jp	00277$
00184$:
;src/main.c:2106: else if(validarColision(1,pro,0)==1 && validarColision(2,pro,0)==0){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00180$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00180$
;src/main.c:2107: return dos;
	ld	l,-14 (ix)
	jp	00277$
00180$:
;src/main.c:2109: else if(validarColision(2,pro,0)==1){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00177$
;src/main.c:2110: return uno;
	ld	l,-11 (ix)
	jp	00277$
00177$:
;src/main.c:2113: return dos;
	ld	l,-14 (ix)
	jp	00277$
;src/main.c:2117: case 3: 
00197$:
;src/main.c:2118: if(dos==4){
	ld	a,-2 (ix)
	or	a, a
	jp	Z,00256$
;src/main.c:2119: if(validarColision(3,pro,0)==1 && validarColision(0,pro,0)==1 && pro->x>3 && pro->y<15*11+15){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jp	NZ,00221$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jp	NZ,00221$
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	ld	a,#0x03
	sub	a, c
	jp	NC,00221$
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a, (hl)
	sub	a, #0xB4
	jp	NC,00221$
;src/main.c:2120: if(pro->mira==M_abajo){
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	sub	a, #0x02
	jp	NZ,00207$
;src/main.c:2121: andando_entrar(M_izquierda, pro);
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
;src/main.c:2122: andando_animar(M_izquierda, pro);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_andando_animar
	pop	af
	inc	sp
;src/main.c:2123: pro->y+=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	c,(hl)
	inc	c
	inc	c
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl),c
;src/main.c:2124: if(validarColision(0, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00199$
;src/main.c:2125: pro->x--;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	dec	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
00199$:
;src/main.c:2126: if(validarColision(0, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00201$
;src/main.c:2127: pro->x--;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	dec	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
00201$:
;src/main.c:2130: return uno;
	ld	l,-11 (ix)
	jp	00277$
00207$:
;src/main.c:2133: bajando_entrar(M_abajo, pro);
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_bajando_entrar
	pop	af
	inc	sp
;src/main.c:2134: abajo_animar(pro);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	call	_abajo_animar
	pop	af
;src/main.c:2135: pro->x--;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	dec	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
;src/main.c:2136: if(validarColision(3, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00203$
;src/main.c:2137: pro->y+=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-8 (ix),a
	inc	-8 (ix)
	inc	-8 (ix)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
00203$:
;src/main.c:2138: if(validarColision(3, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00205$
;src/main.c:2139: pro->y+=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-8 (ix),a
	inc	-8 (ix)
	inc	-8 (ix)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
00205$:
;src/main.c:2141: return dos;
	ld	l,-14 (ix)
	jp	00277$
00221$:
;src/main.c:2147: else if(validarColision(3,pro,0)==0 && validarColision(0,pro,0)==1){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00217$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00217$
;src/main.c:2148: return uno;
	ld	l,-11 (ix)
	jp	00277$
00217$:
;src/main.c:2150: else if(validarColision(3,pro,0)==1 && validarColision(0,pro,0)==0){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00213$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00213$
;src/main.c:2151: return dos;
	ld	l,-14 (ix)
	jp	00277$
00213$:
;src/main.c:2153: else if(validarColision(0,pro,0)==1){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00210$
;src/main.c:2154: return uno;
	ld	l,-11 (ix)
	jp	00277$
00210$:
;src/main.c:2157: return dos;
	ld	l,-14 (ix)
	jp	00277$
00256$:
;src/main.c:2160: else if(dos==5){
	ld	a,-3 (ix)
	or	a, a
	jp	Z,00273$
;src/main.c:2161: if(validarColision(1,pro,0)==1 && validarColision(0,pro,0)==1 && pro->x>3){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jp	NZ,00249$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jp	NZ,00249$
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	ld	a,#0x03
	sub	a, c
	jp	NC,00249$
;src/main.c:2162: if(pro->mira==M_arriba){
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	sub	a, #0x03
	jp	NZ,00235$
;src/main.c:2163: andando_entrar(M_izquierda, pro);
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
;src/main.c:2164: andando_animar(M_izquierda, pro);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_andando_animar
	pop	af
	inc	sp
;src/main.c:2165: pro->y-=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	c,(hl)
	dec	c
	dec	c
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl),c
;src/main.c:2166: if(validarColision(0, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00227$
;src/main.c:2167: pro->x--;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	dec	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
00227$:
;src/main.c:2168: if(validarColision(0, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00229$
;src/main.c:2169: pro->x--;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	dec	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
00229$:
;src/main.c:2171: return uno;
	ld	l,-11 (ix)
	jp	00277$
00235$:
;src/main.c:2174: subiendo_entrar(M_arriba, pro);
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_subiendo_entrar
	pop	af
	inc	sp
;src/main.c:2175: arriba_animar(pro);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	call	_arriba_animar
	pop	af
;src/main.c:2176: pro->x--;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	dec	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),c
;src/main.c:2177: if(validarColision(1, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00231$
;src/main.c:2178: pro->y-=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-8 (ix),a
	dec	-8 (ix)
	dec	-8 (ix)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
00231$:
;src/main.c:2179: if(validarColision(1, pro,0))
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	-8 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00233$
;src/main.c:2180: pro->y-=2;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-8 (ix),a
	dec	-8 (ix)
	dec	-8 (ix)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,-8 (ix)
	ld	(hl),a
00233$:
;src/main.c:2182: return dos;
	ld	l,-14 (ix)
	jp	00277$
00249$:
;src/main.c:2186: else if(validarColision(1,pro,0)==0 && validarColision(0,pro,0)==1){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00245$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00245$
;src/main.c:2187: return uno;
	ld	l,-11 (ix)
	jr	00277$
00245$:
;src/main.c:2189: else if(validarColision(1,pro,0)==1 && validarColision(0,pro,0)==0){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00241$
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00241$
;src/main.c:2190: return dos;
	ld	l,-14 (ix)
	jr	00277$
00241$:
;src/main.c:2192: else if(validarColision(0,pro,0)==1){
	xor	a, a
	push	af
	inc	sp
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	dec	l
	jr	NZ,00238$
;src/main.c:2193: return uno;
	ld	l,-11 (ix)
	jr	00277$
00238$:
;src/main.c:2196: return dos;
	ld	l,-14 (ix)
	jr	00277$
;src/main.c:2200: }
00273$:
;src/main.c:2206: return 0;
	ld	l,#0x00
00277$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:2209: u8 noChocar(){
;	---------------------------------
; Function noChocar
; ---------------------------------
_noChocar::
;src/main.c:2210: if(prota.y<protaDos.y+15 && prota.y>protaDos.y-15 && prota.x>protaDos.x-6 && prota.x<protaDos.x+6){
	ld	hl, #_prota + 1
	ld	e,(hl)
	ld	hl, #_protaDos + 1
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x000F
	add	hl,bc
	ld	d,#0x00
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00124$
	xor	a, #0x80
00124$:
	jp	P,00102$
	ld	a,c
	add	a,#0xF1
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ld	a,c
	sub	a, e
	ld	a,b
	sbc	a, d
	jp	PO, 00125$
	xor	a, #0x80
00125$:
	jp	P,00102$
	ld	hl, #_prota + 0
	ld	c,(hl)
	ld	hl, #_protaDos + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	a,e
	add	a,#0xFA
	ld	l,a
	ld	a,d
	adc	a,#0xFF
	ld	h,a
	ld	b,#0x00
	ld	a,l
	sub	a, c
	ld	a,h
	sbc	a, b
	jp	PO, 00126$
	xor	a, #0x80
00126$:
	jp	P,00102$
	ld	hl,#0x0006
	add	hl,de
	ld	a,c
	sub	a, l
	ld	a,b
	sbc	a, h
	jp	PO, 00127$
	xor	a, #0x80
00127$:
	jp	P,00102$
;src/main.c:2211: return SI;
	ld	l,#0x01
	ret
00102$:
;src/main.c:2213: return NO;
	ld	l,#0x00
	ret
;src/main.c:2225: void quieto_entrar(u8 mirar, TProta * pro) {
;	---------------------------------
; Function quieto_entrar
; ---------------------------------
_quieto_entrar::
;src/main.c:2227: case M_derecha: pro->estado = ST_quieto; break; // Nada que hacer
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;src/main.c:2226: switch(mirar) {
	ld	a,#0x03
	ld	iy,#2
	add	iy,sp
	sub	a, 0 (iy)
	jr	C,00105$
;src/main.c:2227: case M_derecha: pro->estado = ST_quieto; break; // Nada que hacer
	ld	hl,#0x0008
	add	hl,bc
;src/main.c:2226: switch(mirar) {
	push	hl
	ld	e,0 (iy)
	ld	d,#0x00
	ld	hl,#00112$
	add	hl,de
	add	hl,de
;src/main.c:2227: case M_derecha: pro->estado = ST_quieto; break; // Nada que hacer
	pop	de
	jp	(hl)
00112$:
	jr	00101$
	jr	00102$
	jr	00104$
	jr	00103$
00101$:
	xor	a, a
	ld	(de),a
	jr	00105$
;src/main.c:2228: case M_izquierda: pro->estado = ST_quieto; break;
00102$:
	xor	a, a
	ld	(de),a
	jr	00105$
;src/main.c:2229: case M_arriba: pro->estado = ST_quietoArri;   break;
00103$:
	ld	a,#0x02
	ld	(de),a
	jr	00105$
;src/main.c:2230: case M_abajo: pro->estado = ST_quietoAbaj;   break;
00104$:
	ld	a,#0x01
	ld	(de),a
;src/main.c:2231: }
00105$:
;src/main.c:2232: pro->mover  = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ret
;src/main.c:2245: void disparoArriba_entrar(TProta * pro){
;	---------------------------------
; Function disparoArriba_entrar
; ---------------------------------
_disparoArriba_entrar::
;src/main.c:2246: pro->nframe = 0;
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
;src/main.c:2247: pro->estado = ST_atacandoSub;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x06
;src/main.c:2248: pro->mira = M_arriba;
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x03
;src/main.c:2249: pro->mover = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ret
;src/main.c:2258: void disparoAbajo_entrar(TProta * pro){
;	---------------------------------
; Function disparoAbajo_entrar
; ---------------------------------
_disparoAbajo_entrar::
;src/main.c:2259: pro->nframe = 0;
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
;src/main.c:2260: pro->estado = ST_atacandoBaj;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x05
;src/main.c:2261: pro->mira = M_abajo;
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x02
;src/main.c:2262: pro->mover = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ret
;src/main.c:2271: void disparo_entrar(u8 mirar, TProta * pro){
;	---------------------------------
; Function disparo_entrar
; ---------------------------------
_disparo_entrar::
;src/main.c:2272: pro->nframe = 0;
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
;src/main.c:2273: pro->estado = ST_atacando;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x04
;src/main.c:2274: pro->mira = mirar;
	ld	hl,#0x000C
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/main.c:2275: pro->mover = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ret
;src/main.c:2284: void disparo_animar(u8 mirar, TProta * pro){
;	---------------------------------
; Function disparo_animar
; ---------------------------------
_disparo_animar::
;src/main.c:2285: pro->mira = mirar;
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl,#0x000C
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/main.c:2286: if(++pro->nframe == ATACAR_FRAMES*ANIM_PAUSA)
	ld	hl,#0x000B
	add	hl,bc
	ld	a,(hl)
	inc	a
	ld	(hl),a
;src/main.c:2287: pro->nframe = 0;
	sub	a,#0x04
	ret	NZ
	ld	(hl),a
	ret
;src/main.c:2295: u8 queHayPulsado(u8 num){
;	---------------------------------
; Function queHayPulsado
; ---------------------------------
_queHayPulsado::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:2296: u8 k=0;
	ld	d,#0x00
;src/main.c:2297: if(num==0){
	ld	a,4 (ix)
	or	a, a
	jr	NZ,00110$
;src/main.c:2298: switch(prota.controles){
	ld	bc,#_prota+0
	ld	hl, #_prota + 26
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jp	C,00111$
	ld	d,#0x00
	ld	hl,#00126$
	add	hl,de
	add	hl,de
;src/main.c:2299: case 0:{ k = compruebaTeclas(keysWASD, 5, &prota); break;}
	jp	(hl)
00126$:
	jr	00101$
	jr	00102$
	jr	00103$
00101$:
	push	bc
	ld	a,#0x05
	push	af
	inc	sp
	ld	hl,#_keysWASD
	push	hl
	call	_compruebaTeclas
	pop	af
	pop	af
	inc	sp
	ld	d,l
	jp	00111$
;src/main.c:2300: case 1:{ k = compruebaTeclas(keysNumpad, 5, &prota); break;}
00102$:
	push	bc
	ld	a,#0x05
	push	af
	inc	sp
	ld	hl,#_keysNumpad
	push	hl
	call	_compruebaTeclas
	pop	af
	pop	af
	inc	sp
	ld	d,l
	jr	00111$
;src/main.c:2301: case 2:{ k = compruebaTeclas(keysJoy0, 5, &prota); break;}
00103$:
	push	bc
	ld	a,#0x05
	push	af
	inc	sp
	ld	hl,#_keysJoy0
	push	hl
	call	_compruebaTeclas
	pop	af
	pop	af
	inc	sp
	ld	d,l
;src/main.c:2302: }
	jr	00111$
00110$:
;src/main.c:2305: switch(protaDos.controles){
	ld	hl, #_protaDos + 26
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jr	C,00111$
	ld	d,#0x00
	ld	hl,#00127$
	add	hl,de
	add	hl,de
;src/main.c:2306: case 0: {k = compruebaTeclas(keysWASD, 5, &protaDos); break;}
	jp	(hl)
00127$:
	jr	00105$
	jr	00106$
	jr	00107$
00105$:
	ld	hl,#_protaDos
	push	hl
	ld	a,#0x05
	push	af
	inc	sp
	ld	hl,#_keysWASD
	push	hl
	call	_compruebaTeclas
	pop	af
	pop	af
	inc	sp
	ld	d,l
	jr	00111$
;src/main.c:2307: case 1: {k = compruebaTeclas(keysNumpad, 5, &protaDos); break;}
00106$:
	ld	hl,#_protaDos
	push	hl
	ld	a,#0x05
	push	af
	inc	sp
	ld	hl,#_keysNumpad
	push	hl
	call	_compruebaTeclas
	pop	af
	pop	af
	inc	sp
	ld	d,l
	jr	00111$
;src/main.c:2308: case 2: {k = compruebaTeclas(keysJoy0, 5, &protaDos); break;}
00107$:
	ld	hl,#_protaDos
	push	hl
	ld	a,#0x05
	push	af
	inc	sp
	ld	hl,#_keysJoy0
	push	hl
	call	_compruebaTeclas
	pop	af
	pop	af
	inc	sp
	ld	d,l
;src/main.c:2309: }
00111$:
;src/main.c:2311: return k;
	ld	l,d
	pop	ix
	ret
;src/main.c:2314: void atacando(TProta * pro){
;	---------------------------------
; Function atacando
; ---------------------------------
_atacando::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:2315: u8 k = queHayPulsado(pro->soy-1);
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	ld	d,27 (iy)
	dec	d
	push	bc
	push	de
	inc	sp
	call	_queHayPulsado
	inc	sp
	ld	e,l
	pop	bc
;src/main.c:2317: switch(k) {
	ld	a,#0x05
	sub	a, e
	jp	C,00114$
;src/main.c:2318: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
	ld	iy,#0x000C
	add	iy, bc
;src/main.c:2317: switch(k) {
	ld	d,#0x00
	ld	hl,#00137$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00137$:
	jp	00101$
	jp	00102$
	jp	00110$
	jp	00111$
	jp	00112$
	jp	00113$
;src/main.c:2318: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
00101$:
	ld	d, 0 (iy)
	push	bc
	push	bc
	push	de
	inc	sp
	call	_quieto_entrar
	pop	af
	inc	sp
	pop	bc
	jp	00114$
;src/main.c:2319: case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
00102$:
	ld	hl,#0x0015
	add	hl,bc
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
;src/main.c:2323: pro->contadorAtaque = 0;
	ld	hl,#0x0017
	add	hl,bc
	ex	(sp), hl
;src/main.c:2319: case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
	ld	a,e
	or	a, a
	jr	NZ,00104$
	ld	l, c
	ld	h, b
	ld	de, #0x0014
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	Z,00104$
	ld	hl,#0x0016
	add	hl,bc
	ld	e,(hl)
	ld	a,#0x1E
	sub	a, e
	jr	NC,00104$
;src/main.c:2320: pro->tiempoDisp=1;
	ld	(hl),#0x01
;src/main.c:2321: pro->miraAtacando = pro->mira;
	ld	hl,#0x0018
	add	hl,bc
	ex	de,hl
	ld	a, 0 (iy)
	ld	(de),a
;src/main.c:2322: pro->disparando=SI;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x01
;src/main.c:2323: pro->contadorAtaque = 0;
	pop	hl
	push	hl
	ld	(hl),#0x00
00104$:
;src/main.c:2326: if(pro->contadorAtaque < 4){
	pop	hl
	push	hl
	ld	e,(hl)
;src/main.c:2318: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
	ld	d, 0 (iy)
;src/main.c:2326: if(pro->contadorAtaque < 4){
	ld	a,e
	sub	a, #0x04
	jr	NC,00108$
;src/main.c:2327: disparo_animar(pro->mira, pro);
	push	bc
	push	bc
	push	de
	inc	sp
	call	_disparo_animar
	pop	af
	inc	sp
	pop	bc
;src/main.c:2328: pro->contadorAtaque++; 
	pop	hl
	push	hl
	ld	e,(hl)
	inc	e
	pop	hl
	push	hl
	ld	(hl),e
	jr	00114$
00108$:
;src/main.c:2330: quieto_entrar(pro->mira, pro);
	push	bc
	push	bc
	push	de
	inc	sp
	call	_quieto_entrar
	pop	af
	inc	sp
	pop	bc
;src/main.c:2332: break;
	jr	00114$
;src/main.c:2333: case 2: andando_entrar(M_derecha, pro); break;
00110$:
	push	bc
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00114$
;src/main.c:2334: case 3: andando_entrar(M_izquierda, pro); break;
00111$:
	push	bc
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00114$
;src/main.c:2335: case 4: bajando_entrar(M_izquierda, pro); break;
00112$:
	push	bc
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	call	_bajando_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00114$
;src/main.c:2336: case 5: subiendo_entrar(M_arriba, pro); break;
00113$:
	push	bc
	push	bc
	ld	a,#0x03
	push	af
	inc	sp
	call	_subiendo_entrar
	pop	af
	inc	sp
	pop	bc
;src/main.c:2337: }
00114$:
;src/main.c:2338: pro->mover = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ld	sp, ix
	pop	ix
	ret
;src/main.c:2370: void moverDerecha(TProta * pro) { 
;	---------------------------------
; Function moverDerecha
; ---------------------------------
_moverDerecha::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/main.c:2371: TProta * proOpuesto=&protaDos;
	ld	bc,#_protaDos+0
;src/main.c:2372: if(pro->soy==2){
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	pop	iy
	ld	a,27 (iy)
	sub	a, #0x02
	jr	NZ,00102$
;src/main.c:2373: proOpuesto=&prota;
	ld	bc,#_prota
00102$:
;src/main.c:2376: if(pro->mira==M_derecha){
	ld	hl,#0x000C
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	or	a, a
	jr	NZ,00113$
;src/main.c:2377: if(validarColision(2, pro,1))
	push	bc
	push	de
	ld	a,#0x01
	push	af
	inc	sp
	push	de
	ld	a,#0x02
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	pop	de
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00113$
;src/main.c:2378: if(noChocar()==SI && proOpuesto->x>pro->x){
	push	bc
	push	de
	call	_noChocar
	ld	a,l
	pop	de
	pop	bc
	push	af
	ld	a,(de)
	ld	-3 (ix),a
	pop	af
	dec	a
	jr	NZ,00106$
	ld	a,(bc)
	ld	c,a
	ld	a,-3 (ix)
	sub	a, c
	jr	C,00113$
00106$:
;src/main.c:2381: else if(pro->x<LIMITE_DERECHO-2){
	ld	a,-3 (ix)
	sub	a, #0x49
	jr	NC,00113$
;src/main.c:2382: pro->x++;
	ld	c,-3 (ix)
	inc	c
	ld	a,c
	ld	(de),a
;src/main.c:2383: pro->columna=(pro->x+2)/6;
	ld	hl,#0x000F
	add	hl,de
	ld	b,#0x00
	inc	bc
	inc	bc
	push	hl
	ld	de,#0x0006
	push	de
	push	bc
	call	__divsint
	pop	af
	pop	af
	ld	c,l
	pop	hl
	ld	(hl),c
;src/main.c:2384: pro->mira  = M_derecha;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
00113$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:2409: void moverIzquierda(TProta * pro) {
;	---------------------------------
; Function moverIzquierda
; ---------------------------------
_moverIzquierda::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/main.c:2410: TProta * proOpuesto=&protaDos;
	ld	bc,#_protaDos+0
;src/main.c:2411: if(pro->soy==2){
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	pop	iy
	ld	a,27 (iy)
	sub	a, #0x02
	jr	NZ,00102$
;src/main.c:2412: proOpuesto=&prota;
	ld	bc,#_prota
00102$:
;src/main.c:2415: if(pro->mira==M_izquierda){
	ld	hl,#0x000C
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l,(hl)
	dec	l
	jr	NZ,00113$
;src/main.c:2416: if(validarColision(0, pro,1))
	push	bc
	push	de
	ld	a,#0x01
	push	af
	inc	sp
	push	de
	xor	a, a
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	pop	de
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00113$
;src/main.c:2417: if(noChocar()==SI && proOpuesto->x<pro->x){
	push	bc
	push	de
	call	_noChocar
	ld	a,l
	pop	de
	pop	bc
	push	af
	ld	a,(de)
	ld	-3 (ix),a
	pop	af
	dec	a
	jr	NZ,00106$
	ld	a,(bc)
	sub	a, -3 (ix)
	jr	C,00113$
00106$:
;src/main.c:2420: else if(pro->x>0){
	ld	a,-3 (ix)
	or	a, a
	jr	Z,00113$
;src/main.c:2421: pro->x--;
	ld	c,-3 (ix)
	dec	c
	ld	a,c
	ld	(de),a
;src/main.c:2422: pro->mira  = M_izquierda;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x01
;src/main.c:2423: pro->columna=(pro->x+2)/6;
	ld	hl,#0x000F
	add	hl,de
	ld	b,#0x00
	inc	bc
	inc	bc
	push	hl
	ld	de,#0x0006
	push	de
	push	bc
	call	__divsint
	pop	af
	pop	af
	ld	c,l
	pop	hl
	ld	(hl),c
00113$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:2443: void andando_animar(u8 mirar, TProta * pro) {
;	---------------------------------
; Function andando_animar
; ---------------------------------
_andando_animar::
;src/main.c:2444: pro->mira  = mirar;
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl,#0x000C
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/main.c:2445: if(++pro->nframe == ANDAR_FRAMES*ANIM_PAUSA)
	ld	hl,#0x000B
	add	hl,bc
	ld	a,(hl)
	inc	a
	ld	(hl),a
;src/main.c:2446: pro->nframe = 0;
	sub	a,#0x06
	ret	NZ
	ld	(hl),a
	ret
;src/main.c:2454: void andando(TProta * pro) {
;	---------------------------------
; Function andando
; ---------------------------------
_andando::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:2455: u8 k=queHayPulsado(pro->soy-1);
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	ld	d,27 (iy)
	dec	d
	push	bc
	push	de
	inc	sp
	call	_queHayPulsado
	inc	sp
	ld	e,l
	pop	bc
;src/main.c:2456: switch(k) {
	ld	a,#0x05
	sub	a, e
	jp	C,00111$
;src/main.c:2457: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
	ld	iy,#0x000C
	add	iy, bc
;src/main.c:2456: switch(k) {
	ld	d,#0x00
	ld	hl,#00130$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00130$:
	jp	00101$
	jp	00102$
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
;src/main.c:2457: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
00101$:
	ld	d, 0 (iy)
	push	bc
	push	bc
	push	de
	inc	sp
	call	_quieto_entrar
	pop	af
	inc	sp
	pop	bc
	jp	00111$
;src/main.c:2458: case 1:   if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
00102$:
	ld	l, c
	ld	h, b
	ld	de, #0x0015
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	NZ,00111$
	ld	l, c
	ld	h, b
	ld	de, #0x0014
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	Z,00111$
	ld	l, c
	ld	h, b
	ld	de, #0x0016
	add	hl, de
	ld	e,(hl)
	ld	a,#0x1E
	sub	a, e
	jr	NC,00111$
;src/main.c:2459: disparo_entrar(pro->mira, pro);
	ld	d, 0 (iy)
	push	bc
	push	bc
	push	de
	inc	sp
	call	_disparo_entrar
	pop	af
	inc	sp
	pop	bc
;src/main.c:2460: } break;
	jr	00111$
;src/main.c:2461: case 2: moverDerecha(pro);   andando_animar(M_derecha, pro);   break;
00107$:
	push	bc
	push	bc
	call	_moverDerecha
	pop	af
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_andando_animar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2462: case 3: moverIzquierda(pro); andando_animar(M_izquierda, pro); break;
00108$:
	push	bc
	push	bc
	call	_moverIzquierda
	pop	af
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_andando_animar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2463: case 4: bajando_entrar(M_izquierda, pro); break;
00109$:
	push	bc
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	call	_bajando_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2464: case 5: subiendo_entrar(M_arriba, pro); break;
00110$:
	push	bc
	push	bc
	ld	a,#0x03
	push	af
	inc	sp
	call	_subiendo_entrar
	pop	af
	inc	sp
	pop	bc
;src/main.c:2465: }
00111$:
;src/main.c:2466: pro->mover = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	pop	ix
	ret
;src/main.c:2483: void andando_entrar(u8 mirar, TProta * pro){
;	---------------------------------
; Function andando_entrar
; ---------------------------------
_andando_entrar::
;src/main.c:2484: pro->nframe = 0;
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
;src/main.c:2485: pro->estado = ST_andando;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x03
;src/main.c:2486: pro->mira   = mirar;
	ld	hl,#0x000C
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/main.c:2487: pro->mover  = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ret
;src/main.c:2496: void moverAbajo(TProta * pro){
;	---------------------------------
; Function moverAbajo
; ---------------------------------
_moverAbajo::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:2497: TProta * proOpuesto=&protaDos;
	ld	-4 (ix),#<(_protaDos)
	ld	-3 (ix),#>(_protaDos)
;src/main.c:2498: if(pro->soy==2){
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	ld	a,27 (iy)
	sub	a, #0x02
	jr	NZ,00102$
;src/main.c:2499: proOpuesto=&prota;
	ld	-4 (ix),#<(_prota)
	ld	-3 (ix),#>(_prota)
00102$:
;src/main.c:2502: if(validarColision(3, pro,1))
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	push	bc
	ld	a,#0x03
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00111$
;src/main.c:2503: if(noChocar()==SI && proOpuesto->y>pro->y){
	push	bc
	call	_noChocar
	ld	d,l
	pop	bc
	ld	hl,#0x0001
	add	hl,bc
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	dec	d
	jr	NZ,00106$
	pop	hl
	push	hl
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a, d
	jr	C,00111$
00106$:
;src/main.c:2506: else if(pro->y < 184){
	ld	a,e
	sub	a, #0xB8
	jr	NC,00111$
;src/main.c:2507: pro->y=pro->y+2;
	inc	e
	inc	e
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),e
;src/main.c:2508: pro->fila=(pro->y-22+7)/16;
	ld	hl,#0x000E
	add	hl,bc
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	d,#0x00
	ld	hl,#0xFFF1
	add	hl,de
	inc	sp
	inc	sp
	push	hl
	bit	7, h
	jr	Z,00113$
	inc	sp
	inc	sp
	push	de
00113$:
	pop	de
	push	de
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),e
;src/main.c:2509: pro->mira  = M_abajo;
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x02
00111$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:2528: void abajo_animar(TProta * pro) {
;	---------------------------------
; Function abajo_animar
; ---------------------------------
_abajo_animar::
;src/main.c:2529: pro->mira  = M_abajo;
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x02
;src/main.c:2530: if(++pro->nframe == BAJAR_FRAMES*ANIM_PAUSA)
	ld	hl,#0x000B
	add	hl,bc
	ld	a,(hl)
	inc	a
	ld	(hl),a
;src/main.c:2531: pro->nframe = 0;
	sub	a,#0x06
	ret	NZ
	ld	(hl),a
	ret
;src/main.c:2539: void bajando(TProta * pro) {
;	---------------------------------
; Function bajando
; ---------------------------------
_bajando::
;src/main.c:2540: u8 k = queHayPulsado(pro->soy-1);
	pop	de
	pop	bc
	push	bc
	push	de
	push	bc
	pop	iy
	ld	d,27 (iy)
	dec	d
	push	bc
	push	de
	inc	sp
	call	_queHayPulsado
	inc	sp
	ld	e,l
	pop	bc
;src/main.c:2541: switch(k) {
	ld	a,#0x05
	sub	a, e
	jp	C,00111$
	ld	d,#0x00
	ld	hl,#00130$
	add	hl,de
	add	hl,de
;src/main.c:2542: case 0: quieto_entrar(M_abajo, pro); break; // Nada que hacer
	jp	(hl)
00130$:
	jr	00101$
	jr	00102$
	jr	00107$
	jr	00108$
	jr	00109$
	jr	00110$
00101$:
	push	bc
	push	bc
	ld	a,#0x02
	push	af
	inc	sp
	call	_quieto_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2543: case 1:   if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
00102$:
	push	bc
	pop	iy
	ld	a,21 (iy)
	or	a, a
	jr	NZ,00111$
	push	bc
	pop	iy
	ld	a,20 (iy)
	or	a, a
	jr	Z,00111$
	push	bc
	pop	iy
	ld	e,22 (iy)
	ld	a,#0x1E
	sub	a, e
	jr	NC,00111$
;src/main.c:2544: disparoAbajo_entrar(pro); 
	push	bc
	push	bc
	call	_disparoAbajo_entrar
	pop	af
	pop	bc
;src/main.c:2546: break; 
	jr	00111$
;src/main.c:2547: case 2: andando_entrar(M_derecha, pro);   break;
00107$:
	push	bc
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2548: case 3: andando_entrar(M_izquierda, pro); break;
00108$:
	push	bc
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2549: case 4: moverAbajo(pro); abajo_animar(pro); break;
00109$:
	push	bc
	push	bc
	call	_moverAbajo
	pop	af
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_abajo_animar
	pop	af
	pop	bc
	jr	00111$
;src/main.c:2550: case 5: subiendo_entrar(M_arriba, pro); break;
00110$:
	push	bc
	push	bc
	ld	a,#0x03
	push	af
	inc	sp
	call	_subiendo_entrar
	pop	af
	inc	sp
	pop	bc
;src/main.c:2551: }
00111$:
;src/main.c:2552: pro->mover = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ret
;src/main.c:2569: void bajando_entrar(u8 mirar, TProta * pro){
;	---------------------------------
; Function bajando_entrar
; ---------------------------------
_bajando_entrar::
;src/main.c:2570: pro->nframe = 0;
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
;src/main.c:2571: pro->estado = ST_bajando;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x08
;src/main.c:2572: pro->mira   = mirar;
	ld	hl,#0x000C
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/main.c:2573: pro->mover  = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ret
;src/main.c:2582: void moverArriba(TProta * pro){
;	---------------------------------
; Function moverArriba
; ---------------------------------
_moverArriba::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:2583: TProta * proOpuesto=&protaDos;
	ld	-4 (ix),#<(_protaDos)
	ld	-3 (ix),#>(_protaDos)
;src/main.c:2584: if(pro->soy==2){
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	ld	a,27 (iy)
	sub	a, #0x02
	jr	NZ,00102$
;src/main.c:2585: proOpuesto=&prota;
	ld	-4 (ix),#<(_prota)
	ld	-3 (ix),#>(_prota)
00102$:
;src/main.c:2589: if(validarColision(1, pro,1))
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	call	_validarColision
	pop	af
	pop	af
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00111$
;src/main.c:2590: if(noChocar()==SI && proOpuesto->y<pro->y){
	push	bc
	call	_noChocar
	ld	d,l
	pop	bc
	ld	hl,#0x0001
	add	hl,bc
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	dec	d
	jr	NZ,00106$
	pop	hl
	push	hl
	inc	hl
	ld	a, (hl)
	sub	a, e
	jr	C,00111$
00106$:
;src/main.c:2593: else if(pro->y>ORIGEN_MAPA_Y+22){
	ld	a,#0x16
	sub	a, e
	jr	NC,00111$
;src/main.c:2594: pro->y=pro->y-2;
	dec	e
	dec	e
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),e
;src/main.c:2595: pro->fila=(pro->y-22+7)/16;
	ld	hl,#0x000E
	add	hl,bc
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	d,#0x00
	ld	hl,#0xFFF1
	add	hl,de
	inc	sp
	inc	sp
	push	hl
	bit	7, h
	jr	Z,00113$
	inc	sp
	inc	sp
	push	de
00113$:
	pop	de
	push	de
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),e
;src/main.c:2596: pro->mira  = M_arriba;
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x03
00111$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:2615: void arriba_animar(TProta * pro) {
;	---------------------------------
; Function arriba_animar
; ---------------------------------
_arriba_animar::
;src/main.c:2616: pro->mira  = M_arriba;
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x03
;src/main.c:2617: if(++pro->nframe == SUBIR_FRAMES*ANIM_PAUSA)
	ld	hl,#0x000B
	add	hl,bc
	ld	a,(hl)
	inc	a
	ld	(hl),a
;src/main.c:2618: pro->nframe = 0;
	sub	a,#0x06
	ret	NZ
	ld	(hl),a
	ret
;src/main.c:2626: void subiendo(TProta * pro) {
;	---------------------------------
; Function subiendo
; ---------------------------------
_subiendo::
;src/main.c:2627: u8 k=queHayPulsado(pro->soy-1);
	pop	de
	pop	bc
	push	bc
	push	de
	push	bc
	pop	iy
	ld	d,27 (iy)
	dec	d
	push	bc
	push	de
	inc	sp
	call	_queHayPulsado
	inc	sp
	ld	e,l
	pop	bc
;src/main.c:2628: switch(k) {
	ld	a,#0x05
	sub	a, e
	jp	C,00111$
	ld	d,#0x00
	ld	hl,#00130$
	add	hl,de
	add	hl,de
;src/main.c:2629: case 0: quieto_entrar(M_arriba, pro); break; // Nada que hacer
	jp	(hl)
00130$:
	jr	00101$
	jr	00102$
	jr	00107$
	jr	00108$
	jr	00109$
	jr	00110$
00101$:
	push	bc
	push	bc
	ld	a,#0x03
	push	af
	inc	sp
	call	_quieto_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2630: case 1:   if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
00102$:
	push	bc
	pop	iy
	ld	a,21 (iy)
	or	a, a
	jr	NZ,00111$
	push	bc
	pop	iy
	ld	a,20 (iy)
	or	a, a
	jr	Z,00111$
	push	bc
	pop	iy
	ld	e,22 (iy)
	ld	a,#0x1E
	sub	a, e
	jr	NC,00111$
;src/main.c:2631: disparoArriba_entrar(pro); 
	push	bc
	push	bc
	call	_disparoArriba_entrar
	pop	af
	pop	bc
;src/main.c:2633: break; 
	jr	00111$
;src/main.c:2634: case 2: andando_entrar(M_derecha, pro);   break;
00107$:
	push	bc
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2635: case 3: andando_entrar(M_izquierda, pro); break;
00108$:
	push	bc
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2636: case 4: bajando_entrar(M_abajo, pro); break;
00109$:
	push	bc
	push	bc
	ld	a,#0x02
	push	af
	inc	sp
	call	_bajando_entrar
	pop	af
	inc	sp
	pop	bc
	jr	00111$
;src/main.c:2637: case 5: moverArriba(pro); arriba_animar(pro); break;
00110$:
	push	bc
	push	bc
	call	_moverArriba
	pop	af
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_arriba_animar
	pop	af
	pop	bc
;src/main.c:2638: }
00111$:
;src/main.c:2639: pro->mover = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ret
;src/main.c:2657: void subiendo_entrar(u8 mirar, TProta * pro){
;	---------------------------------
; Function subiendo_entrar
; ---------------------------------
_subiendo_entrar::
;src/main.c:2658: pro->nframe = 0;
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
;src/main.c:2659: pro->estado = ST_subiendo;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x07
;src/main.c:2660: pro->mira   = mirar;
	ld	hl,#0x000C
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/main.c:2661: pro->mover  = SI;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
	ret
;src/main.c:2671: void quieto(TProta * pro) {
;	---------------------------------
; Function quieto
; ---------------------------------
_quieto::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:2672: u8 k=queHayPulsado(pro->soy-1);
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	ld	d,27 (iy)
	dec	d
	push	bc
	push	de
	inc	sp
	call	_queHayPulsado
	inc	sp
	ld	e,l
	pop	bc
;src/main.c:2673: switch(k) {
	ld	a,#0x05
	sub	a, e
	jp	C,00119$
;src/main.c:2674: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
	ld	iy,#0x000C
	add	iy, bc
;src/main.c:2673: switch(k) {
	ld	d,#0x00
	ld	hl,#00145$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00145$:
	jp	00101$
	jp	00102$
	jp	00114$
	jp	00115$
	jp	00116$
	jp	00117$
;src/main.c:2674: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
00101$:
	ld	d, 0 (iy)
	push	bc
	push	de
	inc	sp
	call	_quieto_entrar
	pop	af
	inc	sp
	jp	00119$
;src/main.c:2675: case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
00102$:
	ld	l, c
	ld	h, b
	ld	de, #0x0015
	add	hl, de
	ld	a,(hl)
;src/main.c:2674: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
	ld	d, 0 (iy)
;src/main.c:2675: case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
	or	a, a
	jr	NZ,00110$
	push	bc
	pop	iy
	ld	a,20 (iy)
	or	a, a
	jr	Z,00110$
	push	bc
	pop	iy
	ld	e,22 (iy)
	ld	a,#0x1E
	sub	a, e
	jr	NC,00110$
;src/main.c:2676: if(pro->mira == M_arriba){
	ld	a,d
	sub	a, #0x03
	jr	NZ,00107$
;src/main.c:2677: disparoArriba_entrar(pro);
	push	bc
	call	_disparoArriba_entrar
	pop	af
	jr	00119$
00107$:
;src/main.c:2678: }else if(pro->mira == M_abajo){
	ld	a,d
	sub	a, #0x02
	jr	NZ,00104$
;src/main.c:2679: disparoAbajo_entrar(pro);
	push	bc
	call	_disparoAbajo_entrar
	pop	af
	jr	00119$
00104$:
;src/main.c:2681: disparo_entrar(pro->mira, pro);
	push	bc
	push	de
	inc	sp
	call	_disparo_entrar
	pop	af
	inc	sp
	jr	00119$
00110$:
;src/main.c:2685: quieto_entrar(pro->mira, pro);
	push	bc
	push	de
	inc	sp
	call	_quieto_entrar
	pop	af
	inc	sp
;src/main.c:2687: break;
	jr	00119$
;src/main.c:2688: case 2: andando_entrar(M_derecha, pro);   break;
00114$:
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
	jr	00119$
;src/main.c:2689: case 3: andando_entrar(M_izquierda, pro); break;
00115$:
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	call	_andando_entrar
	pop	af
	inc	sp
	jr	00119$
;src/main.c:2690: case 4: bajando_entrar(M_abajo, pro); break;
00116$:
	push	bc
	ld	a,#0x02
	push	af
	inc	sp
	call	_bajando_entrar
	pop	af
	inc	sp
	jr	00119$
;src/main.c:2691: case 5: subiendo_entrar(M_arriba, pro); break;  
00117$:
	push	bc
	ld	a,#0x03
	push	af
	inc	sp
	call	_subiendo_entrar
	pop	af
	inc	sp
;src/main.c:2696: }
00119$:
	pop	ix
	ret
;src/main.c:2722: void ejecutarEstado(u8 soy) {
;	---------------------------------
; Function ejecutarEstado
; ---------------------------------
_ejecutarEstado::
;src/main.c:2723: TProta * pro=&prota;
	ld	bc,#_prota+0
;src/main.c:2724: if(soy==2){
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ,00102$
;src/main.c:2725: pro=&protaDos;
	ld	bc,#_protaDos
00102$:
;src/main.c:2727: switch(pro->estado) {
	push	bc
	pop	iy
	ld	e,8 (iy)
	ld	a,#0x08
	sub	a, e
	jr	C,00112$
	ld	d,#0x00
	ld	hl,#00132$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00132$:
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
	jp	00111$
;src/main.c:2728: case ST_quieto:      quieto(pro);      break;
00103$:
	push	bc
	push	bc
	call	_quieto
	pop	af
	pop	bc
	jr	00112$
;src/main.c:2729: case ST_quietoAbaj:  quieto(pro);      break;
00104$:
	push	bc
	push	bc
	call	_quieto
	pop	af
	pop	bc
	jr	00112$
;src/main.c:2730: case ST_quietoArri:  quieto(pro);      break;
00105$:
	push	bc
	push	bc
	call	_quieto
	pop	af
	pop	bc
	jr	00112$
;src/main.c:2731: case ST_andando:     andando(pro);     break;
00106$:
	push	bc
	push	bc
	call	_andando
	pop	af
	pop	bc
	jr	00112$
;src/main.c:2732: case ST_atacando:     atacando(pro);     break;
00107$:
	push	bc
	push	bc
	call	_atacando
	pop	af
	pop	bc
	jr	00112$
;src/main.c:2733: case ST_atacandoBaj:     atacando(pro);     break;
00108$:
	push	bc
	push	bc
	call	_atacando
	pop	af
	pop	bc
	jr	00112$
;src/main.c:2734: case ST_atacandoSub:     atacando(pro);     break;
00109$:
	push	bc
	push	bc
	call	_atacando
	pop	af
	pop	bc
	jr	00112$
;src/main.c:2735: case ST_subiendo:    subiendo(pro);    break;
00110$:
	push	bc
	push	bc
	call	_subiendo
	pop	af
	pop	bc
	jr	00112$
;src/main.c:2736: case ST_bajando:     bajando(pro);     break;
00111$:
	push	bc
	push	bc
	call	_bajando
	pop	af
	pop	bc
;src/main.c:2737: }
00112$:
;src/main.c:2740: if(!pro->llavecogida)
	push	bc
	pop	iy
	ld	e,25 (iy)
;src/main.c:2741: comprobarLlave(pro->soy-1);
	ld	hl,#0x001B
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	d,a
	dec	d
;src/main.c:2740: if(!pro->llavecogida)
	ld	a,e
	or	a, a
	jr	NZ,00114$
;src/main.c:2741: comprobarLlave(pro->soy-1);
	push	bc
	push	de
	inc	sp
	call	_comprobarLlave
	inc	sp
	pop	bc
	jr	00115$
00114$:
;src/main.c:2743: comprobarPuerta(pro->soy-1);
	push	bc
	push	de
	inc	sp
	call	_comprobarPuerta
	inc	sp
	pop	bc
00115$:
;src/main.c:2745: comprobarRecargaMunicion(pro->soy-1);
	ld	a,(bc)
	ld	b,a
	dec	b
	push	bc
	inc	sp
	call	_comprobarRecargaMunicion
	inc	sp
	ret
;src/main.c:2774: void inicializaJimmy(){
;	---------------------------------
; Function inicializaJimmy
; ---------------------------------
_inicializaJimmy::
;src/main.c:2778: prota.identidad = 0;
	ld	hl,#(_prota + 0x0002)
	ld	(hl),#0x00
;src/main.c:2779: prota.x         = prota.px = 6;
	ld	hl,#(_prota + 0x0003)
	ld	(hl),#0x06
	ld	hl,#_prota
	ld	(hl),#0x06
;src/main.c:2780: prota.y         = prota.py = 26;
	ld	hl,#(_prota + 0x0004)
	ld	(hl),#0x1A
	ld	hl,#(_prota + 0x0001)
	ld	(hl),#0x1A
;src/main.c:2781: prota.fila = 0;
	ld	hl,#(_prota + 0x000e)
	ld	(hl),#0x00
;src/main.c:2782: prota.columna = 0;
	ld	hl,#(_prota + 0x000f)
	ld	(hl),#0x00
;src/main.c:2783: prota.abajo = 0;
	ld	hl,#(_prota + 0x0010)
	ld	(hl),#0x00
;src/main.c:2784: prota.derecha = 0;
	ld	hl,#(_prota + 0x0011)
	ld	(hl),#0x00
;src/main.c:2785: prota.arriba = 0;
	ld	hl,#(_prota + 0x0013)
	ld	(hl),#0x00
;src/main.c:2786: prota.izquierda = 0;
	ld	hl,#(_prota + 0x0012)
	ld	(hl),#0x00
;src/main.c:2787: prota.mover     = NO;
	ld	hl,#(_prota + 0x0007)
	ld	(hl),#0x00
;src/main.c:2788: prota.nframe=0;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x00
;src/main.c:2789: prota.estado = ST_quieto;
	ld	hl,#(_prota + 0x0008)
	ld	(hl),#0x00
;src/main.c:2790: prota.mira   = M_abajo;
	ld	hl,#(_prota + 0x000c)
	ld	(hl),#0x02
;src/main.c:2791: prota.frame    = &g_frames[4];
	ld	hl,#(_g_frames + 0x000c)
	ld	((_prota + 0x0009)), hl
;src/main.c:2792: prota.direccion = 0;
	ld	hl,#(_prota + 0x000d)
	ld	(hl),#0x00
;src/main.c:2793: prota.disparando = NO;
	ld	hl,#(_prota + 0x0015)
	ld	(hl),#0x00
;src/main.c:2794: prota.contadorAtaque = 0;
	ld	hl,#(_prota + 0x0017)
	ld	(hl),#0x00
;src/main.c:2795: prota.llavecogida = NO;
	ld	hl,#(_prota + 0x0019)
	ld	(hl),#0x00
;src/main.c:2796: prota.tiempoDisp=1;
	ld	hl,#(_prota + 0x0016)
	ld	(hl),#0x01
;src/main.c:2797: prota.soy=1;
	ld	hl,#(_prota + 0x001b)
	ld	(hl),#0x01
	ret
;src/main.c:2803: void inicializaObdulia(){
;	---------------------------------
; Function inicializaObdulia
; ---------------------------------
_inicializaObdulia::
;src/main.c:2807: protaDos.identidad = 1;
	ld	hl,#(_protaDos + 0x0002)
	ld	(hl),#0x01
;src/main.c:2808: protaDos.x         = protaDos.px = 6*11;
	ld	hl,#(_protaDos + 0x0003)
	ld	(hl),#0x42
	ld	hl,#_protaDos
	ld	(hl),#0x42
;src/main.c:2809: protaDos.y         = protaDos.py = 40+(16*8);
	ld	hl,#(_protaDos + 0x0004)
	ld	(hl),#0xA8
	ld	hl,#(_protaDos + 0x0001)
	ld	(hl),#0xA8
;src/main.c:2810: protaDos.fila = 0;
	ld	hl,#(_protaDos + 0x000e)
	ld	(hl),#0x00
;src/main.c:2811: protaDos.columna = 0;
	ld	hl,#(_protaDos + 0x000f)
	ld	(hl),#0x00
;src/main.c:2812: protaDos.abajo = 0;
	ld	hl,#(_protaDos + 0x0010)
	ld	(hl),#0x00
;src/main.c:2813: protaDos.derecha = 0;
	ld	hl,#(_protaDos + 0x0011)
	ld	(hl),#0x00
;src/main.c:2814: protaDos.arriba = 0;
	ld	hl,#(_protaDos + 0x0013)
	ld	(hl),#0x00
;src/main.c:2815: protaDos.izquierda = 0;
	ld	hl,#(_protaDos + 0x0012)
	ld	(hl),#0x00
;src/main.c:2816: protaDos.mover     = NO;
	ld	hl,#(_protaDos + 0x0007)
	ld	(hl),#0x00
;src/main.c:2817: protaDos.nframe=0;
	ld	hl,#(_protaDos + 0x000b)
	ld	(hl),#0x00
;src/main.c:2818: protaDos.estado = ST_quieto;
	ld	hl,#(_protaDos + 0x0008)
	ld	(hl),#0x00
;src/main.c:2819: protaDos.mira   = M_abajo;
	ld	hl,#(_protaDos + 0x000c)
	ld	(hl),#0x02
;src/main.c:2820: protaDos.frame    = &g_framesDos[4];
	ld	hl,#(_g_framesDos + 0x000c)
	ld	((_protaDos + 0x0009)), hl
;src/main.c:2821: protaDos.direccion = 0;
	ld	hl,#(_protaDos + 0x000d)
	ld	(hl),#0x00
;src/main.c:2822: protaDos.disparando = NO;
	ld	hl,#(_protaDos + 0x0015)
	ld	(hl),#0x00
;src/main.c:2823: protaDos.contadorAtaque = 0;
	ld	hl,#(_protaDos + 0x0017)
	ld	(hl),#0x00
;src/main.c:2824: protaDos.llavecogida = NO;
	ld	hl,#(_protaDos + 0x0019)
	ld	(hl),#0x00
;src/main.c:2825: protaDos.tiempoDisp=1;
	ld	hl,#(_protaDos + 0x0016)
	ld	(hl),#0x01
;src/main.c:2826: protaDos.soy=2;
	ld	hl,#(_protaDos + 0x001b)
	ld	(hl),#0x02
	ret
;src/main.c:2833: void inicializar() {
;	---------------------------------
; Function inicializar
; ---------------------------------
_inicializar::
;src/main.c:2835: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/main.c:2836: cpct_setVideoMode(0);
	ld	l,#0x00
	call	_cpct_setVideoMode
;src/main.c:2837: cpct_setBorder(HW_BLACK);
	ld	hl,#0x1410
	push	hl
	call	_cpct_setPALColour
;src/main.c:2838: cpct_setPalette(pre_palette, 16);
	ld	hl,#0x0010
	push	hl
	ld	hl,#_pre_palette
	push	hl
	call	_cpct_setPalette
;src/main.c:2840: prota.controles = 0;
	ld	hl,#(_prota + 0x001a)
	ld	(hl),#0x00
;src/main.c:2841: protaDos.controles = 1;
	ld	hl,#(_protaDos + 0x001a)
	ld	(hl),#0x01
;src/main.c:2844: cpct_etm_setTileset2x4(pre_tileset);
	ld	hl,#_pre_tileset
	call	_cpct_etm_setTileset2x4
;src/main.c:2845: mapa = pre_terrain;
	ld	hl,#_pre_terrain+0
	ld	(_mapa),hl
;src/main.c:2846: seleccionMusica = 0;
	ld	hl,#_seleccionMusica + 0
	ld	(hl), #0x00
;src/main.c:2847: musica = 0;
	ld	hl,#_musica + 0
	ld	(hl), #0x00
;src/main.c:2848: estado = 3; 
	ld	hl,#_estado + 0
	ld	(hl), #0x03
;src/main.c:2849: seleccion = 0;
	ld	hl,#_seleccion + 0
	ld	(hl), #0x00
;src/main.c:2850: seleccionControles = 0;
	ld	hl,#_seleccionControles + 0
	ld	(hl), #0x00
;src/main.c:2851: keyCounter = 0; 
	ld	hl,#_keyCounter + 0
	ld	(hl), #0x00
;src/main.c:2852: cpct_akp_musicInit(pre_music_presentation);
	ld	hl,#_pre_music_presentation
	push	hl
	call	_cpct_akp_musicInit
	pop	af
;src/main.c:2854: cpct_setInterruptHandler(intHandler);
	ld	hl,#_intHandler
	call	_cpct_setInterruptHandler
;src/main.c:2861: disparo.sprite = pre_disparo;
	ld	hl,#_pre_disparo
	ld	((_disparo + 0x0005)), hl
;src/main.c:2862: disparo.x = 0;
	ld	hl,#_disparo
	ld	(hl),#0x00
;src/main.c:2863: disparo.y = 0;
	ld	hl,#(_disparo + 0x0001)
	ld	(hl),#0x00
;src/main.c:2864: disparo.pegado=0;
	ld	hl,#(_disparo + 0x0007)
	ld	(hl),#0x00
;src/main.c:2866: disparoDos.sprite = pre_disparo;
	ld	hl,#_pre_disparo
	ld	((_disparoDos + 0x0005)), hl
;src/main.c:2867: disparoDos.x = 0;
	ld	hl,#_disparoDos
	ld	(hl),#0x00
;src/main.c:2868: disparoDos.y = 0;
	ld	hl,#(_disparoDos + 0x0001)
	ld	(hl),#0x00
;src/main.c:2869: disparoDos.pegado=0;
	ld	hl,#(_disparoDos + 0x0007)
	ld	(hl),#0x00
;src/main.c:2871: ronda=0;
	ld	hl,#_ronda + 0
	ld	(hl), #0x00
;src/main.c:2873: dibujarPortada();
	call	_dibujarPortada
	ret
;src/main.c:2885: void inicializarPartida(){
;	---------------------------------
; Function inicializarPartida
; ---------------------------------
_inicializarPartida::
;src/main.c:2889: if(ronda == 0 && estado == 0){
	ld	a,(#_ronda + 0)
	or	a, a
	jr	NZ,00108$
	ld	a,(#_estado + 0)
	or	a, a
	jr	NZ,00108$
;src/main.c:2891: if(musica) cpct_akp_stop();
	ld	a,(#_musica + 0)
	or	a, a
	jr	Z,00102$
	call	_cpct_akp_stop
00102$:
;src/main.c:2892: if(musica){cpct_akp_stop();musica=0;}
	ld	a,(#_musica + 0)
	or	a, a
	jr	Z,00104$
	call	_cpct_akp_stop
	ld	hl,#_musica + 0
	ld	(hl), #0x00
00104$:
;src/main.c:2893: cpct_akp_musicInit(pre_music_battle); 
	ld	hl,#_pre_music_battle
	push	hl
	call	_cpct_akp_musicInit
	pop	af
;src/main.c:2894: if(seleccionMusica)musica = 1;
	ld	a,(#_seleccionMusica + 0)
	or	a, a
	jr	Z,00106$
	ld	hl,#_musica + 0
	ld	(hl), #0x01
00106$:
;src/main.c:2895: estado = 6;
	ld	hl,#_estado + 0
	ld	(hl), #0x06
;src/main.c:2896: dibujarAyuda();
	call	_dibujarAyuda
;src/main.c:2897: lastWinner = 0;
	ld	hl,#_lastWinner + 0
	ld	(hl), #0x00
00108$:
;src/main.c:2904: if(estado == 1){
	ld	a,(#_estado + 0)
	dec	a
	jr	NZ,00114$
;src/main.c:2906: dibujarGetPsyched();
	call	_dibujarGetPsyched
;src/main.c:2907: dibujarMapa();
	call	_dibujarMapa
;src/main.c:2908: prota.llavecogida = 0;
	ld	hl,#(_prota + 0x0019)
	ld	(hl),#0x00
;src/main.c:2909: protaDos.llavecogida = 0;
	ld	hl,#(_protaDos + 0x0019)
	ld	(hl),#0x00
;src/main.c:2910: borrarProta();
	call	_borrarProta
;src/main.c:2911: borrarProtaDos();
	call	_borrarProtaDos
;src/main.c:2912: inicializaObdulia();
	call	_inicializaObdulia
;src/main.c:2913: inicializaJimmy();
	call	_inicializaJimmy
;src/main.c:2915: if(ronda == 0){
	ld	a,(#_ronda + 0)
	or	a, a
	jr	NZ,00111$
;src/main.c:2917: prota.marcador=0;
	ld	hl,#(_prota + 0x001c)
	ld	(hl),#0x00
;src/main.c:2918: protaDos.marcador=0;
	ld	hl,#(_protaDos + 0x001c)
	ld	(hl),#0x00
;src/main.c:2920: sumaMarcador(1, 0);//Para poner el prota a 0
	ld	hl,#0x0001
	push	hl
	call	_sumaMarcador
;src/main.c:2921: sumaMarcador(2, 0);//Para poner el protaDos a 0
	ld	hl, #0x0002
	ex	(sp),hl
	call	_sumaMarcador
	pop	af
	jr	00114$
00111$:
;src/main.c:2925: dibujarMarcador();
	call	_dibujarMarcador
00114$:
;src/main.c:2929: if(ronda<10 && estado == 1){
	ld	a,(#_ronda + 0)
	sub	a, #0x0A
	ret	NC
	ld	a,(#_estado + 0)
	dec	a
	ret	NZ
;src/main.c:2931: dibujaBloques();
	call	_dibujaBloques
;src/main.c:2932: bloquearPuertas();
	call	_bloquearPuertas
;src/main.c:2933: borrarLlave(2);
	ld	a,#0x02
	push	af
	inc	sp
	call	_borrarLlave
	inc	sp
;src/main.c:2934: borrarLlave(3);
	ld	a,#0x03
	push	af
	inc	sp
	call	_borrarLlave
	inc	sp
;src/main.c:2935: dibujarLlave(0);
	xor	a, a
	push	af
	inc	sp
	call	_dibujarLlave
	inc	sp
;src/main.c:2936: dibujarLlave(2);
	ld	a,#0x02
	push	af
	inc	sp
	call	_dibujarLlave
	inc	sp
;src/main.c:2937: recargarMunicion(0);
	xor	a, a
	push	af
	inc	sp
	call	_recargarMunicion
	inc	sp
;src/main.c:2938: recargarMunicion(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_recargarMunicion
	inc	sp
	ret
;src/main.c:2946: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:2950: inicializar();
	call	_inicializar
;src/main.c:2952: while (1){
00139$:
;src/main.c:2953: if(estado!=1){
	ld	a,(#_estado + 0)
	dec	a
	jr	Z,00102$
;src/main.c:2954: tiempo++;
	ld	hl, #_tiempo+0
	inc	(hl)
	jr	NZ,00216$
	ld	hl, #_tiempo+1
	inc	(hl)
	jr	NZ,00216$
	ld	hl, #_tiempo+2
	inc	(hl)
	jr	NZ,00216$
	ld	hl, #_tiempo+3
	inc	(hl)
00216$:
00102$:
;src/main.c:2958: comprobarTeclado();
	call	_comprobarTeclado
;src/main.c:2962: if(prota.disparando==SI && protaDos.disparando==SI){
	ld	a, (#(_prota + 0x0015) + 0)
	dec	a
	jr	NZ,00104$
	ld	a, (#(_protaDos + 0x0015) + 0)
	dec	a
	jr	NZ,00104$
;src/main.c:2963: compruebaDisparos();
	call	_compruebaDisparos
00104$:
;src/main.c:2967: if(prota.disparando == SI){
	ld	hl, #(_prota + 0x0015) + 0
	ld	c,(hl)
;src/main.c:2972: prota.tiempoDisp=1;
;src/main.c:2967: if(prota.disparando == SI){
	dec	c
	jr	NZ,00114$
;src/main.c:2969: atacar(prota.soy);
	ld	bc,#_prota + 27
	ld	a,(bc)
	ld	d,a
	push	bc
	push	de
	inc	sp
	call	_atacar
	inc	sp
	pop	bc
;src/main.c:2962: if(prota.disparando==SI && protaDos.disparando==SI){
	ld	hl, #(_prota + 0x0015) + 0
	ld	e,(hl)
;src/main.c:2970: if(prota.disparando==SI && prota.miraAtacando==M_abajo || prota.disparando==SI &&  prota.miraAtacando==M_arriba)
	ld	hl,#_prota + 24
	dec	e
	jr	NZ,00223$
	ld	a,#0x01
	jr	00224$
00223$:
	xor	a,a
00224$:
	ld	e,a
	or	a, a
	jr	Z,00110$
	ld	a,(hl)
	sub	a, #0x02
	jr	Z,00106$
00110$:
	ld	a,e
	or	a, a
	jr	Z,00107$
	ld	a,(hl)
	sub	a, #0x03
	jr	NZ,00107$
00106$:
;src/main.c:2971: atacar(prota.soy);
	ld	a,(bc)
	ld	b,a
	push	bc
	inc	sp
	call	_atacar
	inc	sp
00107$:
;src/main.c:2972: prota.tiempoDisp=1;
	ld	hl,#(_prota + 0x0016)
	ld	(hl),#0x01
	jr	00115$
00114$:
;src/main.c:2976: if(prota.tiempoDisp<100)
	ld	hl, #(_prota + 0x0016) + 0
	ld	c,(hl)
	ld	a,c
	sub	a, #0x64
	jr	NC,00115$
;src/main.c:2977: prota.tiempoDisp++;
	inc	c
	ld	hl,#(_prota + 0x0016)
	ld	(hl),c
00115$:
;src/main.c:2980: if(protaDos.disparando == SI){
	ld	hl, #(_protaDos + 0x0015) + 0
	ld	e,(hl)
;src/main.c:2985: protaDos.tiempoDisp=1;
	ld	bc,#_protaDos + 22
;src/main.c:2980: if(protaDos.disparando == SI){
	dec	e
	jr	NZ,00124$
;src/main.c:2982: atacar(protaDos.soy);
	ld	hl, #(_protaDos + 0x001b) + 0
	ld	d,(hl)
	push	bc
	push	de
	inc	sp
	call	_atacar
	inc	sp
	pop	bc
;src/main.c:2980: if(protaDos.disparando == SI){
	ld	hl, #(_protaDos + 0x0015) + 0
	ld	e,(hl)
;src/main.c:2983: if(protaDos.disparando==SI && protaDos.miraAtacando==M_abajo || protaDos.disparando==SI &&  protaDos.miraAtacando==M_arriba)
	ld	hl,#_protaDos + 24
	dec	e
	jr	NZ,00230$
	ld	a,#0x01
	jr	00231$
00230$:
	xor	a,a
00231$:
	ld	e,a
	or	a, a
	jr	Z,00120$
	ld	a,(hl)
	sub	a, #0x02
	jr	Z,00116$
00120$:
	ld	a,e
	or	a, a
	jr	Z,00117$
	ld	a,(hl)
	sub	a, #0x03
	jr	NZ,00117$
00116$:
;src/main.c:2984: atacar(protaDos.soy);
	ld	hl, #(_protaDos + 0x001b) + 0
	ld	d,(hl)
	push	bc
	push	de
	inc	sp
	call	_atacar
	inc	sp
	pop	bc
00117$:
;src/main.c:2985: protaDos.tiempoDisp=1;
	ld	a,#0x01
	ld	(bc),a
	jr	00125$
00124$:
;src/main.c:2989: if(protaDos.tiempoDisp<100)
	ld	a,(bc)
	ld	e,a
	sub	a, #0x64
	jr	NC,00125$
;src/main.c:2990: protaDos.tiempoDisp++;
	inc	e
	ld	a,e
	ld	(bc),a
00125$:
;src/main.c:2995: if(estado == 0 || estado == 2 || estado == 4){
	ld	a,(#_estado + 0)
	or	a, a
	jr	Z,00128$
	ld	a,(#_estado + 0)
	cp	a,#0x02
	jr	Z,00128$
	sub	a, #0x04
	jr	NZ,00129$
00128$:
;src/main.c:2996: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/main.c:2999: if(keyCounter<10)
	ld	a,(#_keyCounter + 0)
	sub	a, #0x0A
	jr	NC,00129$
;src/main.c:3000: keyCounter++;
	ld	hl, #_keyCounter+0
	inc	(hl)
00129$:
;src/main.c:3004: if(estado == 1){
	ld	a,(#_estado + 0)
	dec	a
	jp	NZ,00139$
;src/main.c:3006: ejecutarEstado(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_ejecutarEstado
	inc	sp
;src/main.c:3007: ejecutarEstado(2);
	ld	a,#0x02
	push	af
	inc	sp
	call	_ejecutarEstado
	inc	sp
;src/main.c:3009: if (protaDos.mover) {
	ld	a, (#(_protaDos + 0x0007) + 0)
	or	a, a
	jr	Z,00133$
;src/main.c:3011: seleccionarSpriteProtaDos();
	call	_seleccionarSpriteProtaDos
;src/main.c:3012: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/main.c:3013: redibujarProtaDos();
	call	_redibujarProtaDos
;src/main.c:3014: protaDos.mover = NO;
	ld	hl,#(_protaDos + 0x0007)
	ld	(hl),#0x00
00133$:
;src/main.c:3016: if (prota.mover) {
	ld	a, (#(_prota + 0x0007) + 0)
	or	a, a
	jp	Z,00139$
;src/main.c:3018: seleccionarSpriteProta();
	call	_seleccionarSpriteProta
;src/main.c:3019: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/main.c:3020: redibujarProta();
	call	_redibujarProta
;src/main.c:3021: prota.mover = NO;
	ld	hl,#(_prota + 0x0007)
	ld	(hl),#0x00
	jp	00139$
	.area _CODE
	.area _INITIALIZER
__xinit__tiempo:
	.byte #0x02,#0x00,#0x00,#0x00	; 2
__xinit__encontrado:
	.db #0x01	; 1
	.area _CABS (ABS)
