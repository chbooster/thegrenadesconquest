                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (CYGWIN)
                              4 ;--------------------------------------------------------
                              5 	.module main
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _main
                             12 	.globl _inicializar
                             13 	.globl _ejecutarEstado
                             14 	.globl _quieto
                             15 	.globl _subiendo
                             16 	.globl _moverArriba
                             17 	.globl _bajando
                             18 	.globl _moverAbajo
                             19 	.globl _andando
                             20 	.globl _moverIzquierda
                             21 	.globl _moverDerecha
                             22 	.globl _atacando
                             23 	.globl _queHayPulsado
                             24 	.globl _disparo_animar
                             25 	.globl _disparo_entrar
                             26 	.globl _disparoAbajo_entrar
                             27 	.globl _disparoArriba_entrar
                             28 	.globl _quieto_entrar
                             29 	.globl _noChocar
                             30 	.globl _compruebaTeclas
                             31 	.globl _comprobarTeclado
                             32 	.globl _compruebaPersonaje
                             33 	.globl _comprobacionesBloquesH
                             34 	.globl _comprobacionesBloques
                             35 	.globl _atacar
                             36 	.globl _dispararArriba
                             37 	.globl _dispararAbajo
                             38 	.globl _dispararIzquierda
                             39 	.globl _dispararDerecha
                             40 	.globl _comprobarDisparo
                             41 	.globl _compruebaDisparos
                             42 	.globl _comprobarLimites
                             43 	.globl _redibujarProtaDos
                             44 	.globl _redibujarProta
                             45 	.globl _borrarProtaDos
                             46 	.globl _borrarProta
                             47 	.globl _dibujarProtaDos
                             48 	.globl _dibujarProta
                             49 	.globl _refrescarMenu
                             50 	.globl _reset
                             51 	.globl _redefinirControles
                             52 	.globl _dibujarPortada
                             53 	.globl _dibujarPantallaPrincipal
                             54 	.globl _dibujarConfiguracionControles
                             55 	.globl _dibujarCreditos
                             56 	.globl _dibujarTwitter
                             57 	.globl _dibujarVictoria
                             58 	.globl _dibujarGetPsyched
                             59 	.globl _dibujarYellowStripes
                             60 	.globl _dibujarFondoMenu
                             61 	.globl _dibujarAyuda
                             62 	.globl _dibujarGanador
                             63 	.globl _dibujarCaritaPersonaje
                             64 	.globl _llenarVmem
                             65 	.globl _dibujarMapa
                             66 	.globl _comprobarRecargaMunicion
                             67 	.globl _recargarMunicion
                             68 	.globl _decrecerMunicion
                             69 	.globl _actualizarMunicion
                             70 	.globl _validarColision
                             71 	.globl _compruebaAzul
                             72 	.globl _actualizarMarcadorMunicion
                             73 	.globl _comprobarLlave
                             74 	.globl _comprobarPuerta
                             75 	.globl _sumaMarcador
                             76 	.globl _dibujarMarcador
                             77 	.globl _abrirPuerta
                             78 	.globl _bloquearPuertas
                             79 	.globl _borrarLlave
                             80 	.globl _dibujarLlave
                             81 	.globl _dibujaBloques
                             82 	.globl _dibujaGuardaBloque
                             83 	.globl _seleccionarSpriteProtaDos
                             84 	.globl _seleccionarSpriteProta
                             85 	.globl _girarFrameDos
                             86 	.globl _girarFrame
                             87 	.globl _asignarFrameDos
                             88 	.globl _asignarFrame
                             89 	.globl _intHandler
                             90 	.globl _play
                             91 	.globl _sprintf
                             92 	.globl _cpct_etm_setTileset2x4
                             93 	.globl _cpct_etm_drawTileBox2x4
                             94 	.globl _cpct_getRandom_xsp40_u8
                             95 	.globl _cpct_akp_stop
                             96 	.globl _cpct_akp_musicInit
                             97 	.globl _cpct_getScreenPtr
                             98 	.globl _cpct_setPALColour
                             99 	.globl _cpct_setPalette
                            100 	.globl _cpct_waitVSYNC
                            101 	.globl _cpct_setVideoMode
                            102 	.globl _cpct_drawStringM0
                            103 	.globl _cpct_hflipSpriteM0
                            104 	.globl _cpct_drawSpriteMaskedAlignedTable
                            105 	.globl _cpct_drawSprite
                            106 	.globl _cpct_drawTileAligned2x4_f
                            107 	.globl _cpct_get6Bits
                            108 	.globl _cpct_isAnyKeyPressed
                            109 	.globl _cpct_isKeyPressed
                            110 	.globl _cpct_scanKeyboard
                            111 	.globl _cpct_memset
                            112 	.globl _cpct_setInterruptHandler
                            113 	.globl _cpct_disableFirmware
                            114 	.globl _encontrado
                            115 	.globl _tiempo
                            116 	.globl _i
                            117 	.globl _reapareciendo
                            118 	.globl _ronda
                            119 	.globl _keyCounter
                            120 	.globl _musica
                            121 	.globl _seleccionMusica
                            122 	.globl _seleccionControles
                            123 	.globl _seleccion
                            124 	.globl _estado
                            125 	.globl _pos
                            126 	.globl _lastWinner
                            127 	.globl _cantBlo
                            128 	.globl _getpsyched
                            129 	.globl _mapa
                            130 	.globl _menu_bg
                            131 	.globl _EEstados
                            132 	.globl _EEventos
                            133 	.globl _EMirar
                            134 	.globl _disparoDos
                            135 	.globl _disparo
                            136 	.globl _protaDos
                            137 	.globl _prota
                            138 	.globl _totalBloq
                            139 	.globl _anim_bajarDos
                            140 	.globl _anim_atacarBajDos
                            141 	.globl _anim_subirDos
                            142 	.globl _anim_atacarDos
                            143 	.globl _anim_andarDos
                            144 	.globl _anim_bajar
                            145 	.globl _anim_atacarBaj
                            146 	.globl _anim_subir
                            147 	.globl _anim_atacar
                            148 	.globl _anim_andar
                            149 	.globl _g_framesDos
                            150 	.globl _g_frames
                            151 	.globl _matriz
                            152 	.globl _reaparecer
                            153 	.globl _mostrarMenu
                            154 	.globl _borrarDisparoHorizontal
                            155 	.globl _borrarDisparoVertical
                            156 	.globl _borrarBloques
                            157 	.globl _andando_animar
                            158 	.globl _andando_entrar
                            159 	.globl _abajo_animar
                            160 	.globl _bajando_entrar
                            161 	.globl _arriba_animar
                            162 	.globl _subiendo_entrar
                            163 	.globl _inicializaJimmy
                            164 	.globl _inicializaObdulia
                            165 	.globl _inicializarPartida
                            166 ;--------------------------------------------------------
                            167 ; special function registers
                            168 ;--------------------------------------------------------
                            169 ;--------------------------------------------------------
                            170 ; ram data
                            171 ;--------------------------------------------------------
                            172 	.area _DATA
   4F54                     173 _prota::
   4F54                     174 	.ds 29
   4F71                     175 _protaDos::
   4F71                     176 	.ds 29
   4F8E                     177 _disparo::
   4F8E                     178 	.ds 8
   4F96                     179 _disparoDos::
   4F96                     180 	.ds 8
   4F9E                     181 _EMirar::
   4F9E                     182 	.ds 1
   4F9F                     183 _EEventos::
   4F9F                     184 	.ds 1
   4FA0                     185 _EEstados::
   4FA0                     186 	.ds 1
   4FA1                     187 _menu_bg::
   4FA1                     188 	.ds 2
   4FA3                     189 _mapa::
   4FA3                     190 	.ds 2
   4FA5                     191 _getpsyched::
   4FA5                     192 	.ds 2
   4FA7                     193 _cantBlo::
   4FA7                     194 	.ds 1
   4FA8                     195 _lastWinner::
   4FA8                     196 	.ds 1
   4FA9                     197 _pos::
   4FA9                     198 	.ds 1
   4FAA                     199 _estado::
   4FAA                     200 	.ds 1
   4FAB                     201 _seleccion::
   4FAB                     202 	.ds 1
   4FAC                     203 _seleccionControles::
   4FAC                     204 	.ds 1
   4FAD                     205 _seleccionMusica::
   4FAD                     206 	.ds 1
   4FAE                     207 _musica::
   4FAE                     208 	.ds 1
   4FAF                     209 _keyCounter::
   4FAF                     210 	.ds 1
   4FB0                     211 _ronda::
   4FB0                     212 	.ds 1
   4FB1                     213 _reapareciendo::
   4FB1                     214 	.ds 1
   4FB2                     215 _i::
   4FB2                     216 	.ds 1
                            217 ;--------------------------------------------------------
                            218 ; ram data
                            219 ;--------------------------------------------------------
                            220 	.area _INITIALIZED
   4FB3                     221 _tiempo::
   4FB3                     222 	.ds 4
   4FB7                     223 _encontrado::
   4FB7                     224 	.ds 1
                            225 ;--------------------------------------------------------
                            226 ; absolute external ram data
                            227 ;--------------------------------------------------------
                            228 	.area _DABS (ABS)
                            229 ;--------------------------------------------------------
                            230 ; global & static initialisations
                            231 ;--------------------------------------------------------
                            232 	.area _HOME
                            233 	.area _GSINIT
                            234 	.area _GSFINAL
                            235 	.area _GSINIT
                            236 ;--------------------------------------------------------
                            237 ; Home
                            238 ;--------------------------------------------------------
                            239 	.area _HOME
                            240 	.area _HOME
                            241 ;--------------------------------------------------------
                            242 ; code
                            243 ;--------------------------------------------------------
                            244 	.area _CODE
                            245 ;src/main.c:240: void intHandler(){
                            246 ;	---------------------------------
                            247 ; Function intHandler
                            248 ; ---------------------------------
   3514                     249 _intHandler::
                            250 ;src/main.c:241: if(++i == 6){   //50Hz (300/6)
   3514 21 B2 4F      [10]  251 	ld	hl, #_i+0
   3517 34            [11]  252 	inc	(hl)
   3518 3A B2 4F      [13]  253 	ld	a,(#_i + 0)
   351B D6 06         [ 7]  254 	sub	a, #0x06
   351D C0            [11]  255 	ret	NZ
                            256 ;src/main.c:242: if(musica){
   351E 3A AE 4F      [13]  257 	ld	a,(#_musica + 0)
   3521 B7            [ 4]  258 	or	a, a
   3522 C8            [11]  259 	ret	Z
                            260 ;src/main.c:243: play(); //LLAMADA A _play:: ENSAMBLADOR
   3523 CD 7C 36      [17]  261 	call	_play
                            262 ;src/main.c:244: i = 0;
   3526 21 B2 4F      [10]  263 	ld	hl,#_i + 0
   3529 36 00         [10]  264 	ld	(hl), #0x00
   352B C9            [10]  265 	ret
   352C                     266 _matriz:
   352C 01                  267 	.db #0x01	; 1
   352D 01                  268 	.db #0x01	; 1
   352E 01                  269 	.db #0x01	; 1
   352F 01                  270 	.db #0x01	; 1
   3530 01                  271 	.db #0x01	; 1
   3531 01                  272 	.db #0x01	; 1
   3532 01                  273 	.db #0x01	; 1
   3533 01                  274 	.db #0x01	; 1
   3534 01                  275 	.db #0x01	; 1
   3535 01                  276 	.db #0x01	; 1
   3536 01                  277 	.db #0x01	; 1
   3537 01                  278 	.db #0x01	; 1
   3538 01                  279 	.db #0x01	; 1
   3539 01                  280 	.db #0x01	; 1
   353A 01                  281 	.db #0x01	; 1
   353B 01                  282 	.db #0x01	; 1
   353C 02                  283 	.db #0x02	; 2
   353D 01                  284 	.db #0x01	; 1
   353E 02                  285 	.db #0x02	; 2
   353F 01                  286 	.db #0x01	; 1
   3540 02                  287 	.db #0x02	; 2
   3541 01                  288 	.db #0x01	; 1
   3542 02                  289 	.db #0x02	; 2
   3543 01                  290 	.db #0x01	; 1
   3544 02                  291 	.db #0x02	; 2
   3545 01                  292 	.db #0x01	; 1
   3546 01                  293 	.db #0x01	; 1
   3547 01                  294 	.db #0x01	; 1
   3548 01                  295 	.db #0x01	; 1
   3549 01                  296 	.db #0x01	; 1
   354A 01                  297 	.db #0x01	; 1
   354B 01                  298 	.db #0x01	; 1
   354C 01                  299 	.db #0x01	; 1
   354D 01                  300 	.db #0x01	; 1
   354E 01                  301 	.db #0x01	; 1
   354F 01                  302 	.db #0x01	; 1
   3550 01                  303 	.db #0x01	; 1
   3551 01                  304 	.db #0x01	; 1
   3552 01                  305 	.db #0x01	; 1
   3553 01                  306 	.db #0x01	; 1
   3554 02                  307 	.db #0x02	; 2
   3555 01                  308 	.db #0x01	; 1
   3556 02                  309 	.db #0x02	; 2
   3557 01                  310 	.db #0x01	; 1
   3558 02                  311 	.db #0x02	; 2
   3559 01                  312 	.db #0x01	; 1
   355A 02                  313 	.db #0x02	; 2
   355B 01                  314 	.db #0x01	; 1
   355C 02                  315 	.db #0x02	; 2
   355D 01                  316 	.db #0x01	; 1
   355E 02                  317 	.db #0x02	; 2
   355F 01                  318 	.db #0x01	; 1
   3560 01                  319 	.db #0x01	; 1
   3561 01                  320 	.db #0x01	; 1
   3562 01                  321 	.db #0x01	; 1
   3563 01                  322 	.db #0x01	; 1
   3564 01                  323 	.db #0x01	; 1
   3565 01                  324 	.db #0x01	; 1
   3566 01                  325 	.db #0x01	; 1
   3567 01                  326 	.db #0x01	; 1
   3568 01                  327 	.db #0x01	; 1
   3569 01                  328 	.db #0x01	; 1
   356A 01                  329 	.db #0x01	; 1
   356B 01                  330 	.db #0x01	; 1
   356C 01                  331 	.db #0x01	; 1
   356D 01                  332 	.db #0x01	; 1
   356E 02                  333 	.db #0x02	; 2
   356F 01                  334 	.db #0x01	; 1
   3570 02                  335 	.db #0x02	; 2
   3571 01                  336 	.db #0x01	; 1
   3572 02                  337 	.db #0x02	; 2
   3573 01                  338 	.db #0x01	; 1
   3574 02                  339 	.db #0x02	; 2
   3575 01                  340 	.db #0x01	; 1
   3576 02                  341 	.db #0x02	; 2
   3577 01                  342 	.db #0x01	; 1
   3578 02                  343 	.db #0x02	; 2
   3579 01                  344 	.db #0x01	; 1
   357A 01                  345 	.db #0x01	; 1
   357B 01                  346 	.db #0x01	; 1
   357C 01                  347 	.db #0x01	; 1
   357D 01                  348 	.db #0x01	; 1
   357E 01                  349 	.db #0x01	; 1
   357F 01                  350 	.db #0x01	; 1
   3580 01                  351 	.db #0x01	; 1
   3581 01                  352 	.db #0x01	; 1
   3582 01                  353 	.db #0x01	; 1
   3583 01                  354 	.db #0x01	; 1
   3584 01                  355 	.db #0x01	; 1
   3585 01                  356 	.db #0x01	; 1
   3586 01                  357 	.db #0x01	; 1
   3587 01                  358 	.db #0x01	; 1
   3588 02                  359 	.db #0x02	; 2
   3589 01                  360 	.db #0x01	; 1
   358A 02                  361 	.db #0x02	; 2
   358B 01                  362 	.db #0x01	; 1
   358C 02                  363 	.db #0x02	; 2
   358D 01                  364 	.db #0x01	; 1
   358E 02                  365 	.db #0x02	; 2
   358F 01                  366 	.db #0x01	; 1
   3590 02                  367 	.db #0x02	; 2
   3591 01                  368 	.db #0x01	; 1
   3592 02                  369 	.db #0x02	; 2
   3593 01                  370 	.db #0x01	; 1
   3594 01                  371 	.db #0x01	; 1
   3595 01                  372 	.db #0x01	; 1
   3596 01                  373 	.db #0x01	; 1
   3597 01                  374 	.db #0x01	; 1
   3598 01                  375 	.db #0x01	; 1
   3599 01                  376 	.db #0x01	; 1
   359A 01                  377 	.db #0x01	; 1
   359B 01                  378 	.db #0x01	; 1
   359C 01                  379 	.db #0x01	; 1
   359D 01                  380 	.db #0x01	; 1
   359E 01                  381 	.db #0x01	; 1
   359F 01                  382 	.db #0x01	; 1
   35A0 01                  383 	.db #0x01	; 1
   35A1 01                  384 	.db #0x01	; 1
   35A2 02                  385 	.db #0x02	; 2
   35A3 01                  386 	.db #0x01	; 1
   35A4 02                  387 	.db #0x02	; 2
   35A5 01                  388 	.db #0x01	; 1
   35A6 02                  389 	.db #0x02	; 2
   35A7 01                  390 	.db #0x01	; 1
   35A8 02                  391 	.db #0x02	; 2
   35A9 01                  392 	.db #0x01	; 1
   35AA 02                  393 	.db #0x02	; 2
   35AB 01                  394 	.db #0x01	; 1
   35AC 01                  395 	.db #0x01	; 1
   35AD 01                  396 	.db #0x01	; 1
   35AE 01                  397 	.db #0x01	; 1
   35AF 01                  398 	.db #0x01	; 1
   35B0 01                  399 	.db #0x01	; 1
   35B1 01                  400 	.db #0x01	; 1
   35B2 01                  401 	.db #0x01	; 1
   35B3 01                  402 	.db #0x01	; 1
   35B4 01                  403 	.db #0x01	; 1
   35B5 01                  404 	.db #0x01	; 1
   35B6 01                  405 	.db #0x01	; 1
   35B7 01                  406 	.db #0x01	; 1
   35B8 01                  407 	.db #0x01	; 1
   35B9 01                  408 	.db #0x01	; 1
   35BA 01                  409 	.db #0x01	; 1
   35BB                     410 _keysWASD:
   35BB 05 80               411 	.dw #0x8005
   35BD 07 20               412 	.dw #0x2007
   35BF 08 20               413 	.dw #0x2008
   35C1 07 10               414 	.dw #0x1007
   35C3 07 08               415 	.dw #0x0807
   35C5                     416 _keysNumpad:
   35C5 00 40               417 	.dw #0x4000
   35C7 00 10               418 	.dw #0x1000
   35C9 02 10               419 	.dw #0x1002
   35CB 01 10               420 	.dw #0x1001
   35CD 01 08               421 	.dw #0x0801
   35CF                     422 _keysJoy0:
   35CF 09 10               423 	.dw #0x1009
   35D1 09 08               424 	.dw #0x0809
   35D3 09 04               425 	.dw #0x0409
   35D5 09 02               426 	.dw #0x0209
   35D7 09 01               427 	.dw #0x0109
   35D9                     428 _g_frames:
   35D9 00                  429 	.db #0x00	; 0
   35DA 12 32               430 	.dw _pre_jimmy_tileset_00
   35DC 00                  431 	.db #0x00	; 0
   35DD 58 32               432 	.dw _pre_jimmy_tileset_01
   35DF 00                  433 	.db #0x00	; 0
   35E0 9E 32               434 	.dw _pre_jimmy_tileset_02
   35E2 00                  435 	.db #0x00	; 0
   35E3 E4 32               436 	.dw _pre_jimmy_tileset_03
   35E5 02                  437 	.db #0x02	; 2
   35E6 2A 33               438 	.dw _pre_jimmy_tileset_04
   35E8 02                  439 	.db #0x02	; 2
   35E9 70 33               440 	.dw _pre_jimmy_tileset_05
   35EB 02                  441 	.db #0x02	; 2
   35EC B6 33               442 	.dw _pre_jimmy_tileset_06
   35EE 02                  443 	.db #0x02	; 2
   35EF FC 33               444 	.dw _pre_jimmy_tileset_07
   35F1 03                  445 	.db #0x03	; 3
   35F2 42 34               446 	.dw _pre_jimmy_tileset_08
   35F4 03                  447 	.db #0x03	; 3
   35F5 88 34               448 	.dw _pre_jimmy_tileset_09
   35F7 03                  449 	.db #0x03	; 3
   35F8 CE 34               450 	.dw _pre_jimmy_tileset_10
   35FA                     451 _g_framesDos:
   35FA 00                  452 	.db #0x00	; 0
   35FB 00 2F               453 	.dw _pre_obdulia_tileset_00
   35FD 00                  454 	.db #0x00	; 0
   35FE 46 2F               455 	.dw _pre_obdulia_tileset_01
   3600 00                  456 	.db #0x00	; 0
   3601 8C 2F               457 	.dw _pre_obdulia_tileset_02
   3603 00                  458 	.db #0x00	; 0
   3604 D2 2F               459 	.dw _pre_obdulia_tileset_03
   3606 02                  460 	.db #0x02	; 2
   3607 18 30               461 	.dw _pre_obdulia_tileset_04
   3609 02                  462 	.db #0x02	; 2
   360A 5E 30               463 	.dw _pre_obdulia_tileset_05
   360C 02                  464 	.db #0x02	; 2
   360D A4 30               465 	.dw _pre_obdulia_tileset_06
   360F 02                  466 	.db #0x02	; 2
   3610 EA 30               467 	.dw _pre_obdulia_tileset_07
   3612 03                  468 	.db #0x03	; 3
   3613 30 31               469 	.dw _pre_obdulia_tileset_08
   3615 03                  470 	.db #0x03	; 3
   3616 76 31               471 	.dw _pre_obdulia_tileset_09
   3618 03                  472 	.db #0x03	; 3
   3619 BC 31               473 	.dw _pre_obdulia_tileset_10
   361B                     474 _anim_andar:
   361B D9 35               475 	.dw (_g_frames + 0)
   361D D9 35               476 	.dw (_g_frames + 0)
   361F DC 35               477 	.dw (_g_frames + 3)
   3621 DC 35               478 	.dw (_g_frames + 3)
   3623 DF 35               479 	.dw (_g_frames + 6)
   3625 DF 35               480 	.dw (_g_frames + 6)
   3627                     481 _anim_atacar:
   3627 DF 35               482 	.dw (_g_frames + 6)
   3629 E2 35               483 	.dw (_g_frames + 9)
   362B DF 35               484 	.dw (_g_frames + 6)
   362D E2 35               485 	.dw (_g_frames + 9)
   362F                     486 _anim_subir:
   362F F1 35               487 	.dw (_g_frames + 24)
   3631 F1 35               488 	.dw (_g_frames + 24)
   3633 F4 35               489 	.dw (_g_frames + 27)
   3635 F4 35               490 	.dw (_g_frames + 27)
   3637 F7 35               491 	.dw (_g_frames + 30)
   3639 F7 35               492 	.dw (_g_frames + 30)
   363B                     493 _anim_atacarBaj:
   363B E5 35               494 	.dw (_g_frames + 12)
   363D EE 35               495 	.dw (_g_frames + 21)
   363F                     496 _anim_bajar:
   363F E5 35               497 	.dw (_g_frames + 12)
   3641 E5 35               498 	.dw (_g_frames + 12)
   3643 E8 35               499 	.dw (_g_frames + 15)
   3645 E8 35               500 	.dw (_g_frames + 15)
   3647 EB 35               501 	.dw (_g_frames + 18)
   3649 EB 35               502 	.dw (_g_frames + 18)
   364B                     503 _anim_andarDos:
   364B FA 35               504 	.dw (_g_framesDos + 0)
   364D FA 35               505 	.dw (_g_framesDos + 0)
   364F FD 35               506 	.dw (_g_framesDos + 3)
   3651 FD 35               507 	.dw (_g_framesDos + 3)
   3653 00 36               508 	.dw (_g_framesDos + 6)
   3655 00 36               509 	.dw (_g_framesDos + 6)
   3657                     510 _anim_atacarDos:
   3657 00 36               511 	.dw (_g_framesDos + 6)
   3659 03 36               512 	.dw (_g_framesDos + 9)
   365B 00 36               513 	.dw (_g_framesDos + 6)
   365D 03 36               514 	.dw (_g_framesDos + 9)
   365F                     515 _anim_subirDos:
   365F 12 36               516 	.dw (_g_framesDos + 24)
   3661 12 36               517 	.dw (_g_framesDos + 24)
   3663 15 36               518 	.dw (_g_framesDos + 27)
   3665 15 36               519 	.dw (_g_framesDos + 27)
   3667 18 36               520 	.dw (_g_framesDos + 30)
   3669 18 36               521 	.dw (_g_framesDos + 30)
   366B                     522 _anim_atacarBajDos:
   366B 06 36               523 	.dw (_g_framesDos + 12)
   366D 0F 36               524 	.dw (_g_framesDos + 21)
   366F                     525 _anim_bajarDos:
   366F 06 36               526 	.dw (_g_framesDos + 12)
   3671 06 36               527 	.dw (_g_framesDos + 12)
   3673 09 36               528 	.dw (_g_framesDos + 15)
   3675 09 36               529 	.dw (_g_framesDos + 15)
   3677 0C 36               530 	.dw (_g_framesDos + 18)
   3679 0C 36               531 	.dw (_g_framesDos + 18)
   367B                     532 _totalBloq:
   367B 14                  533 	.db #0x14	; 20
                            534 ;src/main.c:251: cpctm_createTransparentMaskTable(pre_tablatrans, 0x0100, M0, 0); 
                            535 ;	---------------------------------
                            536 ; Function dummy_cpct_transparentMaskTable0M0_container
                            537 ; ---------------------------------
   367C                     538 _dummy_cpct_transparentMaskTable0M0_container::
                            539 	.area _pre_tablatrans_ (ABS) 
   0100                     540 	.org 0x0100 
   0100                     541 	 _pre_tablatrans::
   0100 FF AA 55 00 AA AA   542 	.db 0xFF, 0xAA, 0x55, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0108 55 00 55 00 00 00   543 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0110 AA AA 00 00 AA AA   544 	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0118 00 00 00 00 00 00   545 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0120 55 00 55 00 00 00   546 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0128 55 00 55 00 00 00   547 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0130 00 00 00 00 00 00   548 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0138 00 00 00 00 00 00   549 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0140 AA AA 00 00 AA AA   550 	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0148 00 00 00 00 00 00   551 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0150 AA AA 00 00 AA AA   552 	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0158 00 00 00 00 00 00   553 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0160 00 00 00 00 00 00   554 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0168 00 00 00 00 00 00   555 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0170 00 00 00 00 00 00   556 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0178 00 00 00 00 00 00   557 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0180 55 00 55 00 00 00   558 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0188 55 00 55 00 00 00   559 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0190 00 00 00 00 00 00   560 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0198 00 00 00 00 00 00   561 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01A0 55 00 55 00 00 00   562 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01A8 55 00 55 00 00 00   563 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B0 00 00 00 00 00 00   564 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B8 00 00 00 00 00 00   565 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C0 00 00 00 00 00 00   566 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C8 00 00 00 00 00 00   567 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01D0 00 00 00 00 00 00   568 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01D8 00 00 00 00 00 00   569 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01E0 00 00 00 00 00 00   570 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01E8 00 00 00 00 00 00   571 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F0 00 00 00 00 00 00   572 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F8 00 00 00 00 00 00   573 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
                            574 	.area _CSEG (REL, CON) 
                            575 ;src/main.c:253: void asignarFrame(TFrame **animacion) {
                            576 ;	---------------------------------
                            577 ; Function asignarFrame
                            578 ; ---------------------------------
   51E1                     579 _asignarFrame::
   51E1 DD E5         [15]  580 	push	ix
   51E3 DD 21 00 00   [14]  581 	ld	ix,#0
   51E7 DD 39         [15]  582 	add	ix,sp
                            583 ;src/main.c:254: prota.frame = animacion[prota.nframe / ANIM_PAUSA];
   51E9 21 5F 4F      [10]  584 	ld	hl, #_prota + 11
   51EC 6E            [ 7]  585 	ld	l,(hl)
   51ED 26 00         [ 7]  586 	ld	h,#0x00
   51EF 29            [11]  587 	add	hl, hl
   51F0 4D            [ 4]  588 	ld	c, l
   51F1 44            [ 4]  589 	ld	b, h
   51F2 DD 6E 04      [19]  590 	ld	l,4 (ix)
   51F5 DD 66 05      [19]  591 	ld	h,5 (ix)
   51F8 09            [11]  592 	add	hl,bc
   51F9 4E            [ 7]  593 	ld	c,(hl)
   51FA 23            [ 6]  594 	inc	hl
   51FB 46            [ 7]  595 	ld	b,(hl)
   51FC ED 43 5D 4F   [20]  596 	ld	((_prota + 0x0009)), bc
   5200 DD E1         [14]  597 	pop	ix
   5202 C9            [10]  598 	ret
                            599 ;src/main.c:256: void asignarFrameDos(TFrame **animacion) {
                            600 ;	---------------------------------
                            601 ; Function asignarFrameDos
                            602 ; ---------------------------------
   5203                     603 _asignarFrameDos::
   5203 DD E5         [15]  604 	push	ix
   5205 DD 21 00 00   [14]  605 	ld	ix,#0
   5209 DD 39         [15]  606 	add	ix,sp
                            607 ;src/main.c:257: protaDos.frame = animacion[protaDos.nframe / ANIM_PAUSA];
   520B 21 7C 4F      [10]  608 	ld	hl, #_protaDos + 11
   520E 6E            [ 7]  609 	ld	l,(hl)
   520F 26 00         [ 7]  610 	ld	h,#0x00
   5211 29            [11]  611 	add	hl, hl
   5212 4D            [ 4]  612 	ld	c, l
   5213 44            [ 4]  613 	ld	b, h
   5214 DD 6E 04      [19]  614 	ld	l,4 (ix)
   5217 DD 66 05      [19]  615 	ld	h,5 (ix)
   521A 09            [11]  616 	add	hl,bc
   521B 4E            [ 7]  617 	ld	c,(hl)
   521C 23            [ 6]  618 	inc	hl
   521D 46            [ 7]  619 	ld	b,(hl)
   521E ED 43 7A 4F   [20]  620 	ld	((_protaDos + 0x0009)), bc
   5222 DD E1         [14]  621 	pop	ix
   5224 C9            [10]  622 	ret
                            623 ;src/main.c:260: void girarFrame() {
                            624 ;	---------------------------------
                            625 ; Function girarFrame
                            626 ; ---------------------------------
   5225                     627 _girarFrame::
                            628 ;src/main.c:261: TFrame* f = prota.frame;
   5225 ED 4B 5D 4F   [20]  629 	ld	bc, (#_prota + 9)
                            630 ;src/main.c:262: if (f->mira != prota.mira) {
   5229 0A            [ 7]  631 	ld	a,(bc)
   522A 5F            [ 4]  632 	ld	e,a
   522B 21 60 4F      [10]  633 	ld	hl, #(_prota + 0x000c) + 0
   522E 56            [ 7]  634 	ld	d,(hl)
   522F 7B            [ 4]  635 	ld	a,e
   5230 92            [ 4]  636 	sub	a, d
   5231 C8            [11]  637 	ret	Z
                            638 ;src/main.c:263: cpct_hflipSpriteM0(PRE_JIMMY_TILESET_00_W, PRE_JIMMY_TILESET_00_H, f->sprite);
   5232 69            [ 4]  639 	ld	l, c
   5233 60            [ 4]  640 	ld	h, b
   5234 23            [ 6]  641 	inc	hl
   5235 5E            [ 7]  642 	ld	e,(hl)
   5236 23            [ 6]  643 	inc	hl
   5237 56            [ 7]  644 	ld	d,(hl)
   5238 C5            [11]  645 	push	bc
   5239 D5            [11]  646 	push	de
   523A 21 05 0E      [10]  647 	ld	hl,#0x0E05
   523D E5            [11]  648 	push	hl
   523E CD D0 41      [17]  649 	call	_cpct_hflipSpriteM0
   5241 C1            [10]  650 	pop	bc
                            651 ;src/main.c:264: f->mira = prota.mira;
   5242 3A 60 4F      [13]  652 	ld	a, (#(_prota + 0x000c) + 0)
   5245 02            [ 7]  653 	ld	(bc),a
   5246 C9            [10]  654 	ret
                            655 ;src/main.c:267: void girarFrameDos() {
                            656 ;	---------------------------------
                            657 ; Function girarFrameDos
                            658 ; ---------------------------------
   5247                     659 _girarFrameDos::
                            660 ;src/main.c:268: TFrame* f = protaDos.frame;
   5247 ED 4B 7A 4F   [20]  661 	ld	bc, (#_protaDos + 9)
                            662 ;src/main.c:269: if (f->mira != protaDos.mira) {
   524B 0A            [ 7]  663 	ld	a,(bc)
   524C 5F            [ 4]  664 	ld	e,a
   524D 21 7D 4F      [10]  665 	ld	hl, #(_protaDos + 0x000c) + 0
   5250 56            [ 7]  666 	ld	d,(hl)
   5251 7B            [ 4]  667 	ld	a,e
   5252 92            [ 4]  668 	sub	a, d
   5253 C8            [11]  669 	ret	Z
                            670 ;src/main.c:270: cpct_hflipSpriteM0(PRE_OBDULIA_TILESET_00_W, PRE_OBDULIA_TILESET_00_H, f->sprite);
   5254 69            [ 4]  671 	ld	l, c
   5255 60            [ 4]  672 	ld	h, b
   5256 23            [ 6]  673 	inc	hl
   5257 5E            [ 7]  674 	ld	e,(hl)
   5258 23            [ 6]  675 	inc	hl
   5259 56            [ 7]  676 	ld	d,(hl)
   525A C5            [11]  677 	push	bc
   525B D5            [11]  678 	push	de
   525C 21 05 0E      [10]  679 	ld	hl,#0x0E05
   525F E5            [11]  680 	push	hl
   5260 CD D0 41      [17]  681 	call	_cpct_hflipSpriteM0
   5263 C1            [10]  682 	pop	bc
                            683 ;src/main.c:271: f->mira = protaDos.mira;
   5264 3A 7D 4F      [13]  684 	ld	a, (#(_protaDos + 0x000c) + 0)
   5267 02            [ 7]  685 	ld	(bc),a
   5268 C9            [10]  686 	ret
                            687 ;src/main.c:275: void seleccionarSpriteProta() {
                            688 ;	---------------------------------
                            689 ; Function seleccionarSpriteProta
                            690 ; ---------------------------------
   5269                     691 _seleccionarSpriteProta::
                            692 ;src/main.c:276: switch(prota.estado) {
   5269 21 5C 4F      [10]  693 	ld	hl, #_prota + 8
   526C 5E            [ 7]  694 	ld	e,(hl)
   526D 3E 08         [ 7]  695 	ld	a,#0x08
   526F 93            [ 4]  696 	sub	a, e
   5270 DA 25 52      [10]  697 	jp	C,_girarFrame
                            698 ;src/main.c:277: case ST_quieto:      { prota.frame = &g_frames[0];  break; }
                            699 ;src/main.c:276: switch(prota.estado) {
   5273 16 00         [ 7]  700 	ld	d,#0x00
   5275 21 7C 52      [10]  701 	ld	hl,#00117$
   5278 19            [11]  702 	add	hl,de
   5279 19            [11]  703 	add	hl,de
   527A 19            [11]  704 	add	hl,de
   527B E9            [ 4]  705 	jp	(hl)
   527C                     706 00117$:
   527C C3 97 52      [10]  707 	jp	00101$
   527F C3 A9 52      [10]  708 	jp	00103$
   5282 C3 A0 52      [10]  709 	jp	00102$
   5285 C3 B2 52      [10]  710 	jp	00104$
   5288 C3 BD 52      [10]  711 	jp	00105$
   528B C3 D1 52      [10]  712 	jp	00107$
   528E C3 C8 52      [10]  713 	jp	00106$
   5291 C3 DC 52      [10]  714 	jp	00108$
   5294 C3 E7 52      [10]  715 	jp	00109$
                            716 ;src/main.c:277: case ST_quieto:      { prota.frame = &g_frames[0];  break; }
   5297                     717 00101$:
   5297 21 D9 35      [10]  718 	ld	hl,#_g_frames
   529A 22 5D 4F      [16]  719 	ld	((_prota + 0x0009)), hl
   529D C3 25 52      [10]  720 	jp	_girarFrame
                            721 ;src/main.c:278: case ST_quietoArri:      { prota.frame = &g_frames[8];  break; }
   52A0                     722 00102$:
   52A0 21 F1 35      [10]  723 	ld	hl,#(_g_frames + 0x0018)
   52A3 22 5D 4F      [16]  724 	ld	((_prota + 0x0009)), hl
   52A6 C3 25 52      [10]  725 	jp	_girarFrame
                            726 ;src/main.c:279: case ST_quietoAbaj:      { prota.frame = &g_frames[4];  break; }
   52A9                     727 00103$:
   52A9 21 E5 35      [10]  728 	ld	hl,#(_g_frames + 0x000c)
   52AC 22 5D 4F      [16]  729 	ld	((_prota + 0x0009)), hl
   52AF C3 25 52      [10]  730 	jp	_girarFrame
                            731 ;src/main.c:280: case ST_andando:     { asignarFrame(anim_andar);    break; }
   52B2                     732 00104$:
   52B2 21 1B 36      [10]  733 	ld	hl,#_anim_andar
   52B5 E5            [11]  734 	push	hl
   52B6 CD E1 51      [17]  735 	call	_asignarFrame
   52B9 F1            [10]  736 	pop	af
   52BA C3 25 52      [10]  737 	jp	_girarFrame
                            738 ;src/main.c:281: case ST_atacando:   { asignarFrame(anim_atacar);   break; }
   52BD                     739 00105$:
   52BD 21 27 36      [10]  740 	ld	hl,#_anim_atacar
   52C0 E5            [11]  741 	push	hl
   52C1 CD E1 51      [17]  742 	call	_asignarFrame
   52C4 F1            [10]  743 	pop	af
   52C5 C3 25 52      [10]  744 	jp	_girarFrame
                            745 ;src/main.c:282: case ST_atacandoSub:    { prota.frame = &g_frames[8]; break; }
   52C8                     746 00106$:
   52C8 21 F1 35      [10]  747 	ld	hl,#(_g_frames + 0x0018)
   52CB 22 5D 4F      [16]  748 	ld	((_prota + 0x0009)), hl
   52CE C3 25 52      [10]  749 	jp	_girarFrame
                            750 ;src/main.c:283: case ST_atacandoBaj:     {asignarFrame(anim_atacarBaj);break; }
   52D1                     751 00107$:
   52D1 21 3B 36      [10]  752 	ld	hl,#_anim_atacarBaj
   52D4 E5            [11]  753 	push	hl
   52D5 CD E1 51      [17]  754 	call	_asignarFrame
   52D8 F1            [10]  755 	pop	af
   52D9 C3 25 52      [10]  756 	jp	_girarFrame
                            757 ;src/main.c:284: case ST_subiendo: { asignarFrame(anim_subir);     break; }
   52DC                     758 00108$:
   52DC 21 2F 36      [10]  759 	ld	hl,#_anim_subir
   52DF E5            [11]  760 	push	hl
   52E0 CD E1 51      [17]  761 	call	_asignarFrame
   52E3 F1            [10]  762 	pop	af
   52E4 C3 25 52      [10]  763 	jp	_girarFrame
                            764 ;src/main.c:285: case ST_bajando: { asignarFrame(anim_bajar);     break; }
   52E7                     765 00109$:
   52E7 21 3F 36      [10]  766 	ld	hl,#_anim_bajar
   52EA E5            [11]  767 	push	hl
   52EB CD E1 51      [17]  768 	call	_asignarFrame
   52EE F1            [10]  769 	pop	af
                            770 ;src/main.c:286: }
                            771 ;src/main.c:287: girarFrame();
   52EF C3 25 52      [10]  772 	jp  _girarFrame
                            773 ;src/main.c:289: void seleccionarSpriteProtaDos() {
                            774 ;	---------------------------------
                            775 ; Function seleccionarSpriteProtaDos
                            776 ; ---------------------------------
   52F2                     777 _seleccionarSpriteProtaDos::
                            778 ;src/main.c:290: switch(protaDos.estado) {
   52F2 21 79 4F      [10]  779 	ld	hl, #_protaDos + 8
   52F5 5E            [ 7]  780 	ld	e,(hl)
   52F6 3E 08         [ 7]  781 	ld	a,#0x08
   52F8 93            [ 4]  782 	sub	a, e
   52F9 DA 47 52      [10]  783 	jp	C,_girarFrameDos
                            784 ;src/main.c:291: case ST_quieto:      { protaDos.frame = &g_framesDos[0];  break; }
                            785 ;src/main.c:290: switch(protaDos.estado) {
   52FC 16 00         [ 7]  786 	ld	d,#0x00
   52FE 21 05 53      [10]  787 	ld	hl,#00117$
   5301 19            [11]  788 	add	hl,de
   5302 19            [11]  789 	add	hl,de
   5303 19            [11]  790 	add	hl,de
   5304 E9            [ 4]  791 	jp	(hl)
   5305                     792 00117$:
   5305 C3 20 53      [10]  793 	jp	00101$
   5308 C3 32 53      [10]  794 	jp	00103$
   530B C3 29 53      [10]  795 	jp	00102$
   530E C3 3B 53      [10]  796 	jp	00104$
   5311 C3 46 53      [10]  797 	jp	00105$
   5314 C3 5A 53      [10]  798 	jp	00107$
   5317 C3 51 53      [10]  799 	jp	00106$
   531A C3 65 53      [10]  800 	jp	00108$
   531D C3 70 53      [10]  801 	jp	00109$
                            802 ;src/main.c:291: case ST_quieto:      { protaDos.frame = &g_framesDos[0];  break; }
   5320                     803 00101$:
   5320 21 FA 35      [10]  804 	ld	hl,#_g_framesDos
   5323 22 7A 4F      [16]  805 	ld	((_protaDos + 0x0009)), hl
   5326 C3 47 52      [10]  806 	jp	_girarFrameDos
                            807 ;src/main.c:292: case ST_quietoArri:      { protaDos.frame = &g_framesDos[8];  break; }
   5329                     808 00102$:
   5329 21 12 36      [10]  809 	ld	hl,#(_g_framesDos + 0x0018)
   532C 22 7A 4F      [16]  810 	ld	((_protaDos + 0x0009)), hl
   532F C3 47 52      [10]  811 	jp	_girarFrameDos
                            812 ;src/main.c:293: case ST_quietoAbaj:      { protaDos.frame = &g_framesDos[4];  break; }
   5332                     813 00103$:
   5332 21 06 36      [10]  814 	ld	hl,#(_g_framesDos + 0x000c)
   5335 22 7A 4F      [16]  815 	ld	((_protaDos + 0x0009)), hl
   5338 C3 47 52      [10]  816 	jp	_girarFrameDos
                            817 ;src/main.c:294: case ST_andando:     { asignarFrameDos(anim_andarDos);    break; }
   533B                     818 00104$:
   533B 21 4B 36      [10]  819 	ld	hl,#_anim_andarDos
   533E E5            [11]  820 	push	hl
   533F CD 03 52      [17]  821 	call	_asignarFrameDos
   5342 F1            [10]  822 	pop	af
   5343 C3 47 52      [10]  823 	jp	_girarFrameDos
                            824 ;src/main.c:295: case ST_atacando:   { asignarFrameDos(anim_atacarDos);   break; }
   5346                     825 00105$:
   5346 21 57 36      [10]  826 	ld	hl,#_anim_atacarDos
   5349 E5            [11]  827 	push	hl
   534A CD 03 52      [17]  828 	call	_asignarFrameDos
   534D F1            [10]  829 	pop	af
   534E C3 47 52      [10]  830 	jp	_girarFrameDos
                            831 ;src/main.c:296: case ST_atacandoSub:    { protaDos.frame = &g_framesDos[8]; break; }
   5351                     832 00106$:
   5351 21 12 36      [10]  833 	ld	hl,#(_g_framesDos + 0x0018)
   5354 22 7A 4F      [16]  834 	ld	((_protaDos + 0x0009)), hl
   5357 C3 47 52      [10]  835 	jp	_girarFrameDos
                            836 ;src/main.c:297: case ST_atacandoBaj:     {asignarFrameDos(anim_atacarBajDos);break; }
   535A                     837 00107$:
   535A 21 6B 36      [10]  838 	ld	hl,#_anim_atacarBajDos
   535D E5            [11]  839 	push	hl
   535E CD 03 52      [17]  840 	call	_asignarFrameDos
   5361 F1            [10]  841 	pop	af
   5362 C3 47 52      [10]  842 	jp	_girarFrameDos
                            843 ;src/main.c:298: case ST_subiendo: { asignarFrameDos(anim_subirDos);     break; }
   5365                     844 00108$:
   5365 21 5F 36      [10]  845 	ld	hl,#_anim_subirDos
   5368 E5            [11]  846 	push	hl
   5369 CD 03 52      [17]  847 	call	_asignarFrameDos
   536C F1            [10]  848 	pop	af
   536D C3 47 52      [10]  849 	jp	_girarFrameDos
                            850 ;src/main.c:299: case ST_bajando: { asignarFrameDos(anim_bajarDos);     break; }
   5370                     851 00109$:
   5370 21 6F 36      [10]  852 	ld	hl,#_anim_bajarDos
   5373 E5            [11]  853 	push	hl
   5374 CD 03 52      [17]  854 	call	_asignarFrameDos
   5377 F1            [10]  855 	pop	af
                            856 ;src/main.c:300: }
                            857 ;src/main.c:301: girarFrameDos();
   5378 C3 47 52      [10]  858 	jp  _girarFrameDos
                            859 ;src/main.c:304: u8 dibujaGuardaBloque(u8 numrand, u8 numranddos, u8 numero, u8 total, u8 cantBlo){
                            860 ;	---------------------------------
                            861 ; Function dibujaGuardaBloque
                            862 ; ---------------------------------
   537B                     863 _dibujaGuardaBloque::
   537B DD E5         [15]  864 	push	ix
   537D DD 21 00 00   [14]  865 	ld	ix,#0
   5381 DD 39         [15]  866 	add	ix,sp
                            867 ;src/main.c:307: if(numrand<2 && numranddos>2 || numranddos<2 && numrand>2 || numranddos>7 && numrand<10 || numranddos<7 && numrand>10 || (numrand>1 && numranddos>1 && numrand<11 && numranddos<8)){
   5383 DD 7E 04      [19]  868 	ld	a,4 (ix)
   5386 D6 02         [ 7]  869 	sub	a, #0x02
   5388 30 07         [12]  870 	jr	NC,00107$
   538A 3E 02         [ 7]  871 	ld	a,#0x02
   538C DD 96 05      [19]  872 	sub	a, 5 (ix)
   538F 38 46         [12]  873 	jr	C,00103$
   5391                     874 00107$:
   5391 DD 7E 05      [19]  875 	ld	a,5 (ix)
   5394 D6 02         [ 7]  876 	sub	a, #0x02
   5396 30 07         [12]  877 	jr	NC,00109$
   5398 3E 02         [ 7]  878 	ld	a,#0x02
   539A DD 96 04      [19]  879 	sub	a, 4 (ix)
   539D 38 38         [12]  880 	jr	C,00103$
   539F                     881 00109$:
   539F 3E 07         [ 7]  882 	ld	a,#0x07
   53A1 DD 96 05      [19]  883 	sub	a, 5 (ix)
   53A4 30 07         [12]  884 	jr	NC,00111$
   53A6 DD 7E 04      [19]  885 	ld	a,4 (ix)
   53A9 D6 0A         [ 7]  886 	sub	a, #0x0A
   53AB 38 2A         [12]  887 	jr	C,00103$
   53AD                     888 00111$:
   53AD DD 7E 05      [19]  889 	ld	a,5 (ix)
   53B0 D6 07         [ 7]  890 	sub	a, #0x07
   53B2 30 07         [12]  891 	jr	NC,00115$
   53B4 3E 0A         [ 7]  892 	ld	a,#0x0A
   53B6 DD 96 04      [19]  893 	sub	a, 4 (ix)
   53B9 38 1C         [12]  894 	jr	C,00103$
   53BB                     895 00115$:
   53BB 3E 01         [ 7]  896 	ld	a,#0x01
   53BD DD 96 04      [19]  897 	sub	a, 4 (ix)
   53C0 30 5F         [12]  898 	jr	NC,00104$
   53C2 3E 01         [ 7]  899 	ld	a,#0x01
   53C4 DD 96 05      [19]  900 	sub	a, 5 (ix)
   53C7 30 58         [12]  901 	jr	NC,00104$
   53C9 DD 7E 04      [19]  902 	ld	a,4 (ix)
   53CC D6 0B         [ 7]  903 	sub	a, #0x0B
   53CE 30 51         [12]  904 	jr	NC,00104$
   53D0 DD 7E 05      [19]  905 	ld	a,5 (ix)
   53D3 D6 08         [ 7]  906 	sub	a, #0x08
   53D5 30 4A         [12]  907 	jr	NC,00104$
   53D7                     908 00103$:
                            909 ;src/main.c:309: if(matriz[numranddos][numrand]!=numero){
   53D7 01 2C 35      [10]  910 	ld	bc,#_matriz+0
   53DA DD 5E 05      [19]  911 	ld	e,5 (ix)
   53DD 16 00         [ 7]  912 	ld	d,#0x00
   53DF 6B            [ 4]  913 	ld	l, e
   53E0 62            [ 4]  914 	ld	h, d
   53E1 29            [11]  915 	add	hl, hl
   53E2 19            [11]  916 	add	hl, de
   53E3 29            [11]  917 	add	hl, hl
   53E4 29            [11]  918 	add	hl, hl
   53E5 19            [11]  919 	add	hl, de
   53E6 09            [11]  920 	add	hl,bc
   53E7 DD 4E 04      [19]  921 	ld	c,4 (ix)
   53EA 59            [ 4]  922 	ld	e,c
   53EB 16 00         [ 7]  923 	ld	d,#0x00
   53ED 19            [11]  924 	add	hl,de
   53EE DD 7E 06      [19]  925 	ld	a,6 (ix)
   53F1 96            [ 7]  926 	sub	a,(hl)
   53F2 28 2D         [12]  927 	jr	Z,00104$
                            928 ;src/main.c:311: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, numrand*6, (16*numranddos)+24);
   53F4 DD 7E 05      [19]  929 	ld	a,5 (ix)
   53F7 07            [ 4]  930 	rlca
   53F8 07            [ 4]  931 	rlca
   53F9 07            [ 4]  932 	rlca
   53FA 07            [ 4]  933 	rlca
   53FB E6 F0         [ 7]  934 	and	a,#0xF0
   53FD C6 18         [ 7]  935 	add	a, #0x18
   53FF 57            [ 4]  936 	ld	d,a
   5400 79            [ 4]  937 	ld	a,c
   5401 87            [ 4]  938 	add	a, a
   5402 81            [ 4]  939 	add	a, c
   5403 87            [ 4]  940 	add	a, a
   5404 47            [ 4]  941 	ld	b,a
   5405 D5            [11]  942 	push	de
   5406 33            [ 6]  943 	inc	sp
   5407 C5            [11]  944 	push	bc
   5408 33            [ 6]  945 	inc	sp
   5409 21 00 C0      [10]  946 	ld	hl,#0xC000
   540C E5            [11]  947 	push	hl
   540D CD 0A 43      [17]  948 	call	_cpct_getScreenPtr
   5410 4D            [ 4]  949 	ld	c,l
   5411 44            [ 4]  950 	ld	b,h
                            951 ;src/main.c:312: cpct_drawSprite(pre_bloque, pvmem, PRE_BLOQUE_W, PRE_BLOQUE_H);
   5412 21 06 10      [10]  952 	ld	hl,#0x1006
   5415 E5            [11]  953 	push	hl
   5416 C5            [11]  954 	push	bc
   5417 21 A8 17      [10]  955 	ld	hl,#_pre_bloque
   541A E5            [11]  956 	push	hl
   541B CD 08 3F      [17]  957 	call	_cpct_drawSprite
                            958 ;src/main.c:314: total--;
   541E DD 35 07      [23]  959 	dec	7 (ix)
                            960 ;src/main.c:315: cantBlo++;
   5421                     961 00104$:
                            962 ;src/main.c:318: return total;
   5421 DD 6E 07      [19]  963 	ld	l,7 (ix)
   5424 DD E1         [14]  964 	pop	ix
   5426 C9            [10]  965 	ret
                            966 ;src/main.c:340: void dibujaBloques(){
                            967 ;	---------------------------------
                            968 ; Function dibujaBloques
                            969 ; ---------------------------------
   5427                     970 _dibujaBloques::
   5427 DD E5         [15]  971 	push	ix
   5429 DD 21 00 00   [14]  972 	ld	ix,#0
   542D DD 39         [15]  973 	add	ix,sp
   542F F5            [11]  974 	push	af
   5430 F5            [11]  975 	push	af
                            976 ;src/main.c:343: cantBlo=0;
   5431 21 A7 4F      [10]  977 	ld	hl,#_cantBlo + 0
   5434 36 00         [10]  978 	ld	(hl), #0x00
                            979 ;src/main.c:346: total=totalBloq;
   5436 21 7B 36      [10]  980 	ld	hl,#_totalBloq + 0
   5439 4E            [ 7]  981 	ld	c, (hl)
                            982 ;src/main.c:347: while(total>0){
   543A                     983 00101$:
   543A 79            [ 4]  984 	ld	a,c
   543B B7            [ 4]  985 	or	a, a
   543C CA 69 55      [10]  986 	jp	Z,00104$
                            987 ;src/main.c:348: tiempo+=ronda;
   543F 21 B0 4F      [10]  988 	ld	hl,#_ronda + 0
   5442 46            [ 7]  989 	ld	b, (hl)
   5443 DD 70 FC      [19]  990 	ld	-4 (ix),b
   5446 DD 36 FD 00   [19]  991 	ld	-3 (ix),#0x00
   544A DD 36 FE 00   [19]  992 	ld	-2 (ix),#0x00
   544E DD 36 FF 00   [19]  993 	ld	-1 (ix),#0x00
   5452 21 B3 4F      [10]  994 	ld	hl,#_tiempo
   5455 7E            [ 7]  995 	ld	a,(hl)
   5456 DD 86 FC      [19]  996 	add	a, -4 (ix)
   5459 77            [ 7]  997 	ld	(hl),a
   545A 23            [ 6]  998 	inc	hl
   545B 7E            [ 7]  999 	ld	a,(hl)
   545C DD 8E FD      [19] 1000 	adc	a, -3 (ix)
   545F 77            [ 7] 1001 	ld	(hl),a
   5460 23            [ 6] 1002 	inc	hl
   5461 7E            [ 7] 1003 	ld	a,(hl)
   5462 DD 8E FE      [19] 1004 	adc	a, -2 (ix)
   5465 77            [ 7] 1005 	ld	(hl),a
   5466 23            [ 6] 1006 	inc	hl
   5467 7E            [ 7] 1007 	ld	a,(hl)
   5468 DD 8E FF      [19] 1008 	adc	a, -1 (ix)
   546B 77            [ 7] 1009 	ld	(hl),a
                           1010 ;src/main.c:349: tiempo=tiempo%200;
   546C C5            [11] 1011 	push	bc
   546D 21 00 00      [10] 1012 	ld	hl,#0x0000
   5470 E5            [11] 1013 	push	hl
   5471 21 C8 00      [10] 1014 	ld	hl,#0x00C8
   5474 E5            [11] 1015 	push	hl
   5475 2A B5 4F      [16] 1016 	ld	hl,(_tiempo + 2)
   5478 E5            [11] 1017 	push	hl
   5479 2A B3 4F      [16] 1018 	ld	hl,(_tiempo)
   547C E5            [11] 1019 	push	hl
   547D CD B8 4F      [17] 1020 	call	__modulong
   5480 F1            [10] 1021 	pop	af
   5481 F1            [10] 1022 	pop	af
   5482 F1            [10] 1023 	pop	af
   5483 F1            [10] 1024 	pop	af
   5484 DD 72 FF      [19] 1025 	ld	-1 (ix),d
   5487 DD 73 FE      [19] 1026 	ld	-2 (ix),e
   548A DD 74 FD      [19] 1027 	ld	-3 (ix),h
   548D DD 75 FC      [19] 1028 	ld	-4 (ix),l
   5490 11 B3 4F      [10] 1029 	ld	de, #_tiempo
   5493 21 02 00      [10] 1030 	ld	hl, #2
   5496 39            [11] 1031 	add	hl, sp
   5497 01 04 00      [10] 1032 	ld	bc, #4
   549A ED B0         [21] 1033 	ldir
   549C C1            [10] 1034 	pop	bc
                           1035 ;src/main.c:350: tiempo++;
   549D 21 B3 4F      [10] 1036 	ld	hl, #_tiempo+0
   54A0 34            [11] 1037 	inc	(hl)
   54A1 20 10         [12] 1038 	jr	NZ,00114$
   54A3 21 B4 4F      [10] 1039 	ld	hl, #_tiempo+1
   54A6 34            [11] 1040 	inc	(hl)
   54A7 20 0A         [12] 1041 	jr	NZ,00114$
   54A9 21 B5 4F      [10] 1042 	ld	hl, #_tiempo+2
   54AC 34            [11] 1043 	inc	(hl)
   54AD 20 04         [12] 1044 	jr	NZ,00114$
   54AF 21 B6 4F      [10] 1045 	ld	hl, #_tiempo+3
   54B2 34            [11] 1046 	inc	(hl)
   54B3                    1047 00114$:
                           1048 ;src/main.c:351: numrand=(tiempo*cpct_getRandom_xsp40_u8())%13;
   54B3 C5            [11] 1049 	push	bc
   54B4 CD 80 42      [17] 1050 	call	_cpct_getRandom_xsp40_u8
   54B7 5D            [ 4] 1051 	ld	e,l
   54B8 C1            [10] 1052 	pop	bc
   54B9 16 00         [ 7] 1053 	ld	d,#0x00
   54BB 21 00 00      [10] 1054 	ld	hl,#0x0000
   54BE C5            [11] 1055 	push	bc
   54BF E5            [11] 1056 	push	hl
   54C0 D5            [11] 1057 	push	de
   54C1 2A B5 4F      [16] 1058 	ld	hl,(_tiempo + 2)
   54C4 E5            [11] 1059 	push	hl
   54C5 2A B3 4F      [16] 1060 	ld	hl,(_tiempo)
   54C8 E5            [11] 1061 	push	hl
   54C9 CD 75 50      [17] 1062 	call	__mullong
   54CC F1            [10] 1063 	pop	af
   54CD F1            [10] 1064 	pop	af
   54CE F1            [10] 1065 	pop	af
   54CF F1            [10] 1066 	pop	af
   54D0 DD 72 FF      [19] 1067 	ld	-1 (ix),d
   54D3 DD 73 FE      [19] 1068 	ld	-2 (ix),e
   54D6 DD 74 FD      [19] 1069 	ld	-3 (ix),h
   54D9 DD 75 FC      [19] 1070 	ld	-4 (ix),l
   54DC 21 00 00      [10] 1071 	ld	hl,#0x0000
   54DF E5            [11] 1072 	push	hl
   54E0 21 0D 00      [10] 1073 	ld	hl,#0x000D
   54E3 E5            [11] 1074 	push	hl
   54E4 DD 6E FE      [19] 1075 	ld	l,-2 (ix)
   54E7 DD 66 FF      [19] 1076 	ld	h,-1 (ix)
   54EA E5            [11] 1077 	push	hl
   54EB DD 6E FC      [19] 1078 	ld	l,-4 (ix)
   54EE DD 66 FD      [19] 1079 	ld	h,-3 (ix)
   54F1 E5            [11] 1080 	push	hl
   54F2 CD B8 4F      [17] 1081 	call	__modulong
   54F5 F1            [10] 1082 	pop	af
   54F6 F1            [10] 1083 	pop	af
   54F7 F1            [10] 1084 	pop	af
   54F8 F1            [10] 1085 	pop	af
   54F9 C1            [10] 1086 	pop	bc
   54FA 45            [ 4] 1087 	ld	b,l
                           1088 ;src/main.c:352: numranddos=(tiempo*cpct_getRandom_xsp40_u8())%11;
   54FB C5            [11] 1089 	push	bc
   54FC CD 80 42      [17] 1090 	call	_cpct_getRandom_xsp40_u8
   54FF 5D            [ 4] 1091 	ld	e,l
   5500 C1            [10] 1092 	pop	bc
   5501 16 00         [ 7] 1093 	ld	d,#0x00
   5503 21 00 00      [10] 1094 	ld	hl,#0x0000
   5506 C5            [11] 1095 	push	bc
   5507 E5            [11] 1096 	push	hl
   5508 D5            [11] 1097 	push	de
   5509 2A B5 4F      [16] 1098 	ld	hl,(_tiempo + 2)
   550C E5            [11] 1099 	push	hl
   550D 2A B3 4F      [16] 1100 	ld	hl,(_tiempo)
   5510 E5            [11] 1101 	push	hl
   5511 CD 75 50      [17] 1102 	call	__mullong
   5514 F1            [10] 1103 	pop	af
   5515 F1            [10] 1104 	pop	af
   5516 F1            [10] 1105 	pop	af
   5517 F1            [10] 1106 	pop	af
   5518 DD 72 FF      [19] 1107 	ld	-1 (ix),d
   551B DD 73 FE      [19] 1108 	ld	-2 (ix),e
   551E DD 74 FD      [19] 1109 	ld	-3 (ix),h
   5521 DD 75 FC      [19] 1110 	ld	-4 (ix),l
   5524 21 00 00      [10] 1111 	ld	hl,#0x0000
   5527 E5            [11] 1112 	push	hl
   5528 21 0B 00      [10] 1113 	ld	hl,#0x000B
   552B E5            [11] 1114 	push	hl
   552C DD 6E FE      [19] 1115 	ld	l,-2 (ix)
   552F DD 66 FF      [19] 1116 	ld	h,-1 (ix)
   5532 E5            [11] 1117 	push	hl
   5533 DD 6E FC      [19] 1118 	ld	l,-4 (ix)
   5536 DD 66 FD      [19] 1119 	ld	h,-3 (ix)
   5539 E5            [11] 1120 	push	hl
   553A CD B8 4F      [17] 1121 	call	__modulong
   553D F1            [10] 1122 	pop	af
   553E F1            [10] 1123 	pop	af
   553F F1            [10] 1124 	pop	af
   5540 F1            [10] 1125 	pop	af
   5541 C1            [10] 1126 	pop	bc
   5542 55            [ 4] 1127 	ld	d,l
                           1128 ;src/main.c:353: pos=(numranddos*12+numrand);
   5543 7A            [ 4] 1129 	ld	a,d
   5544 5F            [ 4] 1130 	ld	e,a
   5545 87            [ 4] 1131 	add	a, a
   5546 83            [ 4] 1132 	add	a, e
   5547 87            [ 4] 1133 	add	a, a
   5548 87            [ 4] 1134 	add	a, a
   5549 5F            [ 4] 1135 	ld	e,a
   554A 21 A9 4F      [10] 1136 	ld	hl,#_pos
   554D 80            [ 4] 1137 	add	a, b
   554E 77            [ 7] 1138 	ld	(hl),a
                           1139 ;src/main.c:355: total=dibujaGuardaBloque(numrand, numranddos, numero, total, cantBlo);
   554F 3A A7 4F      [13] 1140 	ld	a,(_cantBlo)
   5552 F5            [11] 1141 	push	af
   5553 33            [ 6] 1142 	inc	sp
   5554 79            [ 4] 1143 	ld	a,c
   5555 F5            [11] 1144 	push	af
   5556 33            [ 6] 1145 	inc	sp
   5557 3E 02         [ 7] 1146 	ld	a,#0x02
   5559 F5            [11] 1147 	push	af
   555A 33            [ 6] 1148 	inc	sp
   555B D5            [11] 1149 	push	de
   555C 33            [ 6] 1150 	inc	sp
   555D C5            [11] 1151 	push	bc
   555E 33            [ 6] 1152 	inc	sp
   555F CD 7B 53      [17] 1153 	call	_dibujaGuardaBloque
   5562 F1            [10] 1154 	pop	af
   5563 F1            [10] 1155 	pop	af
   5564 33            [ 6] 1156 	inc	sp
   5565 4D            [ 4] 1157 	ld	c,l
   5566 C3 3A 54      [10] 1158 	jp	00101$
   5569                    1159 00104$:
   5569 DD F9         [10] 1160 	ld	sp, ix
   556B DD E1         [14] 1161 	pop	ix
   556D C9            [10] 1162 	ret
                           1163 ;src/main.c:361: void dibujarLlave(u8 color){
                           1164 ;	---------------------------------
                           1165 ; Function dibujarLlave
                           1166 ; ---------------------------------
   556E                    1167 _dibujarLlave::
   556E DD E5         [15] 1168 	push	ix
   5570 DD 21 00 00   [14] 1169 	ld	ix,#0
   5574 DD 39         [15] 1170 	add	ix,sp
                           1171 ;src/main.c:364: switch(color){
   5576 3E 03         [ 7] 1172 	ld	a,#0x03
   5578 DD 96 04      [19] 1173 	sub	a, 4 (ix)
   557B DA 9A 56      [10] 1174 	jp	C,00106$
   557E DD 5E 04      [19] 1175 	ld	e,4 (ix)
   5581 16 00         [ 7] 1176 	ld	d,#0x00
   5583 21 8A 55      [10] 1177 	ld	hl,#00112$
   5586 19            [11] 1178 	add	hl,de
   5587 19            [11] 1179 	add	hl,de
   5588 19            [11] 1180 	add	hl,de
   5589 E9            [ 4] 1181 	jp	(hl)
   558A                    1182 00112$:
   558A C3 96 55      [10] 1183 	jp	00101$
   558D C3 D8 55      [10] 1184 	jp	00102$
   5590 C3 1A 56      [10] 1185 	jp	00103$
   5593 C3 5B 56      [10] 1186 	jp	00104$
                           1187 ;src/main.c:366: case 0:
   5596                    1188 00101$:
                           1189 ;src/main.c:367: cpct_drawTileAligned2x4_f(pre_tileset[16], cpct_getScreenPtr(CPCT_VMEM_START, 12, 40));
   5596 21 0C 28      [10] 1190 	ld	hl,#0x280C
   5599 E5            [11] 1191 	push	hl
   559A 21 00 C0      [10] 1192 	ld	hl,#0xC000
   559D E5            [11] 1193 	push	hl
   559E CD 0A 43      [17] 1194 	call	_cpct_getScreenPtr
   55A1 4D            [ 4] 1195 	ld	c,l
   55A2 44            [ 4] 1196 	ld	b,h
   55A3 2A 28 18      [16] 1197 	ld	hl, (#_pre_tileset + 32)
   55A6 C5            [11] 1198 	push	bc
   55A7 E5            [11] 1199 	push	hl
   55A8 CD C3 42      [17] 1200 	call	_cpct_drawTileAligned2x4_f
                           1201 ;src/main.c:368: cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, 14, 40));
   55AB 21 0E 28      [10] 1202 	ld	hl,#0x280E
   55AE E5            [11] 1203 	push	hl
   55AF 21 00 C0      [10] 1204 	ld	hl,#0xC000
   55B2 E5            [11] 1205 	push	hl
   55B3 CD 0A 43      [17] 1206 	call	_cpct_getScreenPtr
   55B6 4D            [ 4] 1207 	ld	c,l
   55B7 44            [ 4] 1208 	ld	b,h
   55B8 2A 2A 18      [16] 1209 	ld	hl, (#_pre_tileset + 34)
   55BB C5            [11] 1210 	push	bc
   55BC E5            [11] 1211 	push	hl
   55BD CD C3 42      [17] 1212 	call	_cpct_drawTileAligned2x4_f
                           1213 ;src/main.c:369: cpct_drawTileAligned2x4_f(pre_tileset[25], cpct_getScreenPtr(CPCT_VMEM_START, 16, 40));
   55C0 21 10 28      [10] 1214 	ld	hl,#0x2810
   55C3 E5            [11] 1215 	push	hl
   55C4 21 00 C0      [10] 1216 	ld	hl,#0xC000
   55C7 E5            [11] 1217 	push	hl
   55C8 CD 0A 43      [17] 1218 	call	_cpct_getScreenPtr
   55CB 4D            [ 4] 1219 	ld	c,l
   55CC 44            [ 4] 1220 	ld	b,h
   55CD 2A 3A 18      [16] 1221 	ld	hl, (#_pre_tileset + 50)
   55D0 C5            [11] 1222 	push	bc
   55D1 E5            [11] 1223 	push	hl
   55D2 CD C3 42      [17] 1224 	call	_cpct_drawTileAligned2x4_f
                           1225 ;src/main.c:370: break;
   55D5 C3 9A 56      [10] 1226 	jp	00106$
                           1227 ;src/main.c:372: case 1: 
   55D8                    1228 00102$:
                           1229 ;src/main.c:373: cpct_drawTileAligned2x4_f(pre_tileset[32], cpct_getScreenPtr(CPCT_VMEM_START, 6, 4));
   55D8 21 06 04      [10] 1230 	ld	hl,#0x0406
   55DB E5            [11] 1231 	push	hl
   55DC 21 00 C0      [10] 1232 	ld	hl,#0xC000
   55DF E5            [11] 1233 	push	hl
   55E0 CD 0A 43      [17] 1234 	call	_cpct_getScreenPtr
   55E3 4D            [ 4] 1235 	ld	c,l
   55E4 44            [ 4] 1236 	ld	b,h
   55E5 2A 48 18      [16] 1237 	ld	hl, (#_pre_tileset + 64)
   55E8 C5            [11] 1238 	push	bc
   55E9 E5            [11] 1239 	push	hl
   55EA CD C3 42      [17] 1240 	call	_cpct_drawTileAligned2x4_f
                           1241 ;src/main.c:374: cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, 8, 4));
   55ED 21 08 04      [10] 1242 	ld	hl,#0x0408
   55F0 E5            [11] 1243 	push	hl
   55F1 21 00 C0      [10] 1244 	ld	hl,#0xC000
   55F4 E5            [11] 1245 	push	hl
   55F5 CD 0A 43      [17] 1246 	call	_cpct_getScreenPtr
   55F8 4D            [ 4] 1247 	ld	c,l
   55F9 44            [ 4] 1248 	ld	b,h
   55FA 2A 3C 18      [16] 1249 	ld	hl, (#_pre_tileset + 52)
   55FD C5            [11] 1250 	push	bc
   55FE E5            [11] 1251 	push	hl
   55FF CD C3 42      [17] 1252 	call	_cpct_drawTileAligned2x4_f
                           1253 ;src/main.c:375: cpct_drawTileAligned2x4_f(pre_tileset[27], cpct_getScreenPtr(CPCT_VMEM_START, 10, 4));
   5602 21 0A 04      [10] 1254 	ld	hl,#0x040A
   5605 E5            [11] 1255 	push	hl
   5606 21 00 C0      [10] 1256 	ld	hl,#0xC000
   5609 E5            [11] 1257 	push	hl
   560A CD 0A 43      [17] 1258 	call	_cpct_getScreenPtr
   560D 4D            [ 4] 1259 	ld	c,l
   560E 44            [ 4] 1260 	ld	b,h
   560F 2A 3E 18      [16] 1261 	ld	hl, (#_pre_tileset + 54)
   5612 C5            [11] 1262 	push	bc
   5613 E5            [11] 1263 	push	hl
   5614 CD C3 42      [17] 1264 	call	_cpct_drawTileAligned2x4_f
                           1265 ;src/main.c:376: break;
   5617 C3 9A 56      [10] 1266 	jp	00106$
                           1267 ;src/main.c:378: case 2: 
   561A                    1268 00103$:
                           1269 ;src/main.c:379: cpct_drawTileAligned2x4_f(pre_tileset[32], cpct_getScreenPtr(CPCT_VMEM_START, 60, 180));
   561A 21 3C B4      [10] 1270 	ld	hl,#0xB43C
   561D E5            [11] 1271 	push	hl
   561E 21 00 C0      [10] 1272 	ld	hl,#0xC000
   5621 E5            [11] 1273 	push	hl
   5622 CD 0A 43      [17] 1274 	call	_cpct_getScreenPtr
   5625 4D            [ 4] 1275 	ld	c,l
   5626 44            [ 4] 1276 	ld	b,h
   5627 2A 48 18      [16] 1277 	ld	hl, (#_pre_tileset + 64)
   562A C5            [11] 1278 	push	bc
   562B E5            [11] 1279 	push	hl
   562C CD C3 42      [17] 1280 	call	_cpct_drawTileAligned2x4_f
                           1281 ;src/main.c:380: cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, 62, 180));
   562F 21 3E B4      [10] 1282 	ld	hl,#0xB43E
   5632 E5            [11] 1283 	push	hl
   5633 21 00 C0      [10] 1284 	ld	hl,#0xC000
   5636 E5            [11] 1285 	push	hl
   5637 CD 0A 43      [17] 1286 	call	_cpct_getScreenPtr
   563A 4D            [ 4] 1287 	ld	c,l
   563B 44            [ 4] 1288 	ld	b,h
   563C 2A 3C 18      [16] 1289 	ld	hl, (#_pre_tileset + 52)
   563F C5            [11] 1290 	push	bc
   5640 E5            [11] 1291 	push	hl
   5641 CD C3 42      [17] 1292 	call	_cpct_drawTileAligned2x4_f
                           1293 ;src/main.c:381: cpct_drawTileAligned2x4_f(pre_tileset[27], cpct_getScreenPtr(CPCT_VMEM_START, 64, 180));
   5644 21 40 B4      [10] 1294 	ld	hl,#0xB440
   5647 E5            [11] 1295 	push	hl
   5648 21 00 C0      [10] 1296 	ld	hl,#0xC000
   564B E5            [11] 1297 	push	hl
   564C CD 0A 43      [17] 1298 	call	_cpct_getScreenPtr
   564F 4D            [ 4] 1299 	ld	c,l
   5650 44            [ 4] 1300 	ld	b,h
   5651 2A 3E 18      [16] 1301 	ld	hl, (#_pre_tileset + 54)
   5654 C5            [11] 1302 	push	bc
   5655 E5            [11] 1303 	push	hl
   5656 CD C3 42      [17] 1304 	call	_cpct_drawTileAligned2x4_f
                           1305 ;src/main.c:382: break;
   5659 18 3F         [12] 1306 	jr	00106$
                           1307 ;src/main.c:384: case 3: 
   565B                    1308 00104$:
                           1309 ;src/main.c:385: cpct_drawTileAligned2x4_f(pre_tileset[16], cpct_getScreenPtr(CPCT_VMEM_START, 66, 4));
   565B 21 42 04      [10] 1310 	ld	hl,#0x0442
   565E E5            [11] 1311 	push	hl
   565F 21 00 C0      [10] 1312 	ld	hl,#0xC000
   5662 E5            [11] 1313 	push	hl
   5663 CD 0A 43      [17] 1314 	call	_cpct_getScreenPtr
   5666 4D            [ 4] 1315 	ld	c,l
   5667 44            [ 4] 1316 	ld	b,h
   5668 2A 28 18      [16] 1317 	ld	hl, (#_pre_tileset + 32)
   566B C5            [11] 1318 	push	bc
   566C E5            [11] 1319 	push	hl
   566D CD C3 42      [17] 1320 	call	_cpct_drawTileAligned2x4_f
                           1321 ;src/main.c:386: cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, 68, 4));
   5670 21 44 04      [10] 1322 	ld	hl,#0x0444
   5673 E5            [11] 1323 	push	hl
   5674 21 00 C0      [10] 1324 	ld	hl,#0xC000
   5677 E5            [11] 1325 	push	hl
   5678 CD 0A 43      [17] 1326 	call	_cpct_getScreenPtr
   567B 4D            [ 4] 1327 	ld	c,l
   567C 44            [ 4] 1328 	ld	b,h
   567D 2A 2A 18      [16] 1329 	ld	hl, (#_pre_tileset + 34)
   5680 C5            [11] 1330 	push	bc
   5681 E5            [11] 1331 	push	hl
   5682 CD C3 42      [17] 1332 	call	_cpct_drawTileAligned2x4_f
                           1333 ;src/main.c:387: cpct_drawTileAligned2x4_f(pre_tileset[25], cpct_getScreenPtr(CPCT_VMEM_START, 70, 4));
   5685 21 46 04      [10] 1334 	ld	hl,#0x0446
   5688 E5            [11] 1335 	push	hl
   5689 21 00 C0      [10] 1336 	ld	hl,#0xC000
   568C E5            [11] 1337 	push	hl
   568D CD 0A 43      [17] 1338 	call	_cpct_getScreenPtr
   5690 4D            [ 4] 1339 	ld	c,l
   5691 44            [ 4] 1340 	ld	b,h
   5692 2A 3A 18      [16] 1341 	ld	hl, (#_pre_tileset + 50)
   5695 C5            [11] 1342 	push	bc
   5696 E5            [11] 1343 	push	hl
   5697 CD C3 42      [17] 1344 	call	_cpct_drawTileAligned2x4_f
                           1345 ;src/main.c:390: }
   569A                    1346 00106$:
   569A DD E1         [14] 1347 	pop	ix
   569C C9            [10] 1348 	ret
                           1349 ;src/main.c:394: void borrarLlave(u8 color){
                           1350 ;	---------------------------------
                           1351 ; Function borrarLlave
                           1352 ; ---------------------------------
   569D                    1353 _borrarLlave::
   569D DD E5         [15] 1354 	push	ix
   569F DD 21 00 00   [14] 1355 	ld	ix,#0
   56A3 DD 39         [15] 1356 	add	ix,sp
                           1357 ;src/main.c:397: switch(color){
   56A5 3E 03         [ 7] 1358 	ld	a,#0x03
   56A7 DD 96 04      [19] 1359 	sub	a, 4 (ix)
   56AA DA C9 57      [10] 1360 	jp	C,00106$
   56AD DD 5E 04      [19] 1361 	ld	e,4 (ix)
   56B0 16 00         [ 7] 1362 	ld	d,#0x00
   56B2 21 B9 56      [10] 1363 	ld	hl,#00112$
   56B5 19            [11] 1364 	add	hl,de
   56B6 19            [11] 1365 	add	hl,de
   56B7 19            [11] 1366 	add	hl,de
   56B8 E9            [ 4] 1367 	jp	(hl)
   56B9                    1368 00112$:
   56B9 C3 C5 56      [10] 1369 	jp	00101$
   56BC C3 07 57      [10] 1370 	jp	00102$
   56BF C3 49 57      [10] 1371 	jp	00103$
   56C2 C3 8A 57      [10] 1372 	jp	00104$
                           1373 ;src/main.c:399: case 0: 
   56C5                    1374 00101$:
                           1375 ;src/main.c:400: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 12, 40));
   56C5 21 0C 28      [10] 1376 	ld	hl,#0x280C
   56C8 E5            [11] 1377 	push	hl
   56C9 21 00 C0      [10] 1378 	ld	hl,#0xC000
   56CC E5            [11] 1379 	push	hl
   56CD CD 0A 43      [17] 1380 	call	_cpct_getScreenPtr
   56D0 4D            [ 4] 1381 	ld	c,l
   56D1 44            [ 4] 1382 	ld	b,h
   56D2 2A 36 18      [16] 1383 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   56D5 C5            [11] 1384 	push	bc
   56D6 E5            [11] 1385 	push	hl
   56D7 CD C3 42      [17] 1386 	call	_cpct_drawTileAligned2x4_f
                           1387 ;src/main.c:401: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 14, 40));
   56DA 21 0E 28      [10] 1388 	ld	hl,#0x280E
   56DD E5            [11] 1389 	push	hl
   56DE 21 00 C0      [10] 1390 	ld	hl,#0xC000
   56E1 E5            [11] 1391 	push	hl
   56E2 CD 0A 43      [17] 1392 	call	_cpct_getScreenPtr
   56E5 4D            [ 4] 1393 	ld	c,l
   56E6 44            [ 4] 1394 	ld	b,h
   56E7 2A 36 18      [16] 1395 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   56EA C5            [11] 1396 	push	bc
   56EB E5            [11] 1397 	push	hl
   56EC CD C3 42      [17] 1398 	call	_cpct_drawTileAligned2x4_f
                           1399 ;src/main.c:402: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 16, 40));
   56EF 21 10 28      [10] 1400 	ld	hl,#0x2810
   56F2 E5            [11] 1401 	push	hl
   56F3 21 00 C0      [10] 1402 	ld	hl,#0xC000
   56F6 E5            [11] 1403 	push	hl
   56F7 CD 0A 43      [17] 1404 	call	_cpct_getScreenPtr
   56FA 4D            [ 4] 1405 	ld	c,l
   56FB 44            [ 4] 1406 	ld	b,h
   56FC 2A 36 18      [16] 1407 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   56FF C5            [11] 1408 	push	bc
   5700 E5            [11] 1409 	push	hl
   5701 CD C3 42      [17] 1410 	call	_cpct_drawTileAligned2x4_f
                           1411 ;src/main.c:403: break;
   5704 C3 C9 57      [10] 1412 	jp	00106$
                           1413 ;src/main.c:405: case 1: 
   5707                    1414 00102$:
                           1415 ;src/main.c:406: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 60, 180));
   5707 21 3C B4      [10] 1416 	ld	hl,#0xB43C
   570A E5            [11] 1417 	push	hl
   570B 21 00 C0      [10] 1418 	ld	hl,#0xC000
   570E E5            [11] 1419 	push	hl
   570F CD 0A 43      [17] 1420 	call	_cpct_getScreenPtr
   5712 4D            [ 4] 1421 	ld	c,l
   5713 44            [ 4] 1422 	ld	b,h
   5714 2A 36 18      [16] 1423 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   5717 C5            [11] 1424 	push	bc
   5718 E5            [11] 1425 	push	hl
   5719 CD C3 42      [17] 1426 	call	_cpct_drawTileAligned2x4_f
                           1427 ;src/main.c:407: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 62, 180));
   571C 21 3E B4      [10] 1428 	ld	hl,#0xB43E
   571F E5            [11] 1429 	push	hl
   5720 21 00 C0      [10] 1430 	ld	hl,#0xC000
   5723 E5            [11] 1431 	push	hl
   5724 CD 0A 43      [17] 1432 	call	_cpct_getScreenPtr
   5727 4D            [ 4] 1433 	ld	c,l
   5728 44            [ 4] 1434 	ld	b,h
   5729 2A 36 18      [16] 1435 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   572C C5            [11] 1436 	push	bc
   572D E5            [11] 1437 	push	hl
   572E CD C3 42      [17] 1438 	call	_cpct_drawTileAligned2x4_f
                           1439 ;src/main.c:408: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 64, 180));
   5731 21 40 B4      [10] 1440 	ld	hl,#0xB440
   5734 E5            [11] 1441 	push	hl
   5735 21 00 C0      [10] 1442 	ld	hl,#0xC000
   5738 E5            [11] 1443 	push	hl
   5739 CD 0A 43      [17] 1444 	call	_cpct_getScreenPtr
   573C 4D            [ 4] 1445 	ld	c,l
   573D 44            [ 4] 1446 	ld	b,h
   573E 2A 36 18      [16] 1447 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   5741 C5            [11] 1448 	push	bc
   5742 E5            [11] 1449 	push	hl
   5743 CD C3 42      [17] 1450 	call	_cpct_drawTileAligned2x4_f
                           1451 ;src/main.c:409: break;
   5746 C3 C9 57      [10] 1452 	jp	00106$
                           1453 ;src/main.c:411: case 2: 
   5749                    1454 00103$:
                           1455 ;src/main.c:412: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 6, 4));
   5749 21 06 04      [10] 1456 	ld	hl,#0x0406
   574C E5            [11] 1457 	push	hl
   574D 21 00 C0      [10] 1458 	ld	hl,#0xC000
   5750 E5            [11] 1459 	push	hl
   5751 CD 0A 43      [17] 1460 	call	_cpct_getScreenPtr
   5754 4D            [ 4] 1461 	ld	c,l
   5755 44            [ 4] 1462 	ld	b,h
   5756 2A 38 18      [16] 1463 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   5759 C5            [11] 1464 	push	bc
   575A E5            [11] 1465 	push	hl
   575B CD C3 42      [17] 1466 	call	_cpct_drawTileAligned2x4_f
                           1467 ;src/main.c:413: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 8, 4));
   575E 21 08 04      [10] 1468 	ld	hl,#0x0408
   5761 E5            [11] 1469 	push	hl
   5762 21 00 C0      [10] 1470 	ld	hl,#0xC000
   5765 E5            [11] 1471 	push	hl
   5766 CD 0A 43      [17] 1472 	call	_cpct_getScreenPtr
   5769 4D            [ 4] 1473 	ld	c,l
   576A 44            [ 4] 1474 	ld	b,h
   576B 2A 38 18      [16] 1475 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   576E C5            [11] 1476 	push	bc
   576F E5            [11] 1477 	push	hl
   5770 CD C3 42      [17] 1478 	call	_cpct_drawTileAligned2x4_f
                           1479 ;src/main.c:414: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 10, 4));
   5773 21 0A 04      [10] 1480 	ld	hl,#0x040A
   5776 E5            [11] 1481 	push	hl
   5777 21 00 C0      [10] 1482 	ld	hl,#0xC000
   577A E5            [11] 1483 	push	hl
   577B CD 0A 43      [17] 1484 	call	_cpct_getScreenPtr
   577E 4D            [ 4] 1485 	ld	c,l
   577F 44            [ 4] 1486 	ld	b,h
   5780 2A 38 18      [16] 1487 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   5783 C5            [11] 1488 	push	bc
   5784 E5            [11] 1489 	push	hl
   5785 CD C3 42      [17] 1490 	call	_cpct_drawTileAligned2x4_f
                           1491 ;src/main.c:415: break;
   5788 18 3F         [12] 1492 	jr	00106$
                           1493 ;src/main.c:417: case 3: 
   578A                    1494 00104$:
                           1495 ;src/main.c:418: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 66, 4));
   578A 21 42 04      [10] 1496 	ld	hl,#0x0442
   578D E5            [11] 1497 	push	hl
   578E 21 00 C0      [10] 1498 	ld	hl,#0xC000
   5791 E5            [11] 1499 	push	hl
   5792 CD 0A 43      [17] 1500 	call	_cpct_getScreenPtr
   5795 4D            [ 4] 1501 	ld	c,l
   5796 44            [ 4] 1502 	ld	b,h
   5797 2A 38 18      [16] 1503 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   579A C5            [11] 1504 	push	bc
   579B E5            [11] 1505 	push	hl
   579C CD C3 42      [17] 1506 	call	_cpct_drawTileAligned2x4_f
                           1507 ;src/main.c:419: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 68, 4));
   579F 21 44 04      [10] 1508 	ld	hl,#0x0444
   57A2 E5            [11] 1509 	push	hl
   57A3 21 00 C0      [10] 1510 	ld	hl,#0xC000
   57A6 E5            [11] 1511 	push	hl
   57A7 CD 0A 43      [17] 1512 	call	_cpct_getScreenPtr
   57AA 4D            [ 4] 1513 	ld	c,l
   57AB 44            [ 4] 1514 	ld	b,h
   57AC 2A 38 18      [16] 1515 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   57AF C5            [11] 1516 	push	bc
   57B0 E5            [11] 1517 	push	hl
   57B1 CD C3 42      [17] 1518 	call	_cpct_drawTileAligned2x4_f
                           1519 ;src/main.c:420: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, 70, 4));
   57B4 21 46 04      [10] 1520 	ld	hl,#0x0446
   57B7 E5            [11] 1521 	push	hl
   57B8 21 00 C0      [10] 1522 	ld	hl,#0xC000
   57BB E5            [11] 1523 	push	hl
   57BC CD 0A 43      [17] 1524 	call	_cpct_getScreenPtr
   57BF 4D            [ 4] 1525 	ld	c,l
   57C0 44            [ 4] 1526 	ld	b,h
   57C1 2A 38 18      [16] 1527 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   57C4 C5            [11] 1528 	push	bc
   57C5 E5            [11] 1529 	push	hl
   57C6 CD C3 42      [17] 1530 	call	_cpct_drawTileAligned2x4_f
                           1531 ;src/main.c:423: }
   57C9                    1532 00106$:
   57C9 DD E1         [14] 1533 	pop	ix
   57CB C9            [10] 1534 	ret
                           1535 ;src/main.c:427: void bloquearPuertas(){
                           1536 ;	---------------------------------
                           1537 ; Function bloquearPuertas
                           1538 ; ---------------------------------
   57CC                    1539 _bloquearPuertas::
                           1540 ;src/main.c:429: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 2, 24));
   57CC 21 02 18      [10] 1541 	ld	hl,#0x1802
   57CF E5            [11] 1542 	push	hl
   57D0 21 00 C0      [10] 1543 	ld	hl,#0xC000
   57D3 E5            [11] 1544 	push	hl
   57D4 CD 0A 43      [17] 1545 	call	_cpct_getScreenPtr
   57D7 4D            [ 4] 1546 	ld	c,l
   57D8 44            [ 4] 1547 	ld	b,h
   57D9 2A 12 18      [16] 1548 	ld	hl, (#(_pre_tileset + 0x000a) + 0)
   57DC C5            [11] 1549 	push	bc
   57DD E5            [11] 1550 	push	hl
   57DE CD C3 42      [17] 1551 	call	_cpct_drawTileAligned2x4_f
                           1552 ;src/main.c:430: cpct_drawTileAligned2x4_f(pre_tileset[6], cpct_getScreenPtr(CPCT_VMEM_START, 2, 28));
   57E1 21 02 1C      [10] 1553 	ld	hl,#0x1C02
   57E4 E5            [11] 1554 	push	hl
   57E5 21 00 C0      [10] 1555 	ld	hl,#0xC000
   57E8 E5            [11] 1556 	push	hl
   57E9 CD 0A 43      [17] 1557 	call	_cpct_getScreenPtr
   57EC 4D            [ 4] 1558 	ld	c,l
   57ED 44            [ 4] 1559 	ld	b,h
   57EE 2A 14 18      [16] 1560 	ld	hl, (#(_pre_tileset + 0x000c) + 0)
   57F1 C5            [11] 1561 	push	bc
   57F2 E5            [11] 1562 	push	hl
   57F3 CD C3 42      [17] 1563 	call	_cpct_drawTileAligned2x4_f
                           1564 ;src/main.c:431: cpct_drawTileAligned2x4_f(pre_tileset[4], cpct_getScreenPtr(CPCT_VMEM_START, 2, 32));
   57F6 21 02 20      [10] 1565 	ld	hl,#0x2002
   57F9 E5            [11] 1566 	push	hl
   57FA 21 00 C0      [10] 1567 	ld	hl,#0xC000
   57FD E5            [11] 1568 	push	hl
   57FE CD 0A 43      [17] 1569 	call	_cpct_getScreenPtr
   5801 4D            [ 4] 1570 	ld	c,l
   5802 44            [ 4] 1571 	ld	b,h
   5803 2A 10 18      [16] 1572 	ld	hl, (#(_pre_tileset + 0x0008) + 0)
   5806 C5            [11] 1573 	push	bc
   5807 E5            [11] 1574 	push	hl
   5808 CD C3 42      [17] 1575 	call	_cpct_drawTileAligned2x4_f
                           1576 ;src/main.c:432: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 2, 36));
   580B 21 02 24      [10] 1577 	ld	hl,#0x2402
   580E E5            [11] 1578 	push	hl
   580F 21 00 C0      [10] 1579 	ld	hl,#0xC000
   5812 E5            [11] 1580 	push	hl
   5813 CD 0A 43      [17] 1581 	call	_cpct_getScreenPtr
   5816 4D            [ 4] 1582 	ld	c,l
   5817 44            [ 4] 1583 	ld	b,h
   5818 2A 12 18      [16] 1584 	ld	hl, (#(_pre_tileset + 0x000a) + 0)
   581B C5            [11] 1585 	push	bc
   581C E5            [11] 1586 	push	hl
   581D CD C3 42      [17] 1587 	call	_cpct_drawTileAligned2x4_f
                           1588 ;src/main.c:433: cpct_drawTileAligned2x4_f(pre_tileset[6], cpct_getScreenPtr(CPCT_VMEM_START, 2, 40));
   5820 21 02 28      [10] 1589 	ld	hl,#0x2802
   5823 E5            [11] 1590 	push	hl
   5824 21 00 C0      [10] 1591 	ld	hl,#0xC000
   5827 E5            [11] 1592 	push	hl
   5828 CD 0A 43      [17] 1593 	call	_cpct_getScreenPtr
   582B 4D            [ 4] 1594 	ld	c,l
   582C 44            [ 4] 1595 	ld	b,h
   582D 2A 14 18      [16] 1596 	ld	hl, (#(_pre_tileset + 0x000c) + 0)
   5830 C5            [11] 1597 	push	bc
   5831 E5            [11] 1598 	push	hl
   5832 CD C3 42      [17] 1599 	call	_cpct_drawTileAligned2x4_f
                           1600 ;src/main.c:434: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 0, 40));
   5835 21 00 28      [10] 1601 	ld	hl,#0x2800
   5838 E5            [11] 1602 	push	hl
   5839 26 C0         [ 7] 1603 	ld	h, #0xC0
   583B E5            [11] 1604 	push	hl
   583C CD 0A 43      [17] 1605 	call	_cpct_getScreenPtr
   583F 4D            [ 4] 1606 	ld	c,l
   5840 44            [ 4] 1607 	ld	b,h
   5841 2A 12 18      [16] 1608 	ld	hl, (#(_pre_tileset + 0x000a) + 0)
   5844 C5            [11] 1609 	push	bc
   5845 E5            [11] 1610 	push	hl
   5846 CD C3 42      [17] 1611 	call	_cpct_drawTileAligned2x4_f
                           1612 ;src/main.c:436: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 76, 180));
   5849 21 4C B4      [10] 1613 	ld	hl,#0xB44C
   584C E5            [11] 1614 	push	hl
   584D 21 00 C0      [10] 1615 	ld	hl,#0xC000
   5850 E5            [11] 1616 	push	hl
   5851 CD 0A 43      [17] 1617 	call	_cpct_getScreenPtr
   5854 4D            [ 4] 1618 	ld	c,l
   5855 44            [ 4] 1619 	ld	b,h
   5856 2A 12 18      [16] 1620 	ld	hl, (#(_pre_tileset + 0x000a) + 0)
   5859 C5            [11] 1621 	push	bc
   585A E5            [11] 1622 	push	hl
   585B CD C3 42      [17] 1623 	call	_cpct_drawTileAligned2x4_f
                           1624 ;src/main.c:437: cpct_drawTileAligned2x4_f(pre_tileset[4], cpct_getScreenPtr(CPCT_VMEM_START, 74, 180));
   585E 21 4A B4      [10] 1625 	ld	hl,#0xB44A
   5861 E5            [11] 1626 	push	hl
   5862 21 00 C0      [10] 1627 	ld	hl,#0xC000
   5865 E5            [11] 1628 	push	hl
   5866 CD 0A 43      [17] 1629 	call	_cpct_getScreenPtr
   5869 4D            [ 4] 1630 	ld	c,l
   586A 44            [ 4] 1631 	ld	b,h
   586B 2A 10 18      [16] 1632 	ld	hl, (#(_pre_tileset + 0x0008) + 0)
   586E C5            [11] 1633 	push	bc
   586F E5            [11] 1634 	push	hl
   5870 CD C3 42      [17] 1635 	call	_cpct_drawTileAligned2x4_f
                           1636 ;src/main.c:438: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 74, 184));
   5873 21 4A B8      [10] 1637 	ld	hl,#0xB84A
   5876 E5            [11] 1638 	push	hl
   5877 21 00 C0      [10] 1639 	ld	hl,#0xC000
   587A E5            [11] 1640 	push	hl
   587B CD 0A 43      [17] 1641 	call	_cpct_getScreenPtr
   587E 4D            [ 4] 1642 	ld	c,l
   587F 44            [ 4] 1643 	ld	b,h
   5880 2A 12 18      [16] 1644 	ld	hl, (#(_pre_tileset + 0x000a) + 0)
   5883 C5            [11] 1645 	push	bc
   5884 E5            [11] 1646 	push	hl
   5885 CD C3 42      [17] 1647 	call	_cpct_drawTileAligned2x4_f
                           1648 ;src/main.c:439: cpct_drawTileAligned2x4_f(pre_tileset[6], cpct_getScreenPtr(CPCT_VMEM_START, 74, 188));
   5888 21 4A BC      [10] 1649 	ld	hl,#0xBC4A
   588B E5            [11] 1650 	push	hl
   588C 21 00 C0      [10] 1651 	ld	hl,#0xC000
   588F E5            [11] 1652 	push	hl
   5890 CD 0A 43      [17] 1653 	call	_cpct_getScreenPtr
   5893 4D            [ 4] 1654 	ld	c,l
   5894 44            [ 4] 1655 	ld	b,h
   5895 2A 14 18      [16] 1656 	ld	hl, (#(_pre_tileset + 0x000c) + 0)
   5898 C5            [11] 1657 	push	bc
   5899 E5            [11] 1658 	push	hl
   589A CD C3 42      [17] 1659 	call	_cpct_drawTileAligned2x4_f
                           1660 ;src/main.c:440: cpct_drawTileAligned2x4_f(pre_tileset[4], cpct_getScreenPtr(CPCT_VMEM_START, 74, 192));
   589D 21 4A C0      [10] 1661 	ld	hl,#0xC04A
   58A0 E5            [11] 1662 	push	hl
   58A1 2E 00         [ 7] 1663 	ld	l, #0x00
   58A3 E5            [11] 1664 	push	hl
   58A4 CD 0A 43      [17] 1665 	call	_cpct_getScreenPtr
   58A7 4D            [ 4] 1666 	ld	c,l
   58A8 44            [ 4] 1667 	ld	b,h
   58A9 2A 10 18      [16] 1668 	ld	hl, (#(_pre_tileset + 0x0008) + 0)
   58AC C5            [11] 1669 	push	bc
   58AD E5            [11] 1670 	push	hl
   58AE CD C3 42      [17] 1671 	call	_cpct_drawTileAligned2x4_f
                           1672 ;src/main.c:441: cpct_drawTileAligned2x4_f(pre_tileset[5], cpct_getScreenPtr(CPCT_VMEM_START, 74, 196));
   58B1 21 4A C4      [10] 1673 	ld	hl,#0xC44A
   58B4 E5            [11] 1674 	push	hl
   58B5 21 00 C0      [10] 1675 	ld	hl,#0xC000
   58B8 E5            [11] 1676 	push	hl
   58B9 CD 0A 43      [17] 1677 	call	_cpct_getScreenPtr
   58BC 4D            [ 4] 1678 	ld	c,l
   58BD 44            [ 4] 1679 	ld	b,h
   58BE 2A 12 18      [16] 1680 	ld	hl, (#(_pre_tileset + 0x000a) + 0)
   58C1 C5            [11] 1681 	push	bc
   58C2 E5            [11] 1682 	push	hl
   58C3 CD C3 42      [17] 1683 	call	_cpct_drawTileAligned2x4_f
   58C6 C9            [10] 1684 	ret
                           1685 ;src/main.c:446: void abrirPuerta(u8 personaje){
                           1686 ;	---------------------------------
                           1687 ; Function abrirPuerta
                           1688 ; ---------------------------------
   58C7                    1689 _abrirPuerta::
   58C7 DD E5         [15] 1690 	push	ix
   58C9 DD 21 00 00   [14] 1691 	ld	ix,#0
   58CD DD 39         [15] 1692 	add	ix,sp
                           1693 ;src/main.c:449: switch(personaje){
   58CF DD 7E 04      [19] 1694 	ld	a,4 (ix)
   58D2 B7            [ 4] 1695 	or	a, a
   58D3 28 0A         [12] 1696 	jr	Z,00101$
   58D5 DD 7E 04      [19] 1697 	ld	a,4 (ix)
   58D8 3D            [ 4] 1698 	dec	a
   58D9 CA 5F 59      [10] 1699 	jp	Z,00102$
   58DC C3 DC 59      [10] 1700 	jp	00104$
                           1701 ;src/main.c:451: case 0:
   58DF                    1702 00101$:
                           1703 ;src/main.c:452: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 24));
   58DF 21 02 18      [10] 1704 	ld	hl,#0x1802
   58E2 E5            [11] 1705 	push	hl
   58E3 21 00 C0      [10] 1706 	ld	hl,#0xC000
   58E6 E5            [11] 1707 	push	hl
   58E7 CD 0A 43      [17] 1708 	call	_cpct_getScreenPtr
   58EA 4D            [ 4] 1709 	ld	c,l
   58EB 44            [ 4] 1710 	ld	b,h
   58EC 2A 36 18      [16] 1711 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   58EF C5            [11] 1712 	push	bc
   58F0 E5            [11] 1713 	push	hl
   58F1 CD C3 42      [17] 1714 	call	_cpct_drawTileAligned2x4_f
                           1715 ;src/main.c:453: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 28));
   58F4 21 02 1C      [10] 1716 	ld	hl,#0x1C02
   58F7 E5            [11] 1717 	push	hl
   58F8 21 00 C0      [10] 1718 	ld	hl,#0xC000
   58FB E5            [11] 1719 	push	hl
   58FC CD 0A 43      [17] 1720 	call	_cpct_getScreenPtr
   58FF 4D            [ 4] 1721 	ld	c,l
   5900 44            [ 4] 1722 	ld	b,h
   5901 2A 36 18      [16] 1723 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   5904 C5            [11] 1724 	push	bc
   5905 E5            [11] 1725 	push	hl
   5906 CD C3 42      [17] 1726 	call	_cpct_drawTileAligned2x4_f
                           1727 ;src/main.c:454: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 32));
   5909 21 02 20      [10] 1728 	ld	hl,#0x2002
   590C E5            [11] 1729 	push	hl
   590D 21 00 C0      [10] 1730 	ld	hl,#0xC000
   5910 E5            [11] 1731 	push	hl
   5911 CD 0A 43      [17] 1732 	call	_cpct_getScreenPtr
   5914 4D            [ 4] 1733 	ld	c,l
   5915 44            [ 4] 1734 	ld	b,h
   5916 2A 36 18      [16] 1735 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   5919 C5            [11] 1736 	push	bc
   591A E5            [11] 1737 	push	hl
   591B CD C3 42      [17] 1738 	call	_cpct_drawTileAligned2x4_f
                           1739 ;src/main.c:455: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 36));
   591E 21 02 24      [10] 1740 	ld	hl,#0x2402
   5921 E5            [11] 1741 	push	hl
   5922 21 00 C0      [10] 1742 	ld	hl,#0xC000
   5925 E5            [11] 1743 	push	hl
   5926 CD 0A 43      [17] 1744 	call	_cpct_getScreenPtr
   5929 4D            [ 4] 1745 	ld	c,l
   592A 44            [ 4] 1746 	ld	b,h
   592B 2A 36 18      [16] 1747 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   592E C5            [11] 1748 	push	bc
   592F E5            [11] 1749 	push	hl
   5930 CD C3 42      [17] 1750 	call	_cpct_drawTileAligned2x4_f
                           1751 ;src/main.c:456: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 2, 40));
   5933 21 02 28      [10] 1752 	ld	hl,#0x2802
   5936 E5            [11] 1753 	push	hl
   5937 21 00 C0      [10] 1754 	ld	hl,#0xC000
   593A E5            [11] 1755 	push	hl
   593B CD 0A 43      [17] 1756 	call	_cpct_getScreenPtr
   593E 4D            [ 4] 1757 	ld	c,l
   593F 44            [ 4] 1758 	ld	b,h
   5940 2A 36 18      [16] 1759 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   5943 C5            [11] 1760 	push	bc
   5944 E5            [11] 1761 	push	hl
   5945 CD C3 42      [17] 1762 	call	_cpct_drawTileAligned2x4_f
                           1763 ;src/main.c:457: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 0, 40));
   5948 21 00 28      [10] 1764 	ld	hl,#0x2800
   594B E5            [11] 1765 	push	hl
   594C 26 C0         [ 7] 1766 	ld	h, #0xC0
   594E E5            [11] 1767 	push	hl
   594F CD 0A 43      [17] 1768 	call	_cpct_getScreenPtr
   5952 4D            [ 4] 1769 	ld	c,l
   5953 44            [ 4] 1770 	ld	b,h
   5954 2A 36 18      [16] 1771 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   5957 C5            [11] 1772 	push	bc
   5958 E5            [11] 1773 	push	hl
   5959 CD C3 42      [17] 1774 	call	_cpct_drawTileAligned2x4_f
                           1775 ;src/main.c:458: break;
   595C C3 DC 59      [10] 1776 	jp	00104$
                           1777 ;src/main.c:460: case 1:
   595F                    1778 00102$:
                           1779 ;src/main.c:461: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 76, 180));
   595F 21 4C B4      [10] 1780 	ld	hl,#0xB44C
   5962 E5            [11] 1781 	push	hl
   5963 21 00 C0      [10] 1782 	ld	hl,#0xC000
   5966 E5            [11] 1783 	push	hl
   5967 CD 0A 43      [17] 1784 	call	_cpct_getScreenPtr
   596A 4D            [ 4] 1785 	ld	c,l
   596B 44            [ 4] 1786 	ld	b,h
   596C 2A 36 18      [16] 1787 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   596F C5            [11] 1788 	push	bc
   5970 E5            [11] 1789 	push	hl
   5971 CD C3 42      [17] 1790 	call	_cpct_drawTileAligned2x4_f
                           1791 ;src/main.c:462: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 180));
   5974 21 4A B4      [10] 1792 	ld	hl,#0xB44A
   5977 E5            [11] 1793 	push	hl
   5978 21 00 C0      [10] 1794 	ld	hl,#0xC000
   597B E5            [11] 1795 	push	hl
   597C CD 0A 43      [17] 1796 	call	_cpct_getScreenPtr
   597F 4D            [ 4] 1797 	ld	c,l
   5980 44            [ 4] 1798 	ld	b,h
   5981 2A 36 18      [16] 1799 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   5984 C5            [11] 1800 	push	bc
   5985 E5            [11] 1801 	push	hl
   5986 CD C3 42      [17] 1802 	call	_cpct_drawTileAligned2x4_f
                           1803 ;src/main.c:463: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 184));
   5989 21 4A B8      [10] 1804 	ld	hl,#0xB84A
   598C E5            [11] 1805 	push	hl
   598D 21 00 C0      [10] 1806 	ld	hl,#0xC000
   5990 E5            [11] 1807 	push	hl
   5991 CD 0A 43      [17] 1808 	call	_cpct_getScreenPtr
   5994 4D            [ 4] 1809 	ld	c,l
   5995 44            [ 4] 1810 	ld	b,h
   5996 2A 36 18      [16] 1811 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   5999 C5            [11] 1812 	push	bc
   599A E5            [11] 1813 	push	hl
   599B CD C3 42      [17] 1814 	call	_cpct_drawTileAligned2x4_f
                           1815 ;src/main.c:464: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 188));
   599E 21 4A BC      [10] 1816 	ld	hl,#0xBC4A
   59A1 E5            [11] 1817 	push	hl
   59A2 21 00 C0      [10] 1818 	ld	hl,#0xC000
   59A5 E5            [11] 1819 	push	hl
   59A6 CD 0A 43      [17] 1820 	call	_cpct_getScreenPtr
   59A9 4D            [ 4] 1821 	ld	c,l
   59AA 44            [ 4] 1822 	ld	b,h
   59AB 2A 36 18      [16] 1823 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   59AE C5            [11] 1824 	push	bc
   59AF E5            [11] 1825 	push	hl
   59B0 CD C3 42      [17] 1826 	call	_cpct_drawTileAligned2x4_f
                           1827 ;src/main.c:465: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 192));
   59B3 21 4A C0      [10] 1828 	ld	hl,#0xC04A
   59B6 E5            [11] 1829 	push	hl
   59B7 2E 00         [ 7] 1830 	ld	l, #0x00
   59B9 E5            [11] 1831 	push	hl
   59BA CD 0A 43      [17] 1832 	call	_cpct_getScreenPtr
   59BD 4D            [ 4] 1833 	ld	c,l
   59BE 44            [ 4] 1834 	ld	b,h
   59BF 2A 36 18      [16] 1835 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   59C2 C5            [11] 1836 	push	bc
   59C3 E5            [11] 1837 	push	hl
   59C4 CD C3 42      [17] 1838 	call	_cpct_drawTileAligned2x4_f
                           1839 ;src/main.c:466: cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, 74, 196));
   59C7 21 4A C4      [10] 1840 	ld	hl,#0xC44A
   59CA E5            [11] 1841 	push	hl
   59CB 21 00 C0      [10] 1842 	ld	hl,#0xC000
   59CE E5            [11] 1843 	push	hl
   59CF CD 0A 43      [17] 1844 	call	_cpct_getScreenPtr
   59D2 4D            [ 4] 1845 	ld	c,l
   59D3 44            [ 4] 1846 	ld	b,h
   59D4 2A 36 18      [16] 1847 	ld	hl, (#(_pre_tileset + 0x002e) + 0)
   59D7 C5            [11] 1848 	push	bc
   59D8 E5            [11] 1849 	push	hl
   59D9 CD C3 42      [17] 1850 	call	_cpct_drawTileAligned2x4_f
                           1851 ;src/main.c:468: }
   59DC                    1852 00104$:
   59DC DD E1         [14] 1853 	pop	ix
   59DE C9            [10] 1854 	ret
                           1855 ;src/main.c:472: void dibujarMarcador(){
                           1856 ;	---------------------------------
                           1857 ; Function dibujarMarcador
                           1858 ; ---------------------------------
   59DF                    1859 _dibujarMarcador::
   59DF DD E5         [15] 1860 	push	ix
   59E1 DD 21 00 00   [14] 1861 	ld	ix,#0
   59E5 DD 39         [15] 1862 	add	ix,sp
   59E7 21 F8 FF      [10] 1863 	ld	hl,#-8
   59EA 39            [11] 1864 	add	hl,sp
   59EB F9            [ 6] 1865 	ld	sp,hl
                           1866 ;src/main.c:476: sprintf(str0, "%d", prota.marcador);
   59EC 21 70 4F      [10] 1867 	ld	hl,#_prota+28
   59EF 5E            [ 7] 1868 	ld	e,(hl)
   59F0 16 00         [ 7] 1869 	ld	d,#0x00
   59F2 21 00 00      [10] 1870 	ld	hl,#0x0000
   59F5 39            [11] 1871 	add	hl,sp
   59F6 E5            [11] 1872 	push	hl
   59F7 D5            [11] 1873 	push	de
   59F8 11 59 5A      [10] 1874 	ld	de,#___str_0
   59FB D5            [11] 1875 	push	de
   59FC E5            [11] 1876 	push	hl
   59FD CD 8E 41      [17] 1877 	call	_sprintf
   5A00 21 06 00      [10] 1878 	ld	hl,#6
   5A03 39            [11] 1879 	add	hl,sp
   5A04 F9            [ 6] 1880 	ld	sp,hl
   5A05 21 20 06      [10] 1881 	ld	hl,#0x0620
   5A08 E5            [11] 1882 	push	hl
   5A09 21 00 C0      [10] 1883 	ld	hl,#0xC000
   5A0C E5            [11] 1884 	push	hl
   5A0D CD 0A 43      [17] 1885 	call	_cpct_getScreenPtr
   5A10 EB            [ 4] 1886 	ex	de,hl
   5A11 C1            [10] 1887 	pop	bc
   5A12 21 0F 00      [10] 1888 	ld	hl,#0x000F
   5A15 E5            [11] 1889 	push	hl
   5A16 D5            [11] 1890 	push	de
   5A17 C5            [11] 1891 	push	bc
   5A18 CD E4 3E      [17] 1892 	call	_cpct_drawStringM0
   5A1B 21 06 00      [10] 1893 	ld	hl,#6
   5A1E 39            [11] 1894 	add	hl,sp
   5A1F F9            [ 6] 1895 	ld	sp,hl
                           1896 ;src/main.c:479: sprintf(str1, "%d", protaDos.marcador);
   5A20 21 8D 4F      [10] 1897 	ld	hl,#_protaDos+28
   5A23 5E            [ 7] 1898 	ld	e,(hl)
   5A24 16 00         [ 7] 1899 	ld	d,#0x00
   5A26 21 04 00      [10] 1900 	ld	hl,#0x0004
   5A29 39            [11] 1901 	add	hl,sp
   5A2A E5            [11] 1902 	push	hl
   5A2B D5            [11] 1903 	push	de
   5A2C 11 59 5A      [10] 1904 	ld	de,#___str_0
   5A2F D5            [11] 1905 	push	de
   5A30 E5            [11] 1906 	push	hl
   5A31 CD 8E 41      [17] 1907 	call	_sprintf
   5A34 21 06 00      [10] 1908 	ld	hl,#6
   5A37 39            [11] 1909 	add	hl,sp
   5A38 F9            [ 6] 1910 	ld	sp,hl
   5A39 21 2B 06      [10] 1911 	ld	hl,#0x062B
   5A3C E5            [11] 1912 	push	hl
   5A3D 21 00 C0      [10] 1913 	ld	hl,#0xC000
   5A40 E5            [11] 1914 	push	hl
   5A41 CD 0A 43      [17] 1915 	call	_cpct_getScreenPtr
   5A44 EB            [ 4] 1916 	ex	de,hl
   5A45 C1            [10] 1917 	pop	bc
   5A46 21 0F 00      [10] 1918 	ld	hl,#0x000F
   5A49 E5            [11] 1919 	push	hl
   5A4A D5            [11] 1920 	push	de
   5A4B C5            [11] 1921 	push	bc
   5A4C CD E4 3E      [17] 1922 	call	_cpct_drawStringM0
   5A4F 21 06 00      [10] 1923 	ld	hl,#6
   5A52 39            [11] 1924 	add	hl,sp
   5A53 F9            [ 6] 1925 	ld	sp,hl
   5A54 DD F9         [10] 1926 	ld	sp, ix
   5A56 DD E1         [14] 1927 	pop	ix
   5A58 C9            [10] 1928 	ret
   5A59                    1929 ___str_0:
   5A59 25 64              1930 	.ascii "%d"
   5A5B 00                 1931 	.db 0x00
                           1932 ;src/main.c:486: void sumaMarcador(u8 soy, u8 num){
                           1933 ;	---------------------------------
                           1934 ; Function sumaMarcador
                           1935 ; ---------------------------------
   5A5C                    1936 _sumaMarcador::
   5A5C DD E5         [15] 1937 	push	ix
   5A5E DD 21 00 00   [14] 1938 	ld	ix,#0
   5A62 DD 39         [15] 1939 	add	ix,sp
                           1940 ;src/main.c:492: switch(num){
   5A64 3E 05         [ 7] 1941 	ld	a,#0x05
   5A66 DD 96 05      [19] 1942 	sub	a, 5 (ix)
   5A69 3E 00         [ 7] 1943 	ld	a,#0x00
   5A6B 17            [ 4] 1944 	rla
   5A6C 4F            [ 4] 1945 	ld	c,a
                           1946 ;src/main.c:489: switch(soy){
   5A6D DD 7E 04      [19] 1947 	ld	a,4 (ix)
   5A70 3D            [ 4] 1948 	dec	a
   5A71 28 0B         [12] 1949 	jr	Z,00101$
   5A73 DD 7E 04      [19] 1950 	ld	a,4 (ix)
   5A76 D6 02         [ 7] 1951 	sub	a, #0x02
   5A78 CA 69 5B      [10] 1952 	jp	Z,00109$
   5A7B C3 51 5C      [10] 1953 	jp	00118$
                           1954 ;src/main.c:490: case 1:
   5A7E                    1955 00101$:
                           1956 ;src/main.c:492: switch(num){
   5A7E 79            [ 4] 1957 	ld	a,c
   5A7F B7            [ 4] 1958 	or	a, a
   5A80 C2 61 5B      [10] 1959 	jp	NZ,00108$
   5A83 DD 5E 05      [19] 1960 	ld	e,5 (ix)
   5A86 16 00         [ 7] 1961 	ld	d,#0x00
   5A88 21 8F 5A      [10] 1962 	ld	hl,#00138$
   5A8B 19            [11] 1963 	add	hl,de
   5A8C 19            [11] 1964 	add	hl,de
   5A8D 19            [11] 1965 	add	hl,de
   5A8E E9            [ 4] 1966 	jp	(hl)
   5A8F                    1967 00138$:
   5A8F C3 A1 5A      [10] 1968 	jp	00102$
   5A92 C3 C2 5A      [10] 1969 	jp	00103$
   5A95 C3 E3 5A      [10] 1970 	jp	00104$
   5A98 C3 03 5B      [10] 1971 	jp	00105$
   5A9B C3 23 5B      [10] 1972 	jp	00106$
   5A9E C3 43 5B      [10] 1973 	jp	00107$
                           1974 ;src/main.c:493: case 0:
   5AA1                    1975 00102$:
                           1976 ;src/main.c:494: cpct_drawStringM0("0", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
   5AA1 21 20 06      [10] 1977 	ld	hl,#0x0620
   5AA4 E5            [11] 1978 	push	hl
   5AA5 21 00 C0      [10] 1979 	ld	hl,#0xC000
   5AA8 E5            [11] 1980 	push	hl
   5AA9 CD 0A 43      [17] 1981 	call	_cpct_getScreenPtr
   5AAC 4D            [ 4] 1982 	ld	c,l
   5AAD 44            [ 4] 1983 	ld	b,h
   5AAE 21 0F 00      [10] 1984 	ld	hl,#0x000F
   5AB1 E5            [11] 1985 	push	hl
   5AB2 C5            [11] 1986 	push	bc
   5AB3 21 54 5C      [10] 1987 	ld	hl,#___str_1
   5AB6 E5            [11] 1988 	push	hl
   5AB7 CD E4 3E      [17] 1989 	call	_cpct_drawStringM0
   5ABA 21 06 00      [10] 1990 	ld	hl,#6
   5ABD 39            [11] 1991 	add	hl,sp
   5ABE F9            [ 6] 1992 	ld	sp,hl
                           1993 ;src/main.c:495: break;
   5ABF C3 61 5B      [10] 1994 	jp	00108$
                           1995 ;src/main.c:496: case 1:
   5AC2                    1996 00103$:
                           1997 ;src/main.c:497: cpct_drawStringM0("1", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
   5AC2 21 20 06      [10] 1998 	ld	hl,#0x0620
   5AC5 E5            [11] 1999 	push	hl
   5AC6 21 00 C0      [10] 2000 	ld	hl,#0xC000
   5AC9 E5            [11] 2001 	push	hl
   5ACA CD 0A 43      [17] 2002 	call	_cpct_getScreenPtr
   5ACD 4D            [ 4] 2003 	ld	c,l
   5ACE 44            [ 4] 2004 	ld	b,h
   5ACF 21 0F 00      [10] 2005 	ld	hl,#0x000F
   5AD2 E5            [11] 2006 	push	hl
   5AD3 C5            [11] 2007 	push	bc
   5AD4 21 56 5C      [10] 2008 	ld	hl,#___str_2
   5AD7 E5            [11] 2009 	push	hl
   5AD8 CD E4 3E      [17] 2010 	call	_cpct_drawStringM0
   5ADB 21 06 00      [10] 2011 	ld	hl,#6
   5ADE 39            [11] 2012 	add	hl,sp
   5ADF F9            [ 6] 2013 	ld	sp,hl
                           2014 ;src/main.c:498: break;
   5AE0 C3 61 5B      [10] 2015 	jp	00108$
                           2016 ;src/main.c:499: case 2:
   5AE3                    2017 00104$:
                           2018 ;src/main.c:500: cpct_drawStringM0("2", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
   5AE3 21 20 06      [10] 2019 	ld	hl,#0x0620
   5AE6 E5            [11] 2020 	push	hl
   5AE7 21 00 C0      [10] 2021 	ld	hl,#0xC000
   5AEA E5            [11] 2022 	push	hl
   5AEB CD 0A 43      [17] 2023 	call	_cpct_getScreenPtr
   5AEE 4D            [ 4] 2024 	ld	c,l
   5AEF 44            [ 4] 2025 	ld	b,h
   5AF0 21 0F 00      [10] 2026 	ld	hl,#0x000F
   5AF3 E5            [11] 2027 	push	hl
   5AF4 C5            [11] 2028 	push	bc
   5AF5 21 58 5C      [10] 2029 	ld	hl,#___str_3
   5AF8 E5            [11] 2030 	push	hl
   5AF9 CD E4 3E      [17] 2031 	call	_cpct_drawStringM0
   5AFC 21 06 00      [10] 2032 	ld	hl,#6
   5AFF 39            [11] 2033 	add	hl,sp
   5B00 F9            [ 6] 2034 	ld	sp,hl
                           2035 ;src/main.c:501: break;
   5B01 18 5E         [12] 2036 	jr	00108$
                           2037 ;src/main.c:502: case 3:
   5B03                    2038 00105$:
                           2039 ;src/main.c:503: cpct_drawStringM0("3", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
   5B03 21 20 06      [10] 2040 	ld	hl,#0x0620
   5B06 E5            [11] 2041 	push	hl
   5B07 21 00 C0      [10] 2042 	ld	hl,#0xC000
   5B0A E5            [11] 2043 	push	hl
   5B0B CD 0A 43      [17] 2044 	call	_cpct_getScreenPtr
   5B0E 4D            [ 4] 2045 	ld	c,l
   5B0F 44            [ 4] 2046 	ld	b,h
   5B10 21 0F 00      [10] 2047 	ld	hl,#0x000F
   5B13 E5            [11] 2048 	push	hl
   5B14 C5            [11] 2049 	push	bc
   5B15 21 5A 5C      [10] 2050 	ld	hl,#___str_4
   5B18 E5            [11] 2051 	push	hl
   5B19 CD E4 3E      [17] 2052 	call	_cpct_drawStringM0
   5B1C 21 06 00      [10] 2053 	ld	hl,#6
   5B1F 39            [11] 2054 	add	hl,sp
   5B20 F9            [ 6] 2055 	ld	sp,hl
                           2056 ;src/main.c:504: break;
   5B21 18 3E         [12] 2057 	jr	00108$
                           2058 ;src/main.c:505: case 4:
   5B23                    2059 00106$:
                           2060 ;src/main.c:506: cpct_drawStringM0("4", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
   5B23 21 20 06      [10] 2061 	ld	hl,#0x0620
   5B26 E5            [11] 2062 	push	hl
   5B27 21 00 C0      [10] 2063 	ld	hl,#0xC000
   5B2A E5            [11] 2064 	push	hl
   5B2B CD 0A 43      [17] 2065 	call	_cpct_getScreenPtr
   5B2E 4D            [ 4] 2066 	ld	c,l
   5B2F 44            [ 4] 2067 	ld	b,h
   5B30 21 0F 00      [10] 2068 	ld	hl,#0x000F
   5B33 E5            [11] 2069 	push	hl
   5B34 C5            [11] 2070 	push	bc
   5B35 21 5C 5C      [10] 2071 	ld	hl,#___str_5
   5B38 E5            [11] 2072 	push	hl
   5B39 CD E4 3E      [17] 2073 	call	_cpct_drawStringM0
   5B3C 21 06 00      [10] 2074 	ld	hl,#6
   5B3F 39            [11] 2075 	add	hl,sp
   5B40 F9            [ 6] 2076 	ld	sp,hl
                           2077 ;src/main.c:507: break;
   5B41 18 1E         [12] 2078 	jr	00108$
                           2079 ;src/main.c:508: case 5:
   5B43                    2080 00107$:
                           2081 ;src/main.c:509: cpct_drawStringM0("5", cpct_getScreenPtr(CPCT_VMEM_START, 32, 6), 15, 0);
   5B43 21 20 06      [10] 2082 	ld	hl,#0x0620
   5B46 E5            [11] 2083 	push	hl
   5B47 21 00 C0      [10] 2084 	ld	hl,#0xC000
   5B4A E5            [11] 2085 	push	hl
   5B4B CD 0A 43      [17] 2086 	call	_cpct_getScreenPtr
   5B4E 4D            [ 4] 2087 	ld	c,l
   5B4F 44            [ 4] 2088 	ld	b,h
   5B50 21 0F 00      [10] 2089 	ld	hl,#0x000F
   5B53 E5            [11] 2090 	push	hl
   5B54 C5            [11] 2091 	push	bc
   5B55 21 5E 5C      [10] 2092 	ld	hl,#___str_6
   5B58 E5            [11] 2093 	push	hl
   5B59 CD E4 3E      [17] 2094 	call	_cpct_drawStringM0
   5B5C 21 06 00      [10] 2095 	ld	hl,#6
   5B5F 39            [11] 2096 	add	hl,sp
   5B60 F9            [ 6] 2097 	ld	sp,hl
                           2098 ;src/main.c:511: }
   5B61                    2099 00108$:
                           2100 ;src/main.c:514: protaDos.disparando=NO;
   5B61 21 86 4F      [10] 2101 	ld	hl,#(_protaDos + 0x0015)
   5B64 36 00         [10] 2102 	ld	(hl),#0x00
                           2103 ;src/main.c:515: break;
   5B66 C3 51 5C      [10] 2104 	jp	00118$
                           2105 ;src/main.c:516: case 2:
   5B69                    2106 00109$:
                           2107 ;src/main.c:518: switch(num){
   5B69 79            [ 4] 2108 	ld	a,c
   5B6A B7            [ 4] 2109 	or	a, a
   5B6B C2 4C 5C      [10] 2110 	jp	NZ,00116$
   5B6E DD 5E 05      [19] 2111 	ld	e,5 (ix)
   5B71 16 00         [ 7] 2112 	ld	d,#0x00
   5B73 21 7A 5B      [10] 2113 	ld	hl,#00139$
   5B76 19            [11] 2114 	add	hl,de
   5B77 19            [11] 2115 	add	hl,de
   5B78 19            [11] 2116 	add	hl,de
   5B79 E9            [ 4] 2117 	jp	(hl)
   5B7A                    2118 00139$:
   5B7A C3 8C 5B      [10] 2119 	jp	00110$
   5B7D C3 AD 5B      [10] 2120 	jp	00111$
   5B80 C3 CE 5B      [10] 2121 	jp	00112$
   5B83 C3 EE 5B      [10] 2122 	jp	00113$
   5B86 C3 0E 5C      [10] 2123 	jp	00114$
   5B89 C3 2E 5C      [10] 2124 	jp	00115$
                           2125 ;src/main.c:519: case 0:
   5B8C                    2126 00110$:
                           2127 ;src/main.c:520: cpct_drawStringM0("0", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
   5B8C 21 2B 06      [10] 2128 	ld	hl,#0x062B
   5B8F E5            [11] 2129 	push	hl
   5B90 21 00 C0      [10] 2130 	ld	hl,#0xC000
   5B93 E5            [11] 2131 	push	hl
   5B94 CD 0A 43      [17] 2132 	call	_cpct_getScreenPtr
   5B97 4D            [ 4] 2133 	ld	c,l
   5B98 44            [ 4] 2134 	ld	b,h
   5B99 21 0F 00      [10] 2135 	ld	hl,#0x000F
   5B9C E5            [11] 2136 	push	hl
   5B9D C5            [11] 2137 	push	bc
   5B9E 21 54 5C      [10] 2138 	ld	hl,#___str_1
   5BA1 E5            [11] 2139 	push	hl
   5BA2 CD E4 3E      [17] 2140 	call	_cpct_drawStringM0
   5BA5 21 06 00      [10] 2141 	ld	hl,#6
   5BA8 39            [11] 2142 	add	hl,sp
   5BA9 F9            [ 6] 2143 	ld	sp,hl
                           2144 ;src/main.c:521: break;
   5BAA C3 4C 5C      [10] 2145 	jp	00116$
                           2146 ;src/main.c:522: case 1:
   5BAD                    2147 00111$:
                           2148 ;src/main.c:523: cpct_drawStringM0("1", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
   5BAD 21 2B 06      [10] 2149 	ld	hl,#0x062B
   5BB0 E5            [11] 2150 	push	hl
   5BB1 21 00 C0      [10] 2151 	ld	hl,#0xC000
   5BB4 E5            [11] 2152 	push	hl
   5BB5 CD 0A 43      [17] 2153 	call	_cpct_getScreenPtr
   5BB8 4D            [ 4] 2154 	ld	c,l
   5BB9 44            [ 4] 2155 	ld	b,h
   5BBA 21 0F 00      [10] 2156 	ld	hl,#0x000F
   5BBD E5            [11] 2157 	push	hl
   5BBE C5            [11] 2158 	push	bc
   5BBF 21 56 5C      [10] 2159 	ld	hl,#___str_2
   5BC2 E5            [11] 2160 	push	hl
   5BC3 CD E4 3E      [17] 2161 	call	_cpct_drawStringM0
   5BC6 21 06 00      [10] 2162 	ld	hl,#6
   5BC9 39            [11] 2163 	add	hl,sp
   5BCA F9            [ 6] 2164 	ld	sp,hl
                           2165 ;src/main.c:524: break;
   5BCB C3 4C 5C      [10] 2166 	jp	00116$
                           2167 ;src/main.c:525: case 2:
   5BCE                    2168 00112$:
                           2169 ;src/main.c:526: cpct_drawStringM0("2", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
   5BCE 21 2B 06      [10] 2170 	ld	hl,#0x062B
   5BD1 E5            [11] 2171 	push	hl
   5BD2 21 00 C0      [10] 2172 	ld	hl,#0xC000
   5BD5 E5            [11] 2173 	push	hl
   5BD6 CD 0A 43      [17] 2174 	call	_cpct_getScreenPtr
   5BD9 4D            [ 4] 2175 	ld	c,l
   5BDA 44            [ 4] 2176 	ld	b,h
   5BDB 21 0F 00      [10] 2177 	ld	hl,#0x000F
   5BDE E5            [11] 2178 	push	hl
   5BDF C5            [11] 2179 	push	bc
   5BE0 21 58 5C      [10] 2180 	ld	hl,#___str_3
   5BE3 E5            [11] 2181 	push	hl
   5BE4 CD E4 3E      [17] 2182 	call	_cpct_drawStringM0
   5BE7 21 06 00      [10] 2183 	ld	hl,#6
   5BEA 39            [11] 2184 	add	hl,sp
   5BEB F9            [ 6] 2185 	ld	sp,hl
                           2186 ;src/main.c:527: break;
   5BEC 18 5E         [12] 2187 	jr	00116$
                           2188 ;src/main.c:528: case 3:
   5BEE                    2189 00113$:
                           2190 ;src/main.c:529: cpct_drawStringM0("3", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
   5BEE 21 2B 06      [10] 2191 	ld	hl,#0x062B
   5BF1 E5            [11] 2192 	push	hl
   5BF2 21 00 C0      [10] 2193 	ld	hl,#0xC000
   5BF5 E5            [11] 2194 	push	hl
   5BF6 CD 0A 43      [17] 2195 	call	_cpct_getScreenPtr
   5BF9 4D            [ 4] 2196 	ld	c,l
   5BFA 44            [ 4] 2197 	ld	b,h
   5BFB 21 0F 00      [10] 2198 	ld	hl,#0x000F
   5BFE E5            [11] 2199 	push	hl
   5BFF C5            [11] 2200 	push	bc
   5C00 21 5A 5C      [10] 2201 	ld	hl,#___str_4
   5C03 E5            [11] 2202 	push	hl
   5C04 CD E4 3E      [17] 2203 	call	_cpct_drawStringM0
   5C07 21 06 00      [10] 2204 	ld	hl,#6
   5C0A 39            [11] 2205 	add	hl,sp
   5C0B F9            [ 6] 2206 	ld	sp,hl
                           2207 ;src/main.c:530: break;
   5C0C 18 3E         [12] 2208 	jr	00116$
                           2209 ;src/main.c:531: case 4:
   5C0E                    2210 00114$:
                           2211 ;src/main.c:532: cpct_drawStringM0("4", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
   5C0E 21 2B 06      [10] 2212 	ld	hl,#0x062B
   5C11 E5            [11] 2213 	push	hl
   5C12 21 00 C0      [10] 2214 	ld	hl,#0xC000
   5C15 E5            [11] 2215 	push	hl
   5C16 CD 0A 43      [17] 2216 	call	_cpct_getScreenPtr
   5C19 4D            [ 4] 2217 	ld	c,l
   5C1A 44            [ 4] 2218 	ld	b,h
   5C1B 21 0F 00      [10] 2219 	ld	hl,#0x000F
   5C1E E5            [11] 2220 	push	hl
   5C1F C5            [11] 2221 	push	bc
   5C20 21 5C 5C      [10] 2222 	ld	hl,#___str_5
   5C23 E5            [11] 2223 	push	hl
   5C24 CD E4 3E      [17] 2224 	call	_cpct_drawStringM0
   5C27 21 06 00      [10] 2225 	ld	hl,#6
   5C2A 39            [11] 2226 	add	hl,sp
   5C2B F9            [ 6] 2227 	ld	sp,hl
                           2228 ;src/main.c:533: break;
   5C2C 18 1E         [12] 2229 	jr	00116$
                           2230 ;src/main.c:534: case 5:
   5C2E                    2231 00115$:
                           2232 ;src/main.c:535: cpct_drawStringM0("5", cpct_getScreenPtr(CPCT_VMEM_START, 43, 6), 15, 0);
   5C2E 21 2B 06      [10] 2233 	ld	hl,#0x062B
   5C31 E5            [11] 2234 	push	hl
   5C32 21 00 C0      [10] 2235 	ld	hl,#0xC000
   5C35 E5            [11] 2236 	push	hl
   5C36 CD 0A 43      [17] 2237 	call	_cpct_getScreenPtr
   5C39 4D            [ 4] 2238 	ld	c,l
   5C3A 44            [ 4] 2239 	ld	b,h
   5C3B 21 0F 00      [10] 2240 	ld	hl,#0x000F
   5C3E E5            [11] 2241 	push	hl
   5C3F C5            [11] 2242 	push	bc
   5C40 21 5E 5C      [10] 2243 	ld	hl,#___str_6
   5C43 E5            [11] 2244 	push	hl
   5C44 CD E4 3E      [17] 2245 	call	_cpct_drawStringM0
   5C47 21 06 00      [10] 2246 	ld	hl,#6
   5C4A 39            [11] 2247 	add	hl,sp
   5C4B F9            [ 6] 2248 	ld	sp,hl
                           2249 ;src/main.c:537: }
   5C4C                    2250 00116$:
                           2251 ;src/main.c:540: prota.disparando=NO;
   5C4C 21 69 4F      [10] 2252 	ld	hl,#(_prota + 0x0015)
   5C4F 36 00         [10] 2253 	ld	(hl),#0x00
                           2254 ;src/main.c:543: }
   5C51                    2255 00118$:
   5C51 DD E1         [14] 2256 	pop	ix
   5C53 C9            [10] 2257 	ret
   5C54                    2258 ___str_1:
   5C54 30                 2259 	.ascii "0"
   5C55 00                 2260 	.db 0x00
   5C56                    2261 ___str_2:
   5C56 31                 2262 	.ascii "1"
   5C57 00                 2263 	.db 0x00
   5C58                    2264 ___str_3:
   5C58 32                 2265 	.ascii "2"
   5C59 00                 2266 	.db 0x00
   5C5A                    2267 ___str_4:
   5C5A 33                 2268 	.ascii "3"
   5C5B 00                 2269 	.db 0x00
   5C5C                    2270 ___str_5:
   5C5C 34                 2271 	.ascii "4"
   5C5D 00                 2272 	.db 0x00
   5C5E                    2273 ___str_6:
   5C5E 35                 2274 	.ascii "5"
   5C5F 00                 2275 	.db 0x00
                           2276 ;src/main.c:550: void comprobarPuerta(u8 personaje){
                           2277 ;	---------------------------------
                           2278 ; Function comprobarPuerta
                           2279 ; ---------------------------------
   5C60                    2280 _comprobarPuerta::
   5C60 DD E5         [15] 2281 	push	ix
   5C62 DD 21 00 00   [14] 2282 	ld	ix,#0
   5C66 DD 39         [15] 2283 	add	ix,sp
                           2284 ;src/main.c:553: switch(personaje){
   5C68 DD 7E 04      [19] 2285 	ld	a,4 (ix)
   5C6B B7            [ 4] 2286 	or	a, a
   5C6C 28 09         [12] 2287 	jr	Z,00101$
   5C6E DD 7E 04      [19] 2288 	ld	a,4 (ix)
   5C71 3D            [ 4] 2289 	dec	a
   5C72 28 6D         [12] 2290 	jr	Z,00107$
   5C74 C3 47 5D      [10] 2291 	jp	00114$
                           2292 ;src/main.c:555: case 0:
   5C77                    2293 00101$:
                           2294 ;src/main.c:556: if(prota.x + ANCHO_PERSONAJE / 2 >= 3 && prota.x + ANCHO_PERSONAJE <= 7 && prota.y + ALTO_PERSONAJE / 2 >= 25  && prota.y + ALTO_PERSONAJE / 2 <= 45){
   5C77 21 54 4F      [10] 2295 	ld	hl, #_prota + 0
   5C7A 4E            [ 7] 2296 	ld	c,(hl)
   5C7B 06 00         [ 7] 2297 	ld	b,#0x00
   5C7D 59            [ 4] 2298 	ld	e, c
   5C7E 50            [ 4] 2299 	ld	d, b
   5C7F 13            [ 6] 2300 	inc	de
   5C80 13            [ 6] 2301 	inc	de
   5C81 7B            [ 4] 2302 	ld	a,e
   5C82 D6 03         [ 7] 2303 	sub	a, #0x03
   5C84 7A            [ 4] 2304 	ld	a,d
   5C85 17            [ 4] 2305 	rla
   5C86 3F            [ 4] 2306 	ccf
   5C87 1F            [ 4] 2307 	rra
   5C88 DE 80         [ 7] 2308 	sbc	a, #0x80
   5C8A DA 47 5D      [10] 2309 	jp	C,00114$
   5C8D 21 05 00      [10] 2310 	ld	hl,#0x0005
   5C90 09            [11] 2311 	add	hl,bc
   5C91 3E 07         [ 7] 2312 	ld	a,#0x07
   5C93 BD            [ 4] 2313 	cp	a, l
   5C94 3E 00         [ 7] 2314 	ld	a,#0x00
   5C96 9C            [ 4] 2315 	sbc	a, h
   5C97 E2 9C 5C      [10] 2316 	jp	PO, 00158$
   5C9A EE 80         [ 7] 2317 	xor	a, #0x80
   5C9C                    2318 00158$:
   5C9C FA 47 5D      [10] 2319 	jp	M,00114$
   5C9F 21 55 4F      [10] 2320 	ld	hl, #_prota + 1
   5CA2 4E            [ 7] 2321 	ld	c,(hl)
   5CA3 06 00         [ 7] 2322 	ld	b,#0x00
   5CA5 21 07 00      [10] 2323 	ld	hl,#0x0007
   5CA8 09            [11] 2324 	add	hl,bc
   5CA9 7D            [ 4] 2325 	ld	a,l
   5CAA D6 19         [ 7] 2326 	sub	a, #0x19
   5CAC 7C            [ 4] 2327 	ld	a,h
   5CAD 17            [ 4] 2328 	rla
   5CAE 3F            [ 4] 2329 	ccf
   5CAF 1F            [ 4] 2330 	rra
   5CB0 DE 80         [ 7] 2331 	sbc	a, #0x80
   5CB2 DA 47 5D      [10] 2332 	jp	C,00114$
   5CB5 3E 2D         [ 7] 2333 	ld	a,#0x2D
   5CB7 BD            [ 4] 2334 	cp	a, l
   5CB8 3E 00         [ 7] 2335 	ld	a,#0x00
   5CBA 9C            [ 4] 2336 	sbc	a, h
   5CBB E2 C0 5C      [10] 2337 	jp	PO, 00159$
   5CBE EE 80         [ 7] 2338 	xor	a, #0x80
   5CC0                    2339 00159$:
   5CC0 FA 47 5D      [10] 2340 	jp	M,00114$
                           2341 ;src/main.c:557: sumaMarcador(1, ++prota.marcador);//1 para jimmy
   5CC3 21 70 4F      [10] 2342 	ld	hl,#_prota + 28
   5CC6 46            [ 7] 2343 	ld	b,(hl)
   5CC7 04            [ 4] 2344 	inc	b
   5CC8 70            [ 7] 2345 	ld	(hl),b
   5CC9 C5            [11] 2346 	push	bc
   5CCA 33            [ 6] 2347 	inc	sp
   5CCB 3E 01         [ 7] 2348 	ld	a,#0x01
   5CCD F5            [11] 2349 	push	af
   5CCE 33            [ 6] 2350 	inc	sp
   5CCF CD 5C 5A      [17] 2351 	call	_sumaMarcador
   5CD2 F1            [10] 2352 	pop	af
                           2353 ;src/main.c:558: lastWinner = 1;
   5CD3 21 A8 4F      [10] 2354 	ld	hl,#_lastWinner + 0
   5CD6 36 01         [10] 2355 	ld	(hl), #0x01
                           2356 ;src/main.c:559: ronda++;
   5CD8 21 B0 4F      [10] 2357 	ld	hl, #_ronda+0
   5CDB 34            [11] 2358 	inc	(hl)
                           2359 ;src/main.c:560: reaparecer();
   5CDC CD 39 77      [17] 2360 	call	_reaparecer
                           2361 ;src/main.c:562: break;
   5CDF 18 66         [12] 2362 	jr	00114$
                           2363 ;src/main.c:564: case 1:
   5CE1                    2364 00107$:
                           2365 ;src/main.c:565: if(protaDos.x + ANCHO_PERSONAJE / 2 >= 72 && protaDos.x + ANCHO_PERSONAJE <= 78 && protaDos.y + ALTO_PERSONAJE / 2 >= 175  && protaDos.y + ALTO_PERSONAJE / 2 <= 196){
   5CE1 21 71 4F      [10] 2366 	ld	hl, #_protaDos + 0
   5CE4 4E            [ 7] 2367 	ld	c,(hl)
   5CE5 06 00         [ 7] 2368 	ld	b,#0x00
   5CE7 59            [ 4] 2369 	ld	e, c
   5CE8 50            [ 4] 2370 	ld	d, b
   5CE9 13            [ 6] 2371 	inc	de
   5CEA 13            [ 6] 2372 	inc	de
   5CEB 7B            [ 4] 2373 	ld	a,e
   5CEC D6 48         [ 7] 2374 	sub	a, #0x48
   5CEE 7A            [ 4] 2375 	ld	a,d
   5CEF 17            [ 4] 2376 	rla
   5CF0 3F            [ 4] 2377 	ccf
   5CF1 1F            [ 4] 2378 	rra
   5CF2 DE 80         [ 7] 2379 	sbc	a, #0x80
   5CF4 38 51         [12] 2380 	jr	C,00114$
   5CF6 21 05 00      [10] 2381 	ld	hl,#0x0005
   5CF9 09            [11] 2382 	add	hl,bc
   5CFA 3E 4E         [ 7] 2383 	ld	a,#0x4E
   5CFC BD            [ 4] 2384 	cp	a, l
   5CFD 3E 00         [ 7] 2385 	ld	a,#0x00
   5CFF 9C            [ 4] 2386 	sbc	a, h
   5D00 E2 05 5D      [10] 2387 	jp	PO, 00160$
   5D03 EE 80         [ 7] 2388 	xor	a, #0x80
   5D05                    2389 00160$:
   5D05 FA 47 5D      [10] 2390 	jp	M,00114$
   5D08 21 72 4F      [10] 2391 	ld	hl, #_protaDos + 1
   5D0B 4E            [ 7] 2392 	ld	c,(hl)
   5D0C 06 00         [ 7] 2393 	ld	b,#0x00
   5D0E 21 07 00      [10] 2394 	ld	hl,#0x0007
   5D11 09            [11] 2395 	add	hl,bc
   5D12 7D            [ 4] 2396 	ld	a,l
   5D13 D6 AF         [ 7] 2397 	sub	a, #0xAF
   5D15 7C            [ 4] 2398 	ld	a,h
   5D16 17            [ 4] 2399 	rla
   5D17 3F            [ 4] 2400 	ccf
   5D18 1F            [ 4] 2401 	rra
   5D19 DE 80         [ 7] 2402 	sbc	a, #0x80
   5D1B 38 2A         [12] 2403 	jr	C,00114$
   5D1D 3E C4         [ 7] 2404 	ld	a,#0xC4
   5D1F BD            [ 4] 2405 	cp	a, l
   5D20 3E 00         [ 7] 2406 	ld	a,#0x00
   5D22 9C            [ 4] 2407 	sbc	a, h
   5D23 E2 28 5D      [10] 2408 	jp	PO, 00161$
   5D26 EE 80         [ 7] 2409 	xor	a, #0x80
   5D28                    2410 00161$:
   5D28 FA 47 5D      [10] 2411 	jp	M,00114$
                           2412 ;src/main.c:566: sumaMarcador(2, ++protaDos.marcador);//2 paa obdulia
   5D2B 21 8D 4F      [10] 2413 	ld	hl,#_protaDos + 28
   5D2E 46            [ 7] 2414 	ld	b,(hl)
   5D2F 04            [ 4] 2415 	inc	b
   5D30 70            [ 7] 2416 	ld	(hl),b
   5D31 C5            [11] 2417 	push	bc
   5D32 33            [ 6] 2418 	inc	sp
   5D33 3E 02         [ 7] 2419 	ld	a,#0x02
   5D35 F5            [11] 2420 	push	af
   5D36 33            [ 6] 2421 	inc	sp
   5D37 CD 5C 5A      [17] 2422 	call	_sumaMarcador
   5D3A F1            [10] 2423 	pop	af
                           2424 ;src/main.c:567: lastWinner = 2;
   5D3B 21 A8 4F      [10] 2425 	ld	hl,#_lastWinner + 0
   5D3E 36 02         [10] 2426 	ld	(hl), #0x02
                           2427 ;src/main.c:568: ronda++;
   5D40 21 B0 4F      [10] 2428 	ld	hl, #_ronda+0
   5D43 34            [11] 2429 	inc	(hl)
                           2430 ;src/main.c:569: reaparecer();
   5D44 CD 39 77      [17] 2431 	call	_reaparecer
                           2432 ;src/main.c:572: }
   5D47                    2433 00114$:
   5D47 DD E1         [14] 2434 	pop	ix
   5D49 C9            [10] 2435 	ret
                           2436 ;src/main.c:576: void comprobarLlave(u8 personaje){
                           2437 ;	---------------------------------
                           2438 ; Function comprobarLlave
                           2439 ; ---------------------------------
   5D4A                    2440 _comprobarLlave::
   5D4A DD E5         [15] 2441 	push	ix
   5D4C DD 21 00 00   [14] 2442 	ld	ix,#0
   5D50 DD 39         [15] 2443 	add	ix,sp
                           2444 ;src/main.c:579: switch(personaje){
   5D52 DD 7E 04      [19] 2445 	ld	a,4 (ix)
   5D55 B7            [ 4] 2446 	or	a, a
   5D56 28 09         [12] 2447 	jr	Z,00101$
   5D58 DD 7E 04      [19] 2448 	ld	a,4 (ix)
   5D5B 3D            [ 4] 2449 	dec	a
   5D5C 28 6D         [12] 2450 	jr	Z,00107$
   5D5E C3 31 5E      [10] 2451 	jp	00114$
                           2452 ;src/main.c:581: case 0:
   5D61                    2453 00101$:
                           2454 ;src/main.c:582: if(prota.x + ANCHO_PERSONAJE / 2 >= 60 && prota.x + ANCHO_PERSONAJE <= 71 && prota.y + ALTO_PERSONAJE / 2 >= 180  && prota.y + ALTO_PERSONAJE / 2 <= 194){
   5D61 21 54 4F      [10] 2455 	ld	hl,#_prota+0
   5D64 4E            [ 7] 2456 	ld	c,(hl)
   5D65 06 00         [ 7] 2457 	ld	b,#0x00
   5D67 59            [ 4] 2458 	ld	e, c
   5D68 50            [ 4] 2459 	ld	d, b
   5D69 13            [ 6] 2460 	inc	de
   5D6A 13            [ 6] 2461 	inc	de
   5D6B 7B            [ 4] 2462 	ld	a,e
   5D6C D6 3C         [ 7] 2463 	sub	a, #0x3C
   5D6E 7A            [ 4] 2464 	ld	a,d
   5D6F 17            [ 4] 2465 	rla
   5D70 3F            [ 4] 2466 	ccf
   5D71 1F            [ 4] 2467 	rra
   5D72 DE 80         [ 7] 2468 	sbc	a, #0x80
   5D74 DA 31 5E      [10] 2469 	jp	C,00114$
   5D77 21 05 00      [10] 2470 	ld	hl,#0x0005
   5D7A 09            [11] 2471 	add	hl,bc
   5D7B 3E 47         [ 7] 2472 	ld	a,#0x47
   5D7D BD            [ 4] 2473 	cp	a, l
   5D7E 3E 00         [ 7] 2474 	ld	a,#0x00
   5D80 9C            [ 4] 2475 	sbc	a, h
   5D81 E2 86 5D      [10] 2476 	jp	PO, 00158$
   5D84 EE 80         [ 7] 2477 	xor	a, #0x80
   5D86                    2478 00158$:
   5D86 FA 31 5E      [10] 2479 	jp	M,00114$
   5D89 21 55 4F      [10] 2480 	ld	hl, #_prota + 1
   5D8C 4E            [ 7] 2481 	ld	c,(hl)
   5D8D 06 00         [ 7] 2482 	ld	b,#0x00
   5D8F 21 07 00      [10] 2483 	ld	hl,#0x0007
   5D92 09            [11] 2484 	add	hl,bc
   5D93 7D            [ 4] 2485 	ld	a,l
   5D94 D6 B4         [ 7] 2486 	sub	a, #0xB4
   5D96 7C            [ 4] 2487 	ld	a,h
   5D97 17            [ 4] 2488 	rla
   5D98 3F            [ 4] 2489 	ccf
   5D99 1F            [ 4] 2490 	rra
   5D9A DE 80         [ 7] 2491 	sbc	a, #0x80
   5D9C DA 31 5E      [10] 2492 	jp	C,00114$
   5D9F 3E C2         [ 7] 2493 	ld	a,#0xC2
   5DA1 BD            [ 4] 2494 	cp	a, l
   5DA2 3E 00         [ 7] 2495 	ld	a,#0x00
   5DA4 9C            [ 4] 2496 	sbc	a, h
   5DA5 E2 AA 5D      [10] 2497 	jp	PO, 00159$
   5DA8 EE 80         [ 7] 2498 	xor	a, #0x80
   5DAA                    2499 00159$:
   5DAA FA 31 5E      [10] 2500 	jp	M,00114$
                           2501 ;src/main.c:583: prota.llavecogida = 1;
   5DAD 21 6D 4F      [10] 2502 	ld	hl,#(_prota + 0x0019)
   5DB0 36 01         [10] 2503 	ld	(hl),#0x01
                           2504 ;src/main.c:584: borrarLlave(1);
   5DB2 3E 01         [ 7] 2505 	ld	a,#0x01
   5DB4 F5            [11] 2506 	push	af
   5DB5 33            [ 6] 2507 	inc	sp
   5DB6 CD 9D 56      [17] 2508 	call	_borrarLlave
   5DB9 33            [ 6] 2509 	inc	sp
                           2510 ;src/main.c:585: dibujarLlave(1);
   5DBA 3E 01         [ 7] 2511 	ld	a,#0x01
   5DBC F5            [11] 2512 	push	af
   5DBD 33            [ 6] 2513 	inc	sp
   5DBE CD 6E 55      [17] 2514 	call	_dibujarLlave
   5DC1 33            [ 6] 2515 	inc	sp
                           2516 ;src/main.c:586: abrirPuerta(0);
   5DC2 AF            [ 4] 2517 	xor	a, a
   5DC3 F5            [11] 2518 	push	af
   5DC4 33            [ 6] 2519 	inc	sp
   5DC5 CD C7 58      [17] 2520 	call	_abrirPuerta
   5DC8 33            [ 6] 2521 	inc	sp
                           2522 ;src/main.c:589: break;
   5DC9 18 66         [12] 2523 	jr	00114$
                           2524 ;src/main.c:591: case 1:
   5DCB                    2525 00107$:
                           2526 ;src/main.c:592: if(protaDos.x + ANCHO_PERSONAJE / 2 >= 7 && protaDos.x + ANCHO_PERSONAJE <= 18 && protaDos.y + ALTO_PERSONAJE / 2 >= 32  && protaDos.y + ALTO_PERSONAJE / 2 <= 46){
   5DCB 21 71 4F      [10] 2527 	ld	hl,#_protaDos+0
   5DCE 4E            [ 7] 2528 	ld	c,(hl)
   5DCF 06 00         [ 7] 2529 	ld	b,#0x00
   5DD1 59            [ 4] 2530 	ld	e, c
   5DD2 50            [ 4] 2531 	ld	d, b
   5DD3 13            [ 6] 2532 	inc	de
   5DD4 13            [ 6] 2533 	inc	de
   5DD5 7B            [ 4] 2534 	ld	a,e
   5DD6 D6 07         [ 7] 2535 	sub	a, #0x07
   5DD8 7A            [ 4] 2536 	ld	a,d
   5DD9 17            [ 4] 2537 	rla
   5DDA 3F            [ 4] 2538 	ccf
   5DDB 1F            [ 4] 2539 	rra
   5DDC DE 80         [ 7] 2540 	sbc	a, #0x80
   5DDE 38 51         [12] 2541 	jr	C,00114$
   5DE0 21 05 00      [10] 2542 	ld	hl,#0x0005
   5DE3 09            [11] 2543 	add	hl,bc
   5DE4 3E 12         [ 7] 2544 	ld	a,#0x12
   5DE6 BD            [ 4] 2545 	cp	a, l
   5DE7 3E 00         [ 7] 2546 	ld	a,#0x00
   5DE9 9C            [ 4] 2547 	sbc	a, h
   5DEA E2 EF 5D      [10] 2548 	jp	PO, 00160$
   5DED EE 80         [ 7] 2549 	xor	a, #0x80
   5DEF                    2550 00160$:
   5DEF FA 31 5E      [10] 2551 	jp	M,00114$
   5DF2 21 72 4F      [10] 2552 	ld	hl, #_protaDos + 1
   5DF5 4E            [ 7] 2553 	ld	c,(hl)
   5DF6 06 00         [ 7] 2554 	ld	b,#0x00
   5DF8 21 07 00      [10] 2555 	ld	hl,#0x0007
   5DFB 09            [11] 2556 	add	hl,bc
   5DFC 7D            [ 4] 2557 	ld	a,l
   5DFD D6 20         [ 7] 2558 	sub	a, #0x20
   5DFF 7C            [ 4] 2559 	ld	a,h
   5E00 17            [ 4] 2560 	rla
   5E01 3F            [ 4] 2561 	ccf
   5E02 1F            [ 4] 2562 	rra
   5E03 DE 80         [ 7] 2563 	sbc	a, #0x80
   5E05 38 2A         [12] 2564 	jr	C,00114$
   5E07 3E 2E         [ 7] 2565 	ld	a,#0x2E
   5E09 BD            [ 4] 2566 	cp	a, l
   5E0A 3E 00         [ 7] 2567 	ld	a,#0x00
   5E0C 9C            [ 4] 2568 	sbc	a, h
   5E0D E2 12 5E      [10] 2569 	jp	PO, 00161$
   5E10 EE 80         [ 7] 2570 	xor	a, #0x80
   5E12                    2571 00161$:
   5E12 FA 31 5E      [10] 2572 	jp	M,00114$
                           2573 ;src/main.c:593: protaDos.llavecogida = 1;
   5E15 21 8A 4F      [10] 2574 	ld	hl,#(_protaDos + 0x0019)
   5E18 36 01         [10] 2575 	ld	(hl),#0x01
                           2576 ;src/main.c:594: borrarLlave(0);
   5E1A AF            [ 4] 2577 	xor	a, a
   5E1B F5            [11] 2578 	push	af
   5E1C 33            [ 6] 2579 	inc	sp
   5E1D CD 9D 56      [17] 2580 	call	_borrarLlave
   5E20 33            [ 6] 2581 	inc	sp
                           2582 ;src/main.c:595: dibujarLlave(3);
   5E21 3E 03         [ 7] 2583 	ld	a,#0x03
   5E23 F5            [11] 2584 	push	af
   5E24 33            [ 6] 2585 	inc	sp
   5E25 CD 6E 55      [17] 2586 	call	_dibujarLlave
   5E28 33            [ 6] 2587 	inc	sp
                           2588 ;src/main.c:596: abrirPuerta(1);
   5E29 3E 01         [ 7] 2589 	ld	a,#0x01
   5E2B F5            [11] 2590 	push	af
   5E2C 33            [ 6] 2591 	inc	sp
   5E2D CD C7 58      [17] 2592 	call	_abrirPuerta
   5E30 33            [ 6] 2593 	inc	sp
                           2594 ;src/main.c:599: }
   5E31                    2595 00114$:
   5E31 DD E1         [14] 2596 	pop	ix
   5E33 C9            [10] 2597 	ret
                           2598 ;src/main.c:603: void actualizarMarcadorMunicion(u8 personaje, u8 valor){
                           2599 ;	---------------------------------
                           2600 ; Function actualizarMarcadorMunicion
                           2601 ; ---------------------------------
   5E34                    2602 _actualizarMarcadorMunicion::
   5E34 DD E5         [15] 2603 	push	ix
   5E36 DD 21 00 00   [14] 2604 	ld	ix,#0
   5E3A DD 39         [15] 2605 	add	ix,sp
   5E3C F5            [11] 2606 	push	af
                           2607 ;src/main.c:616: switch(personaje){
   5E3D DD 7E 04      [19] 2608 	ld	a,4 (ix)
   5E40 B7            [ 4] 2609 	or	a, a
   5E41 28 0A         [12] 2610 	jr	Z,00122$
   5E43 DD 7E 04      [19] 2611 	ld	a,4 (ix)
   5E46 3D            [ 4] 2612 	dec	a
   5E47 CA DA 5E      [10] 2613 	jp	Z,00125$
   5E4A C3 68 5F      [10] 2614 	jp	00116$
                           2615 ;src/main.c:619: while(i<10){
   5E4D                    2616 00122$:
   5E4D DD 36 FE 00   [19] 2617 	ld	-2 (ix),#0x00
   5E51                    2618 00105$:
   5E51 DD 7E FE      [19] 2619 	ld	a,-2 (ix)
   5E54 D6 0A         [ 7] 2620 	sub	a, #0x0A
   5E56 D2 68 5F      [10] 2621 	jp	NC,00116$
                           2622 ;src/main.c:621: cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base));
   5E59 DD 7E FE      [19] 2623 	ld	a,-2 (ix)
   5E5C 87            [ 4] 2624 	add	a, a
   5E5D 4F            [ 4] 2625 	ld	c,a
   5E5E 3E 1A         [ 7] 2626 	ld	a,#0x1A
   5E60 91            [ 4] 2627 	sub	a, c
   5E61 4F            [ 4] 2628 	ld	c,a
                           2629 ;src/main.c:620: if(i<valor){
   5E62 DD 7E FE      [19] 2630 	ld	a,-2 (ix)
   5E65 DD 96 05      [19] 2631 	sub	a, 5 (ix)
   5E68 30 36         [12] 2632 	jr	NC,00103$
                           2633 ;src/main.c:621: cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base));
   5E6A C5            [11] 2634 	push	bc
   5E6B 3E 0C         [ 7] 2635 	ld	a,#0x0C
   5E6D F5            [11] 2636 	push	af
   5E6E 33            [ 6] 2637 	inc	sp
   5E6F 79            [ 4] 2638 	ld	a,c
   5E70 F5            [11] 2639 	push	af
   5E71 33            [ 6] 2640 	inc	sp
   5E72 21 00 C0      [10] 2641 	ld	hl,#0xC000
   5E75 E5            [11] 2642 	push	hl
   5E76 CD 0A 43      [17] 2643 	call	_cpct_getScreenPtr
   5E79 5D            [ 4] 2644 	ld	e,l
   5E7A 54            [ 4] 2645 	ld	d,h
   5E7B C1            [10] 2646 	pop	bc
   5E7C 2A 52 18      [16] 2647 	ld	hl, (#_pre_tileset + 74)
   5E7F C5            [11] 2648 	push	bc
   5E80 D5            [11] 2649 	push	de
   5E81 E5            [11] 2650 	push	hl
   5E82 CD C3 42      [17] 2651 	call	_cpct_drawTileAligned2x4_f
   5E85 C1            [10] 2652 	pop	bc
                           2653 ;src/main.c:622: cpct_drawTileAligned2x4_f(pre_tileset[36], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base-4));
   5E86 3E 08         [ 7] 2654 	ld	a,#0x08
   5E88 F5            [11] 2655 	push	af
   5E89 33            [ 6] 2656 	inc	sp
   5E8A 79            [ 4] 2657 	ld	a,c
   5E8B F5            [11] 2658 	push	af
   5E8C 33            [ 6] 2659 	inc	sp
   5E8D 21 00 C0      [10] 2660 	ld	hl,#0xC000
   5E90 E5            [11] 2661 	push	hl
   5E91 CD 0A 43      [17] 2662 	call	_cpct_getScreenPtr
   5E94 4D            [ 4] 2663 	ld	c,l
   5E95 44            [ 4] 2664 	ld	b,h
   5E96 2A 50 18      [16] 2665 	ld	hl, (#_pre_tileset + 72)
   5E99 C5            [11] 2666 	push	bc
   5E9A E5            [11] 2667 	push	hl
   5E9B CD C3 42      [17] 2668 	call	_cpct_drawTileAligned2x4_f
   5E9E 18 34         [12] 2669 	jr	00104$
   5EA0                    2670 00103$:
                           2671 ;src/main.c:625: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base));
   5EA0 C5            [11] 2672 	push	bc
   5EA1 3E 0C         [ 7] 2673 	ld	a,#0x0C
   5EA3 F5            [11] 2674 	push	af
   5EA4 33            [ 6] 2675 	inc	sp
   5EA5 79            [ 4] 2676 	ld	a,c
   5EA6 F5            [11] 2677 	push	af
   5EA7 33            [ 6] 2678 	inc	sp
   5EA8 21 00 C0      [10] 2679 	ld	hl,#0xC000
   5EAB E5            [11] 2680 	push	hl
   5EAC CD 0A 43      [17] 2681 	call	_cpct_getScreenPtr
   5EAF 5D            [ 4] 2682 	ld	e,l
   5EB0 54            [ 4] 2683 	ld	d,h
   5EB1 C1            [10] 2684 	pop	bc
   5EB2 2A 38 18      [16] 2685 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   5EB5 C5            [11] 2686 	push	bc
   5EB6 D5            [11] 2687 	push	de
   5EB7 E5            [11] 2688 	push	hl
   5EB8 CD C3 42      [17] 2689 	call	_cpct_drawTileAligned2x4_f
   5EBB C1            [10] 2690 	pop	bc
                           2691 ;src/main.c:626: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_jimmy_base-(2*i), y_base-4));
   5EBC 3E 08         [ 7] 2692 	ld	a,#0x08
   5EBE F5            [11] 2693 	push	af
   5EBF 33            [ 6] 2694 	inc	sp
   5EC0 79            [ 4] 2695 	ld	a,c
   5EC1 F5            [11] 2696 	push	af
   5EC2 33            [ 6] 2697 	inc	sp
   5EC3 21 00 C0      [10] 2698 	ld	hl,#0xC000
   5EC6 E5            [11] 2699 	push	hl
   5EC7 CD 0A 43      [17] 2700 	call	_cpct_getScreenPtr
   5ECA 4D            [ 4] 2701 	ld	c,l
   5ECB 44            [ 4] 2702 	ld	b,h
   5ECC 2A 38 18      [16] 2703 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   5ECF C5            [11] 2704 	push	bc
   5ED0 E5            [11] 2705 	push	hl
   5ED1 CD C3 42      [17] 2706 	call	_cpct_drawTileAligned2x4_f
   5ED4                    2707 00104$:
                           2708 ;src/main.c:628: i++;
   5ED4 DD 34 FE      [23] 2709 	inc	-2 (ix)
   5ED7 C3 51 5E      [10] 2710 	jp	00105$
                           2711 ;src/main.c:633: while(i<10){
   5EDA                    2712 00125$:
   5EDA 0E 00         [ 7] 2713 	ld	c,#0x00
   5EDC                    2714 00112$:
                           2715 ;src/main.c:635: cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base));
   5EDC 79            [ 4] 2716 	ld	a,c
   5EDD FE 0A         [ 7] 2717 	cp	a,#0x0A
   5EDF D2 68 5F      [10] 2718 	jp	NC,00116$
   5EE2 87            [ 4] 2719 	add	a, a
   5EE3 C6 32         [ 7] 2720 	add	a, #0x32
   5EE5 DD 77 FF      [19] 2721 	ld	-1 (ix),a
                           2722 ;src/main.c:634: if(i<valor){
   5EE8 79            [ 4] 2723 	ld	a,c
   5EE9 DD 96 05      [19] 2724 	sub	a, 5 (ix)
   5EEC 30 3C         [12] 2725 	jr	NC,00110$
                           2726 ;src/main.c:635: cpct_drawTileAligned2x4_f(pre_tileset[37], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base));
   5EEE C5            [11] 2727 	push	bc
   5EEF 3E 0C         [ 7] 2728 	ld	a,#0x0C
   5EF1 F5            [11] 2729 	push	af
   5EF2 33            [ 6] 2730 	inc	sp
   5EF3 DD 7E FF      [19] 2731 	ld	a,-1 (ix)
   5EF6 F5            [11] 2732 	push	af
   5EF7 33            [ 6] 2733 	inc	sp
   5EF8 21 00 C0      [10] 2734 	ld	hl,#0xC000
   5EFB E5            [11] 2735 	push	hl
   5EFC CD 0A 43      [17] 2736 	call	_cpct_getScreenPtr
   5EFF 5D            [ 4] 2737 	ld	e,l
   5F00 54            [ 4] 2738 	ld	d,h
   5F01 C1            [10] 2739 	pop	bc
   5F02 2A 52 18      [16] 2740 	ld	hl, (#_pre_tileset + 74)
   5F05 C5            [11] 2741 	push	bc
   5F06 D5            [11] 2742 	push	de
   5F07 E5            [11] 2743 	push	hl
   5F08 CD C3 42      [17] 2744 	call	_cpct_drawTileAligned2x4_f
   5F0B 3E 08         [ 7] 2745 	ld	a,#0x08
   5F0D F5            [11] 2746 	push	af
   5F0E 33            [ 6] 2747 	inc	sp
   5F0F DD 7E FF      [19] 2748 	ld	a,-1 (ix)
   5F12 F5            [11] 2749 	push	af
   5F13 33            [ 6] 2750 	inc	sp
   5F14 21 00 C0      [10] 2751 	ld	hl,#0xC000
   5F17 E5            [11] 2752 	push	hl
   5F18 CD 0A 43      [17] 2753 	call	_cpct_getScreenPtr
   5F1B 5D            [ 4] 2754 	ld	e,l
   5F1C 54            [ 4] 2755 	ld	d,h
   5F1D C1            [10] 2756 	pop	bc
   5F1E 2A 50 18      [16] 2757 	ld	hl, (#_pre_tileset + 72)
   5F21 C5            [11] 2758 	push	bc
   5F22 D5            [11] 2759 	push	de
   5F23 E5            [11] 2760 	push	hl
   5F24 CD C3 42      [17] 2761 	call	_cpct_drawTileAligned2x4_f
   5F27 C1            [10] 2762 	pop	bc
   5F28 18 3A         [12] 2763 	jr	00111$
   5F2A                    2764 00110$:
                           2765 ;src/main.c:639: cpct_drawTileAligned2x4_f(pre_tileset[24], cpct_getScreenPtr(CPCT_VMEM_START, x_obdulia_base+(2*i), y_base));
   5F2A C5            [11] 2766 	push	bc
   5F2B 3E 0C         [ 7] 2767 	ld	a,#0x0C
   5F2D F5            [11] 2768 	push	af
   5F2E 33            [ 6] 2769 	inc	sp
   5F2F DD 7E FF      [19] 2770 	ld	a,-1 (ix)
   5F32 F5            [11] 2771 	push	af
   5F33 33            [ 6] 2772 	inc	sp
   5F34 21 00 C0      [10] 2773 	ld	hl,#0xC000
   5F37 E5            [11] 2774 	push	hl
   5F38 CD 0A 43      [17] 2775 	call	_cpct_getScreenPtr
   5F3B 5D            [ 4] 2776 	ld	e,l
   5F3C 54            [ 4] 2777 	ld	d,h
   5F3D C1            [10] 2778 	pop	bc
   5F3E 2A 38 18      [16] 2779 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   5F41 C5            [11] 2780 	push	bc
   5F42 D5            [11] 2781 	push	de
   5F43 E5            [11] 2782 	push	hl
   5F44 CD C3 42      [17] 2783 	call	_cpct_drawTileAligned2x4_f
   5F47 3E 08         [ 7] 2784 	ld	a,#0x08
   5F49 F5            [11] 2785 	push	af
   5F4A 33            [ 6] 2786 	inc	sp
   5F4B DD 7E FF      [19] 2787 	ld	a,-1 (ix)
   5F4E F5            [11] 2788 	push	af
   5F4F 33            [ 6] 2789 	inc	sp
   5F50 21 00 C0      [10] 2790 	ld	hl,#0xC000
   5F53 E5            [11] 2791 	push	hl
   5F54 CD 0A 43      [17] 2792 	call	_cpct_getScreenPtr
   5F57 5D            [ 4] 2793 	ld	e,l
   5F58 54            [ 4] 2794 	ld	d,h
   5F59 C1            [10] 2795 	pop	bc
   5F5A 2A 38 18      [16] 2796 	ld	hl, (#(_pre_tileset + 0x0030) + 0)
   5F5D C5            [11] 2797 	push	bc
   5F5E D5            [11] 2798 	push	de
   5F5F E5            [11] 2799 	push	hl
   5F60 CD C3 42      [17] 2800 	call	_cpct_drawTileAligned2x4_f
   5F63 C1            [10] 2801 	pop	bc
   5F64                    2802 00111$:
                           2803 ;src/main.c:642: i++;
   5F64 0C            [ 4] 2804 	inc	c
   5F65 C3 DC 5E      [10] 2805 	jp	00112$
                           2806 ;src/main.c:646: }
   5F68                    2807 00116$:
   5F68 DD F9         [10] 2808 	ld	sp, ix
   5F6A DD E1         [14] 2809 	pop	ix
   5F6C C9            [10] 2810 	ret
                           2811 ;src/main.c:648: u8 compruebaAzul(u8 x1,u8 x2,u8 x3,u8 y1,u8 y2,u8 y3){
                           2812 ;	---------------------------------
                           2813 ; Function compruebaAzul
                           2814 ; ---------------------------------
   5F6D                    2815 _compruebaAzul::
   5F6D DD E5         [15] 2816 	push	ix
   5F6F DD 21 00 00   [14] 2817 	ld	ix,#0
   5F73 DD 39         [15] 2818 	add	ix,sp
                           2819 ;src/main.c:652: if(cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, x1, y1), 0) == COLISIONABLE && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, x2, y2), 0) == COLISIONABLE && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, x3, y3), 0) == COLISIONABLE){
   5F75 DD 66 07      [19] 2820 	ld	h,7 (ix)
   5F78 DD 6E 04      [19] 2821 	ld	l,4 (ix)
   5F7B E5            [11] 2822 	push	hl
   5F7C 21 00 C0      [10] 2823 	ld	hl,#0xC000
   5F7F E5            [11] 2824 	push	hl
   5F80 CD 0A 43      [17] 2825 	call	_cpct_getScreenPtr
   5F83 01 00 00      [10] 2826 	ld	bc,#0x0000
   5F86 C5            [11] 2827 	push	bc
   5F87 E5            [11] 2828 	push	hl
   5F88 CD 2A 42      [17] 2829 	call	_cpct_get6Bits
   5F8B 7D            [ 4] 2830 	ld	a,l
   5F8C D6 30         [ 7] 2831 	sub	a, #0x30
   5F8E 20 3A         [12] 2832 	jr	NZ,00102$
   5F90 DD 66 08      [19] 2833 	ld	h,8 (ix)
   5F93 DD 6E 05      [19] 2834 	ld	l,5 (ix)
   5F96 E5            [11] 2835 	push	hl
   5F97 21 00 C0      [10] 2836 	ld	hl,#0xC000
   5F9A E5            [11] 2837 	push	hl
   5F9B CD 0A 43      [17] 2838 	call	_cpct_getScreenPtr
   5F9E 01 00 00      [10] 2839 	ld	bc,#0x0000
   5FA1 C5            [11] 2840 	push	bc
   5FA2 E5            [11] 2841 	push	hl
   5FA3 CD 2A 42      [17] 2842 	call	_cpct_get6Bits
   5FA6 7D            [ 4] 2843 	ld	a,l
   5FA7 D6 30         [ 7] 2844 	sub	a, #0x30
   5FA9 20 1F         [12] 2845 	jr	NZ,00102$
   5FAB DD 66 09      [19] 2846 	ld	h,9 (ix)
   5FAE DD 6E 06      [19] 2847 	ld	l,6 (ix)
   5FB1 E5            [11] 2848 	push	hl
   5FB2 21 00 C0      [10] 2849 	ld	hl,#0xC000
   5FB5 E5            [11] 2850 	push	hl
   5FB6 CD 0A 43      [17] 2851 	call	_cpct_getScreenPtr
   5FB9 01 00 00      [10] 2852 	ld	bc,#0x0000
   5FBC C5            [11] 2853 	push	bc
   5FBD E5            [11] 2854 	push	hl
   5FBE CD 2A 42      [17] 2855 	call	_cpct_get6Bits
   5FC1 7D            [ 4] 2856 	ld	a,l
   5FC2 D6 30         [ 7] 2857 	sub	a, #0x30
   5FC4 20 04         [12] 2858 	jr	NZ,00102$
                           2859 ;src/main.c:653: return 1;
   5FC6 2E 01         [ 7] 2860 	ld	l,#0x01
   5FC8 18 02         [12] 2861 	jr	00105$
   5FCA                    2862 00102$:
                           2863 ;src/main.c:655: return 0;   
   5FCA 2E 00         [ 7] 2864 	ld	l,#0x00
   5FCC                    2865 00105$:
   5FCC DD E1         [14] 2866 	pop	ix
   5FCE C9            [10] 2867 	ret
                           2868 ;src/main.c:659: u8 validarColision(u8 dir, TProta * pro, u8 tecla){
                           2869 ;	---------------------------------
                           2870 ; Function validarColision
                           2871 ; ---------------------------------
   5FCF                    2872 _validarColision::
   5FCF DD E5         [15] 2873 	push	ix
   5FD1 DD 21 00 00   [14] 2874 	ld	ix,#0
   5FD5 DD 39         [15] 2875 	add	ix,sp
   5FD7 21 F3 FF      [10] 2876 	ld	hl,#-13
   5FDA 39            [11] 2877 	add	hl,sp
   5FDB F9            [ 6] 2878 	ld	sp,hl
                           2879 ;src/main.c:671: switch(dir){
   5FDC 3E 03         [ 7] 2880 	ld	a,#0x03
   5FDE DD 96 04      [19] 2881 	sub	a, 4 (ix)
   5FE1 DA DE 62      [10] 2882 	jp	C,00137$
                           2883 ;src/main.c:673: x1=pro->x-1;
   5FE4 DD 4E 05      [19] 2884 	ld	c,5 (ix)
   5FE7 DD 46 06      [19] 2885 	ld	b,6 (ix)
                           2886 ;src/main.c:682: if(tecla==1){
   5FEA DD 7E 07      [19] 2887 	ld	a,7 (ix)
   5FED 3D            [ 4] 2888 	dec	a
   5FEE 20 04         [12] 2889 	jr	NZ,00208$
   5FF0 3E 01         [ 7] 2890 	ld	a,#0x01
   5FF2 18 01         [12] 2891 	jr	00209$
   5FF4                    2892 00208$:
   5FF4 AF            [ 4] 2893 	xor	a,a
   5FF5                    2894 00209$:
   5FF5 DD 77 FD      [19] 2895 	ld	-3 (ix),a
                           2896 ;src/main.c:705: x1=pro->x+3;
   5FF8 0A            [ 7] 2897 	ld	a,(bc)
   5FF9 DD 77 FC      [19] 2898 	ld	-4 (ix),a
                           2899 ;src/main.c:674: y1=pro->y+7;
   5FFC 21 01 00      [10] 2900 	ld	hl,#0x0001
   5FFF 09            [11] 2901 	add	hl,bc
   6000 DD 75 FA      [19] 2902 	ld	-6 (ix),l
   6003 DD 74 FB      [19] 2903 	ld	-5 (ix),h
   6006 DD 6E FA      [19] 2904 	ld	l,-6 (ix)
   6009 DD 66 FB      [19] 2905 	ld	h,-5 (ix)
   600C 5E            [ 7] 2906 	ld	e,(hl)
                           2907 ;src/main.c:707: x2=pro->x+4;
   600D DD 7E FC      [19] 2908 	ld	a,-4 (ix)
   6010 C6 04         [ 7] 2909 	add	a, #0x04
   6012 DD 77 F9      [19] 2910 	ld	-7 (ix),a
                           2911 ;src/main.c:674: y1=pro->y+7;
   6015 7B            [ 4] 2912 	ld	a,e
   6016 C6 07         [ 7] 2913 	add	a, #0x07
   6018 DD 77 F8      [19] 2914 	ld	-8 (ix),a
                           2915 ;src/main.c:678: y3=pro->y+13;
   601B 7B            [ 4] 2916 	ld	a,e
   601C C6 0D         [ 7] 2917 	add	a, #0x0D
   601E DD 77 F7      [19] 2918 	ld	-9 (ix),a
                           2919 ;src/main.c:671: switch(dir){
   6021 D5            [11] 2920 	push	de
   6022 DD 5E 04      [19] 2921 	ld	e,4 (ix)
   6025 16 00         [ 7] 2922 	ld	d,#0x00
   6027 21 2F 60      [10] 2923 	ld	hl,#00210$
   602A 19            [11] 2924 	add	hl,de
   602B 19            [11] 2925 	add	hl,de
   602C 19            [11] 2926 	add	hl,de
   602D D1            [10] 2927 	pop	de
   602E E9            [ 4] 2928 	jp	(hl)
   602F                    2929 00210$:
   602F C3 3B 60      [10] 2930 	jp	00101$
   6032 C3 E4 60      [10] 2931 	jp	00110$
   6035 C3 85 61      [10] 2932 	jp	00119$
   6038 C3 32 62      [10] 2933 	jp	00128$
                           2934 ;src/main.c:672: case 0:
   603B                    2935 00101$:
                           2936 ;src/main.c:673: x1=pro->x-1;
   603B DD 4E FC      [19] 2937 	ld	c,-4 (ix)
   603E 0D            [ 4] 2938 	dec	c
   603F DD 71 F6      [19] 2939 	ld	-10 (ix),c
                           2940 ;src/main.c:674: y1=pro->y+7;
   6042 DD 7E F8      [19] 2941 	ld	a,-8 (ix)
   6045 DD 77 FF      [19] 2942 	ld	-1 (ix),a
                           2943 ;src/main.c:676: y2=pro->y;
                           2944 ;src/main.c:678: y3=pro->y+13;
   6048 DD 56 F7      [19] 2945 	ld	d,-9 (ix)
                           2946 ;src/main.c:679: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   604B C5            [11] 2947 	push	bc
   604C D5            [11] 2948 	push	de
   604D D5            [11] 2949 	push	de
   604E DD 7E FF      [19] 2950 	ld	a,-1 (ix)
   6051 F5            [11] 2951 	push	af
   6052 33            [ 6] 2952 	inc	sp
   6053 79            [ 4] 2953 	ld	a,c
   6054 F5            [11] 2954 	push	af
   6055 33            [ 6] 2955 	inc	sp
   6056 79            [ 4] 2956 	ld	a,c
   6057 F5            [11] 2957 	push	af
   6058 33            [ 6] 2958 	inc	sp
   6059 DD 7E F6      [19] 2959 	ld	a,-10 (ix)
   605C F5            [11] 2960 	push	af
   605D 33            [ 6] 2961 	inc	sp
   605E CD 6D 5F      [17] 2962 	call	_compruebaAzul
   6061 F1            [10] 2963 	pop	af
   6062 F1            [10] 2964 	pop	af
   6063 F1            [10] 2965 	pop	af
   6064 D1            [10] 2966 	pop	de
   6065 C1            [10] 2967 	pop	bc
   6066 2D            [ 4] 2968 	dec	l
   6067 20 05         [12] 2969 	jr	NZ,00103$
                           2970 ;src/main.c:680: return 1; 
   6069 2E 01         [ 7] 2971 	ld	l,#0x01
   606B C3 E0 62      [10] 2972 	jp	00138$
   606E                    2973 00103$:
                           2974 ;src/main.c:682: if(tecla==1){
   606E DD 7E FD      [19] 2975 	ld	a,-3 (ix)
   6071 B7            [ 4] 2976 	or	a, a
   6072 CA DE 62      [10] 2977 	jp	Z,00137$
                           2978 ;src/main.c:683: y1++;y1++;
   6075 DD 6E FF      [19] 2979 	ld	l,-1 (ix)
   6078 2C            [ 4] 2980 	inc	l
   6079 45            [ 4] 2981 	ld	b,l
   607A 04            [ 4] 2982 	inc	b
                           2983 ;src/main.c:684: y2++;y2++;
   607B 1C            [ 4] 2984 	inc	e
   607C 1C            [ 4] 2985 	inc	e
                           2986 ;src/main.c:685: y3++;y3++;
   607D 6A            [ 4] 2987 	ld	l,d
   607E 2C            [ 4] 2988 	inc	l
   607F 55            [ 4] 2989 	ld	d,l
   6080 14            [ 4] 2990 	inc	d
                           2991 ;src/main.c:686: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   6081 C5            [11] 2992 	push	bc
   6082 D5            [11] 2993 	push	de
   6083 D5            [11] 2994 	push	de
   6084 C5            [11] 2995 	push	bc
   6085 79            [ 4] 2996 	ld	a,c
   6086 F5            [11] 2997 	push	af
   6087 33            [ 6] 2998 	inc	sp
   6088 DD 7E F6      [19] 2999 	ld	a,-10 (ix)
   608B F5            [11] 3000 	push	af
   608C 33            [ 6] 3001 	inc	sp
   608D CD 6D 5F      [17] 3002 	call	_compruebaAzul
   6090 F1            [10] 3003 	pop	af
   6091 F1            [10] 3004 	pop	af
   6092 F1            [10] 3005 	pop	af
   6093 D1            [10] 3006 	pop	de
   6094 C1            [10] 3007 	pop	bc
   6095 2D            [ 4] 3008 	dec	l
   6096 20 15         [12] 3009 	jr	NZ,00105$
                           3010 ;src/main.c:687: pro->y=pro->y+2;
   6098 DD 6E FA      [19] 3011 	ld	l,-6 (ix)
   609B DD 66 FB      [19] 3012 	ld	h,-5 (ix)
   609E 4E            [ 7] 3013 	ld	c,(hl)
   609F 0C            [ 4] 3014 	inc	c
   60A0 0C            [ 4] 3015 	inc	c
   60A1 DD 6E FA      [19] 3016 	ld	l,-6 (ix)
   60A4 DD 66 FB      [19] 3017 	ld	h,-5 (ix)
   60A7 71            [ 7] 3018 	ld	(hl),c
                           3019 ;src/main.c:688: return 1; 
   60A8 2E 01         [ 7] 3020 	ld	l,#0x01
   60AA C3 E0 62      [10] 3021 	jp	00138$
   60AD                    3022 00105$:
                           3023 ;src/main.c:690: y1--;y1--;
   60AD 05            [ 4] 3024 	dec	b
   60AE 05            [ 4] 3025 	dec	b
                           3026 ;src/main.c:691: y2--;y2--;
   60AF 1D            [ 4] 3027 	dec	e
   60B0 1D            [ 4] 3028 	dec	e
                           3029 ;src/main.c:692: y3--;y3--;
   60B1 15            [ 4] 3030 	dec	d
   60B2 6A            [ 4] 3031 	ld	l,d
   60B3 2D            [ 4] 3032 	dec	l
                           3033 ;src/main.c:693: y1--;y1--;
   60B4 05            [ 4] 3034 	dec	b
   60B5 05            [ 4] 3035 	dec	b
                           3036 ;src/main.c:694: y2--;y2--;
   60B6 1D            [ 4] 3037 	dec	e
   60B7 1D            [ 4] 3038 	dec	e
                           3039 ;src/main.c:695: y3--;y3--;
   60B8 55            [ 4] 3040 	ld	d,l
   60B9 15            [ 4] 3041 	dec	d
   60BA 15            [ 4] 3042 	dec	d
                           3043 ;src/main.c:696: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   60BB D5            [11] 3044 	push	de
   60BC C5            [11] 3045 	push	bc
   60BD 79            [ 4] 3046 	ld	a,c
   60BE F5            [11] 3047 	push	af
   60BF 33            [ 6] 3048 	inc	sp
   60C0 DD 7E F6      [19] 3049 	ld	a,-10 (ix)
   60C3 F5            [11] 3050 	push	af
   60C4 33            [ 6] 3051 	inc	sp
   60C5 CD 6D 5F      [17] 3052 	call	_compruebaAzul
   60C8 F1            [10] 3053 	pop	af
   60C9 F1            [10] 3054 	pop	af
   60CA F1            [10] 3055 	pop	af
   60CB 2D            [ 4] 3056 	dec	l
   60CC C2 DE 62      [10] 3057 	jp	NZ,00137$
                           3058 ;src/main.c:697: pro->y=pro->y-2;
   60CF DD 6E FA      [19] 3059 	ld	l,-6 (ix)
   60D2 DD 66 FB      [19] 3060 	ld	h,-5 (ix)
   60D5 4E            [ 7] 3061 	ld	c,(hl)
   60D6 0D            [ 4] 3062 	dec	c
   60D7 0D            [ 4] 3063 	dec	c
   60D8 DD 6E FA      [19] 3064 	ld	l,-6 (ix)
   60DB DD 66 FB      [19] 3065 	ld	h,-5 (ix)
   60DE 71            [ 7] 3066 	ld	(hl),c
                           3067 ;src/main.c:698: return 1; 
   60DF 2E 01         [ 7] 3068 	ld	l,#0x01
   60E1 C3 E0 62      [10] 3069 	jp	00138$
                           3070 ;src/main.c:704: case 1:
   60E4                    3071 00110$:
                           3072 ;src/main.c:705: x1=pro->x+3;
   60E4 DD 7E FC      [19] 3073 	ld	a,-4 (ix)
   60E7 C6 03         [ 7] 3074 	add	a, #0x03
   60E9 DD 77 FF      [19] 3075 	ld	-1 (ix),a
                           3076 ;src/main.c:706: y1=pro->y-1;
   60EC 53            [ 4] 3077 	ld	d,e
   60ED 15            [ 4] 3078 	dec	d
   60EE DD 72 F6      [19] 3079 	ld	-10 (ix),d
                           3080 ;src/main.c:707: x2=pro->x+4;
   60F1 DD 7E F9      [19] 3081 	ld	a,-7 (ix)
   60F4 DD 77 FE      [19] 3082 	ld	-2 (ix),a
                           3083 ;src/main.c:709: x3=pro->x;
   60F7 DD 5E FC      [19] 3084 	ld	e,-4 (ix)
                           3085 ;src/main.c:711: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   60FA C5            [11] 3086 	push	bc
   60FB D5            [11] 3087 	push	de
   60FC D5            [11] 3088 	push	de
   60FD 33            [ 6] 3089 	inc	sp
   60FE D5            [11] 3090 	push	de
   60FF 33            [ 6] 3091 	inc	sp
   6100 DD 56 F6      [19] 3092 	ld	d, -10 (ix)
   6103 D5            [11] 3093 	push	de
   6104 DD 66 FE      [19] 3094 	ld	h,-2 (ix)
   6107 DD 6E FF      [19] 3095 	ld	l,-1 (ix)
   610A E5            [11] 3096 	push	hl
   610B CD 6D 5F      [17] 3097 	call	_compruebaAzul
   610E F1            [10] 3098 	pop	af
   610F F1            [10] 3099 	pop	af
   6110 F1            [10] 3100 	pop	af
   6111 D1            [10] 3101 	pop	de
   6112 C1            [10] 3102 	pop	bc
   6113 2D            [ 4] 3103 	dec	l
   6114 20 05         [12] 3104 	jr	NZ,00112$
                           3105 ;src/main.c:712: return 1; 
   6116 2E 01         [ 7] 3106 	ld	l,#0x01
   6118 C3 E0 62      [10] 3107 	jp	00138$
   611B                    3108 00112$:
                           3109 ;src/main.c:714: if(tecla==1){
   611B DD 7E FD      [19] 3110 	ld	a,-3 (ix)
   611E B7            [ 4] 3111 	or	a, a
   611F CA DE 62      [10] 3112 	jp	Z,00137$
                           3113 ;src/main.c:715: x1--;
   6122 DD 35 FF      [23] 3114 	dec	-1 (ix)
                           3115 ;src/main.c:716: x2--;
   6125 DD 35 FE      [23] 3116 	dec	-2 (ix)
                           3117 ;src/main.c:717: x3--;
   6128 1D            [ 4] 3118 	dec	e
                           3119 ;src/main.c:718: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   6129 C5            [11] 3120 	push	bc
   612A D5            [11] 3121 	push	de
   612B D5            [11] 3122 	push	de
   612C 33            [ 6] 3123 	inc	sp
   612D D5            [11] 3124 	push	de
   612E 33            [ 6] 3125 	inc	sp
   612F DD 56 F6      [19] 3126 	ld	d, -10 (ix)
   6132 D5            [11] 3127 	push	de
   6133 DD 66 FE      [19] 3128 	ld	h,-2 (ix)
   6136 DD 6E FF      [19] 3129 	ld	l,-1 (ix)
   6139 E5            [11] 3130 	push	hl
   613A CD 6D 5F      [17] 3131 	call	_compruebaAzul
   613D F1            [10] 3132 	pop	af
   613E F1            [10] 3133 	pop	af
   613F F1            [10] 3134 	pop	af
   6140 D1            [10] 3135 	pop	de
   6141 C1            [10] 3136 	pop	bc
   6142 2D            [ 4] 3137 	dec	l
   6143 20 09         [12] 3138 	jr	NZ,00114$
                           3139 ;src/main.c:719: pro->x--;
   6145 0A            [ 7] 3140 	ld	a,(bc)
   6146 C6 FF         [ 7] 3141 	add	a,#0xFF
   6148 02            [ 7] 3142 	ld	(bc),a
                           3143 ;src/main.c:720: return 1; 
   6149 2E 01         [ 7] 3144 	ld	l,#0x01
   614B C3 E0 62      [10] 3145 	jp	00138$
   614E                    3146 00114$:
                           3147 ;src/main.c:722: x1++;
   614E DD 66 FF      [19] 3148 	ld	h,-1 (ix)
   6151 24            [ 4] 3149 	inc	h
                           3150 ;src/main.c:723: x2++;
   6152 DD 6E FE      [19] 3151 	ld	l,-2 (ix)
   6155 2C            [ 4] 3152 	inc	l
                           3153 ;src/main.c:724: x3++;
   6156 1C            [ 4] 3154 	inc	e
                           3155 ;src/main.c:725: x1++;
   6157 7C            [ 4] 3156 	ld	a,h
   6158 3C            [ 4] 3157 	inc	a
   6159 DD 77 FE      [19] 3158 	ld	-2 (ix),a
                           3159 ;src/main.c:726: x2++;
   615C 7D            [ 4] 3160 	ld	a,l
   615D 3C            [ 4] 3161 	inc	a
   615E DD 77 FF      [19] 3162 	ld	-1 (ix),a
                           3163 ;src/main.c:727: x3++;
   6161 1C            [ 4] 3164 	inc	e
                           3165 ;src/main.c:728: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   6162 C5            [11] 3166 	push	bc
   6163 D5            [11] 3167 	push	de
   6164 33            [ 6] 3168 	inc	sp
   6165 D5            [11] 3169 	push	de
   6166 33            [ 6] 3170 	inc	sp
   6167 DD 56 F6      [19] 3171 	ld	d, -10 (ix)
   616A D5            [11] 3172 	push	de
   616B DD 66 FF      [19] 3173 	ld	h,-1 (ix)
   616E DD 6E FE      [19] 3174 	ld	l,-2 (ix)
   6171 E5            [11] 3175 	push	hl
   6172 CD 6D 5F      [17] 3176 	call	_compruebaAzul
   6175 F1            [10] 3177 	pop	af
   6176 F1            [10] 3178 	pop	af
   6177 F1            [10] 3179 	pop	af
   6178 C1            [10] 3180 	pop	bc
   6179 2D            [ 4] 3181 	dec	l
   617A C2 DE 62      [10] 3182 	jp	NZ,00137$
                           3183 ;src/main.c:729: pro->x++;
   617D 0A            [ 7] 3184 	ld	a,(bc)
   617E 3C            [ 4] 3185 	inc	a
   617F 02            [ 7] 3186 	ld	(bc),a
                           3187 ;src/main.c:730: return 1; 
   6180 2E 01         [ 7] 3188 	ld	l,#0x01
   6182 C3 E0 62      [10] 3189 	jp	00138$
                           3190 ;src/main.c:736: case 2: 
   6185                    3191 00119$:
                           3192 ;src/main.c:737: x1=pro->x+6;
   6185 DD 7E FC      [19] 3193 	ld	a,-4 (ix)
   6188 C6 06         [ 7] 3194 	add	a, #0x06
   618A 4F            [ 4] 3195 	ld	c,a
   618B DD 71 F5      [19] 3196 	ld	-11 (ix),c
                           3197 ;src/main.c:738: y1=pro->y+7;
   618E DD 7E F8      [19] 3198 	ld	a,-8 (ix)
   6191 DD 77 F3      [19] 3199 	ld	-13 (ix),a
                           3200 ;src/main.c:740: y2=pro->y;
                           3201 ;src/main.c:742: y3=pro->y+13;
   6194 DD 56 F7      [19] 3202 	ld	d,-9 (ix)
                           3203 ;src/main.c:743: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   6197 C5            [11] 3204 	push	bc
   6198 D5            [11] 3205 	push	de
   6199 D5            [11] 3206 	push	de
   619A DD 7E F3      [19] 3207 	ld	a,-13 (ix)
   619D F5            [11] 3208 	push	af
   619E 33            [ 6] 3209 	inc	sp
   619F 79            [ 4] 3210 	ld	a,c
   61A0 F5            [11] 3211 	push	af
   61A1 33            [ 6] 3212 	inc	sp
   61A2 79            [ 4] 3213 	ld	a,c
   61A3 F5            [11] 3214 	push	af
   61A4 33            [ 6] 3215 	inc	sp
   61A5 DD 7E F5      [19] 3216 	ld	a,-11 (ix)
   61A8 F5            [11] 3217 	push	af
   61A9 33            [ 6] 3218 	inc	sp
   61AA CD 6D 5F      [17] 3219 	call	_compruebaAzul
   61AD F1            [10] 3220 	pop	af
   61AE F1            [10] 3221 	pop	af
   61AF F1            [10] 3222 	pop	af
   61B0 D1            [10] 3223 	pop	de
   61B1 C1            [10] 3224 	pop	bc
   61B2 2D            [ 4] 3225 	dec	l
   61B3 20 05         [12] 3226 	jr	NZ,00121$
                           3227 ;src/main.c:744: return 1; 
   61B5 2E 01         [ 7] 3228 	ld	l,#0x01
   61B7 C3 E0 62      [10] 3229 	jp	00138$
   61BA                    3230 00121$:
                           3231 ;src/main.c:746: if(tecla==1){
   61BA DD 7E FD      [19] 3232 	ld	a,-3 (ix)
   61BD B7            [ 4] 3233 	or	a, a
   61BE CA DE 62      [10] 3234 	jp	Z,00137$
                           3235 ;src/main.c:747: y1--;y1--;
   61C1 DD 6E F3      [19] 3236 	ld	l,-13 (ix)
   61C4 2D            [ 4] 3237 	dec	l
   61C5 45            [ 4] 3238 	ld	b,l
   61C6 05            [ 4] 3239 	dec	b
                           3240 ;src/main.c:748: y2--;y2--;
   61C7 1D            [ 4] 3241 	dec	e
   61C8 1D            [ 4] 3242 	dec	e
                           3243 ;src/main.c:749: y3--;y3--;
   61C9 6A            [ 4] 3244 	ld	l,d
   61CA 2D            [ 4] 3245 	dec	l
   61CB 55            [ 4] 3246 	ld	d,l
   61CC 15            [ 4] 3247 	dec	d
                           3248 ;src/main.c:750: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   61CD C5            [11] 3249 	push	bc
   61CE D5            [11] 3250 	push	de
   61CF D5            [11] 3251 	push	de
   61D0 C5            [11] 3252 	push	bc
   61D1 79            [ 4] 3253 	ld	a,c
   61D2 F5            [11] 3254 	push	af
   61D3 33            [ 6] 3255 	inc	sp
   61D4 DD 7E F5      [19] 3256 	ld	a,-11 (ix)
   61D7 F5            [11] 3257 	push	af
   61D8 33            [ 6] 3258 	inc	sp
   61D9 CD 6D 5F      [17] 3259 	call	_compruebaAzul
   61DC F1            [10] 3260 	pop	af
   61DD F1            [10] 3261 	pop	af
   61DE F1            [10] 3262 	pop	af
   61DF D1            [10] 3263 	pop	de
   61E0 C1            [10] 3264 	pop	bc
   61E1 2D            [ 4] 3265 	dec	l
   61E2 20 15         [12] 3266 	jr	NZ,00123$
                           3267 ;src/main.c:751: pro->y=pro->y-2;
   61E4 DD 6E FA      [19] 3268 	ld	l,-6 (ix)
   61E7 DD 66 FB      [19] 3269 	ld	h,-5 (ix)
   61EA 4E            [ 7] 3270 	ld	c,(hl)
   61EB 0D            [ 4] 3271 	dec	c
   61EC 0D            [ 4] 3272 	dec	c
   61ED DD 6E FA      [19] 3273 	ld	l,-6 (ix)
   61F0 DD 66 FB      [19] 3274 	ld	h,-5 (ix)
   61F3 71            [ 7] 3275 	ld	(hl),c
                           3276 ;src/main.c:752: return 1; 
   61F4 2E 01         [ 7] 3277 	ld	l,#0x01
   61F6 C3 E0 62      [10] 3278 	jp	00138$
   61F9                    3279 00123$:
                           3280 ;src/main.c:754: y1++;y1++;
   61F9 04            [ 4] 3281 	inc	b
   61FA 04            [ 4] 3282 	inc	b
                           3283 ;src/main.c:755: y2++;y2++;
   61FB 1C            [ 4] 3284 	inc	e
   61FC 1C            [ 4] 3285 	inc	e
                           3286 ;src/main.c:756: y3++;y3++;
   61FD 6A            [ 4] 3287 	ld	l,d
   61FE 2C            [ 4] 3288 	inc	l
   61FF 2C            [ 4] 3289 	inc	l
                           3290 ;src/main.c:757: y1++;y1++;
   6200 78            [ 4] 3291 	ld	a,b
   6201 3C            [ 4] 3292 	inc	a
   6202 47            [ 4] 3293 	ld	b,a
   6203 04            [ 4] 3294 	inc	b
                           3295 ;src/main.c:758: y2++;y2++;
   6204 1C            [ 4] 3296 	inc	e
   6205 1C            [ 4] 3297 	inc	e
                           3298 ;src/main.c:759: y3++;y3++;
   6206 2C            [ 4] 3299 	inc	l
   6207 55            [ 4] 3300 	ld	d,l
   6208 14            [ 4] 3301 	inc	d
                           3302 ;src/main.c:760: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   6209 D5            [11] 3303 	push	de
   620A C5            [11] 3304 	push	bc
   620B 79            [ 4] 3305 	ld	a,c
   620C F5            [11] 3306 	push	af
   620D 33            [ 6] 3307 	inc	sp
   620E DD 7E F5      [19] 3308 	ld	a,-11 (ix)
   6211 F5            [11] 3309 	push	af
   6212 33            [ 6] 3310 	inc	sp
   6213 CD 6D 5F      [17] 3311 	call	_compruebaAzul
   6216 F1            [10] 3312 	pop	af
   6217 F1            [10] 3313 	pop	af
   6218 F1            [10] 3314 	pop	af
   6219 2D            [ 4] 3315 	dec	l
   621A C2 DE 62      [10] 3316 	jp	NZ,00137$
                           3317 ;src/main.c:761: pro->y=pro->y+2;
   621D DD 6E FA      [19] 3318 	ld	l,-6 (ix)
   6220 DD 66 FB      [19] 3319 	ld	h,-5 (ix)
   6223 4E            [ 7] 3320 	ld	c,(hl)
   6224 0C            [ 4] 3321 	inc	c
   6225 0C            [ 4] 3322 	inc	c
   6226 DD 6E FA      [19] 3323 	ld	l,-6 (ix)
   6229 DD 66 FB      [19] 3324 	ld	h,-5 (ix)
   622C 71            [ 7] 3325 	ld	(hl),c
                           3326 ;src/main.c:762: return 1; 
   622D 2E 01         [ 7] 3327 	ld	l,#0x01
   622F C3 E0 62      [10] 3328 	jp	00138$
                           3329 ;src/main.c:768: case 3: 
   6232                    3330 00128$:
                           3331 ;src/main.c:769: x1=pro->x+2;
   6232 DD 7E FC      [19] 3332 	ld	a,-4 (ix)
   6235 C6 02         [ 7] 3333 	add	a, #0x02
   6237 DD 77 FE      [19] 3334 	ld	-2 (ix),a
                           3335 ;src/main.c:770: y1=pro->y+ALTO_PERSONAJE+1;
   623A 7B            [ 4] 3336 	ld	a,e
   623B C6 0F         [ 7] 3337 	add	a, #0x0F
   623D 57            [ 4] 3338 	ld	d,a
   623E DD 72 FF      [19] 3339 	ld	-1 (ix),d
                           3340 ;src/main.c:771: x2=pro->x+4;
   6241 DD 5E F9      [19] 3341 	ld	e,-7 (ix)
                           3342 ;src/main.c:773: x3=pro->x;
   6244 DD 6E FC      [19] 3343 	ld	l,-4 (ix)
   6247 DD 75 F4      [19] 3344 	ld	-12 (ix),l
                           3345 ;src/main.c:775: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   624A C5            [11] 3346 	push	bc
   624B D5            [11] 3347 	push	de
   624C D5            [11] 3348 	push	de
   624D 33            [ 6] 3349 	inc	sp
   624E D5            [11] 3350 	push	de
   624F 33            [ 6] 3351 	inc	sp
   6250 DD 7E FF      [19] 3352 	ld	a,-1 (ix)
   6253 F5            [11] 3353 	push	af
   6254 33            [ 6] 3354 	inc	sp
   6255 DD 56 F4      [19] 3355 	ld	d, -12 (ix)
   6258 D5            [11] 3356 	push	de
   6259 DD 7E FE      [19] 3357 	ld	a,-2 (ix)
   625C F5            [11] 3358 	push	af
   625D 33            [ 6] 3359 	inc	sp
   625E CD 6D 5F      [17] 3360 	call	_compruebaAzul
   6261 F1            [10] 3361 	pop	af
   6262 F1            [10] 3362 	pop	af
   6263 F1            [10] 3363 	pop	af
   6264 D1            [10] 3364 	pop	de
   6265 C1            [10] 3365 	pop	bc
   6266 2D            [ 4] 3366 	dec	l
   6267 20 04         [12] 3367 	jr	NZ,00130$
                           3368 ;src/main.c:776: return 1; 
   6269 2E 01         [ 7] 3369 	ld	l,#0x01
   626B 18 73         [12] 3370 	jr	00138$
   626D                    3371 00130$:
                           3372 ;src/main.c:778: if(tecla==1){
   626D DD 7E FD      [19] 3373 	ld	a,-3 (ix)
   6270 B7            [ 4] 3374 	or	a, a
   6271 28 6B         [12] 3375 	jr	Z,00137$
                           3376 ;src/main.c:780: x1--;
   6273 DD 35 FE      [23] 3377 	dec	-2 (ix)
                           3378 ;src/main.c:781: x2--;
   6276 1D            [ 4] 3379 	dec	e
                           3380 ;src/main.c:782: x3--;
   6277 DD 7E F4      [19] 3381 	ld	a,-12 (ix)
   627A C6 FF         [ 7] 3382 	add	a,#0xFF
   627C DD 77 F6      [19] 3383 	ld	-10 (ix),a
                           3384 ;src/main.c:783: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   627F C5            [11] 3385 	push	bc
   6280 D5            [11] 3386 	push	de
   6281 D5            [11] 3387 	push	de
   6282 33            [ 6] 3388 	inc	sp
   6283 D5            [11] 3389 	push	de
   6284 33            [ 6] 3390 	inc	sp
   6285 DD 7E FF      [19] 3391 	ld	a,-1 (ix)
   6288 F5            [11] 3392 	push	af
   6289 33            [ 6] 3393 	inc	sp
   628A DD 56 F6      [19] 3394 	ld	d, -10 (ix)
   628D D5            [11] 3395 	push	de
   628E DD 7E FE      [19] 3396 	ld	a,-2 (ix)
   6291 F5            [11] 3397 	push	af
   6292 33            [ 6] 3398 	inc	sp
   6293 CD 6D 5F      [17] 3399 	call	_compruebaAzul
   6296 F1            [10] 3400 	pop	af
   6297 F1            [10] 3401 	pop	af
   6298 F1            [10] 3402 	pop	af
   6299 D1            [10] 3403 	pop	de
   629A C1            [10] 3404 	pop	bc
   629B 2D            [ 4] 3405 	dec	l
   629C 20 08         [12] 3406 	jr	NZ,00132$
                           3407 ;src/main.c:784: pro->x--;
   629E 0A            [ 7] 3408 	ld	a,(bc)
   629F C6 FF         [ 7] 3409 	add	a,#0xFF
   62A1 02            [ 7] 3410 	ld	(bc),a
                           3411 ;src/main.c:785: return 1; 
   62A2 2E 01         [ 7] 3412 	ld	l,#0x01
   62A4 18 3A         [12] 3413 	jr	00138$
   62A6                    3414 00132$:
                           3415 ;src/main.c:787: x1++;
   62A6 DD 66 FE      [19] 3416 	ld	h,-2 (ix)
   62A9 24            [ 4] 3417 	inc	h
                           3418 ;src/main.c:788: x2++;
   62AA 1C            [ 4] 3419 	inc	e
                           3420 ;src/main.c:789: x3++;
   62AB DD 6E F6      [19] 3421 	ld	l,-10 (ix)
   62AE 2C            [ 4] 3422 	inc	l
                           3423 ;src/main.c:790: x1++;
   62AF 7C            [ 4] 3424 	ld	a,h
   62B0 3C            [ 4] 3425 	inc	a
   62B1 DD 77 FE      [19] 3426 	ld	-2 (ix),a
                           3427 ;src/main.c:791: x2++;
   62B4 1C            [ 4] 3428 	inc	e
                           3429 ;src/main.c:792: x3++;
   62B5 7D            [ 4] 3430 	ld	a,l
   62B6 3C            [ 4] 3431 	inc	a
   62B7 DD 77 F6      [19] 3432 	ld	-10 (ix),a
                           3433 ;src/main.c:793: if(compruebaAzul(x1,x2,x3,y1,y2,y3)==1){
   62BA C5            [11] 3434 	push	bc
   62BB D5            [11] 3435 	push	de
   62BC 33            [ 6] 3436 	inc	sp
   62BD D5            [11] 3437 	push	de
   62BE 33            [ 6] 3438 	inc	sp
   62BF DD 7E FF      [19] 3439 	ld	a,-1 (ix)
   62C2 F5            [11] 3440 	push	af
   62C3 33            [ 6] 3441 	inc	sp
   62C4 DD 56 F6      [19] 3442 	ld	d, -10 (ix)
   62C7 D5            [11] 3443 	push	de
   62C8 DD 7E FE      [19] 3444 	ld	a,-2 (ix)
   62CB F5            [11] 3445 	push	af
   62CC 33            [ 6] 3446 	inc	sp
   62CD CD 6D 5F      [17] 3447 	call	_compruebaAzul
   62D0 F1            [10] 3448 	pop	af
   62D1 F1            [10] 3449 	pop	af
   62D2 F1            [10] 3450 	pop	af
   62D3 C1            [10] 3451 	pop	bc
   62D4 2D            [ 4] 3452 	dec	l
   62D5 20 07         [12] 3453 	jr	NZ,00137$
                           3454 ;src/main.c:794: pro->x++;
   62D7 0A            [ 7] 3455 	ld	a,(bc)
   62D8 3C            [ 4] 3456 	inc	a
   62D9 02            [ 7] 3457 	ld	(bc),a
                           3458 ;src/main.c:795: return 1; 
   62DA 2E 01         [ 7] 3459 	ld	l,#0x01
   62DC 18 02         [12] 3460 	jr	00138$
                           3461 ;src/main.c:799: }
   62DE                    3462 00137$:
                           3463 ;src/main.c:801: return 0;
   62DE 2E 00         [ 7] 3464 	ld	l,#0x00
   62E0                    3465 00138$:
   62E0 DD F9         [10] 3466 	ld	sp, ix
   62E2 DD E1         [14] 3467 	pop	ix
   62E4 C9            [10] 3468 	ret
                           3469 ;src/main.c:805: void actualizarMunicion(u8 personaje, u8 valor){
                           3470 ;	---------------------------------
                           3471 ; Function actualizarMunicion
                           3472 ; ---------------------------------
   62E5                    3473 _actualizarMunicion::
   62E5 DD E5         [15] 3474 	push	ix
   62E7 DD 21 00 00   [14] 3475 	ld	ix,#0
   62EB DD 39         [15] 3476 	add	ix,sp
                           3477 ;src/main.c:807: switch(personaje){
   62ED DD 7E 04      [19] 3478 	ld	a,4 (ix)
   62F0 B7            [ 4] 3479 	or	a, a
   62F1 28 08         [12] 3480 	jr	Z,00101$
   62F3 DD 7E 04      [19] 3481 	ld	a,4 (ix)
   62F6 3D            [ 4] 3482 	dec	a
   62F7 28 17         [12] 3483 	jr	Z,00102$
   62F9 18 26         [12] 3484 	jr	00104$
                           3485 ;src/main.c:809: case 0: 
   62FB                    3486 00101$:
                           3487 ;src/main.c:810: prota.municion = valor;
   62FB 21 68 4F      [10] 3488 	ld	hl,#(_prota + 0x0014)
   62FE DD 7E 05      [19] 3489 	ld	a,5 (ix)
   6301 77            [ 7] 3490 	ld	(hl),a
                           3491 ;src/main.c:811: actualizarMarcadorMunicion(0, prota.municion);
   6302 DD 7E 05      [19] 3492 	ld	a,5 (ix)
   6305 F5            [11] 3493 	push	af
   6306 33            [ 6] 3494 	inc	sp
   6307 AF            [ 4] 3495 	xor	a, a
   6308 F5            [11] 3496 	push	af
   6309 33            [ 6] 3497 	inc	sp
   630A CD 34 5E      [17] 3498 	call	_actualizarMarcadorMunicion
   630D F1            [10] 3499 	pop	af
                           3500 ;src/main.c:812: break;
   630E 18 11         [12] 3501 	jr	00104$
                           3502 ;src/main.c:813: case 1: 
   6310                    3503 00102$:
                           3504 ;src/main.c:814: protaDos.municion = valor;
   6310 21 85 4F      [10] 3505 	ld	hl,#(_protaDos + 0x0014)
   6313 DD 7E 05      [19] 3506 	ld	a,5 (ix)
   6316 77            [ 7] 3507 	ld	(hl),a
                           3508 ;src/main.c:815: actualizarMarcadorMunicion(1, protaDos.municion);
   6317 DD 56 05      [19] 3509 	ld	d, 5 (ix)
   631A 1E 01         [ 7] 3510 	ld	e,#0x01
   631C D5            [11] 3511 	push	de
   631D CD 34 5E      [17] 3512 	call	_actualizarMarcadorMunicion
   6320 F1            [10] 3513 	pop	af
                           3514 ;src/main.c:818: }
   6321                    3515 00104$:
   6321 DD E1         [14] 3516 	pop	ix
   6323 C9            [10] 3517 	ret
                           3518 ;src/main.c:821: void decrecerMunicion(u8 personaje){
                           3519 ;	---------------------------------
                           3520 ; Function decrecerMunicion
                           3521 ; ---------------------------------
   6324                    3522 _decrecerMunicion::
                           3523 ;src/main.c:823: switch(personaje){
   6324 FD 21 02 00   [14] 3524 	ld	iy,#2
   6328 FD 39         [15] 3525 	add	iy,sp
   632A FD 7E 00      [19] 3526 	ld	a,0 (iy)
   632D B7            [ 4] 3527 	or	a, a
   632E 28 07         [12] 3528 	jr	Z,00101$
   6330 FD 7E 00      [19] 3529 	ld	a,0 (iy)
   6333 3D            [ 4] 3530 	dec	a
   6334 28 15         [12] 3531 	jr	Z,00104$
   6336 C9            [10] 3532 	ret
                           3533 ;src/main.c:825: case 0: 
   6337                    3534 00101$:
                           3535 ;src/main.c:826: if(prota.municion>0){
   6337 01 68 4F      [10] 3536 	ld	bc,#_prota+20
   633A 0A            [ 7] 3537 	ld	a,(bc)
   633B B7            [ 4] 3538 	or	a, a
   633C C8            [11] 3539 	ret	Z
                           3540 ;src/main.c:827: prota.municion--;
   633D 57            [ 4] 3541 	ld	d,a
   633E 15            [ 4] 3542 	dec	d
   633F 7A            [ 4] 3543 	ld	a,d
   6340 02            [ 7] 3544 	ld	(bc),a
                           3545 ;src/main.c:828: actualizarMarcadorMunicion(0, prota.municion);
   6341 D5            [11] 3546 	push	de
   6342 33            [ 6] 3547 	inc	sp
   6343 AF            [ 4] 3548 	xor	a, a
   6344 F5            [11] 3549 	push	af
   6345 33            [ 6] 3550 	inc	sp
   6346 CD 34 5E      [17] 3551 	call	_actualizarMarcadorMunicion
   6349 F1            [10] 3552 	pop	af
                           3553 ;src/main.c:830: break;
   634A C9            [10] 3554 	ret
                           3555 ;src/main.c:831: case 1: 
   634B                    3556 00104$:
                           3557 ;src/main.c:832: if(protaDos.municion>0){
   634B 01 85 4F      [10] 3558 	ld	bc,#_protaDos+20
   634E 0A            [ 7] 3559 	ld	a,(bc)
   634F B7            [ 4] 3560 	or	a, a
   6350 C8            [11] 3561 	ret	Z
                           3562 ;src/main.c:833: protaDos.municion--;
   6351 57            [ 4] 3563 	ld	d,a
   6352 15            [ 4] 3564 	dec	d
   6353 7A            [ 4] 3565 	ld	a,d
   6354 02            [ 7] 3566 	ld	(bc),a
                           3567 ;src/main.c:834: actualizarMarcadorMunicion(1, protaDos.municion);
   6355 1E 01         [ 7] 3568 	ld	e, #0x01
   6357 D5            [11] 3569 	push	de
   6358 CD 34 5E      [17] 3570 	call	_actualizarMarcadorMunicion
   635B F1            [10] 3571 	pop	af
                           3572 ;src/main.c:837: }
   635C C9            [10] 3573 	ret
                           3574 ;src/main.c:840: void recargarMunicion(u8 personaje){
                           3575 ;	---------------------------------
                           3576 ; Function recargarMunicion
                           3577 ; ---------------------------------
   635D                    3578 _recargarMunicion::
                           3579 ;src/main.c:842: switch(personaje){
   635D FD 21 02 00   [14] 3580 	ld	iy,#2
   6361 FD 39         [15] 3581 	add	iy,sp
   6363 FD 7E 00      [19] 3582 	ld	a,0 (iy)
   6366 B7            [ 4] 3583 	or	a, a
   6367 28 07         [12] 3584 	jr	Z,00101$
   6369 FD 7E 00      [19] 3585 	ld	a,0 (iy)
   636C 3D            [ 4] 3586 	dec	a
   636D 28 11         [12] 3587 	jr	Z,00102$
   636F C9            [10] 3588 	ret
                           3589 ;src/main.c:844: case 0: 
   6370                    3590 00101$:
                           3591 ;src/main.c:845: prota.municion = 10;
   6370 21 68 4F      [10] 3592 	ld	hl,#_prota+20
   6373 36 0A         [10] 3593 	ld	(hl),#0x0A
                           3594 ;src/main.c:846: actualizarMarcadorMunicion(0, prota.municion);
   6375 46            [ 7] 3595 	ld	b,(hl)
   6376 C5            [11] 3596 	push	bc
   6377 33            [ 6] 3597 	inc	sp
   6378 AF            [ 4] 3598 	xor	a, a
   6379 F5            [11] 3599 	push	af
   637A 33            [ 6] 3600 	inc	sp
   637B CD 34 5E      [17] 3601 	call	_actualizarMarcadorMunicion
   637E F1            [10] 3602 	pop	af
                           3603 ;src/main.c:847: break;
   637F C9            [10] 3604 	ret
                           3605 ;src/main.c:848: case 1: 
   6380                    3606 00102$:
                           3607 ;src/main.c:849: protaDos.municion = 10;
   6380 21 85 4F      [10] 3608 	ld	hl,#_protaDos+20
   6383 36 0A         [10] 3609 	ld	(hl),#0x0A
                           3610 ;src/main.c:850: actualizarMarcadorMunicion(1, protaDos.municion);
   6385 46            [ 7] 3611 	ld	b,(hl)
   6386 C5            [11] 3612 	push	bc
   6387 33            [ 6] 3613 	inc	sp
   6388 3E 01         [ 7] 3614 	ld	a,#0x01
   638A F5            [11] 3615 	push	af
   638B 33            [ 6] 3616 	inc	sp
   638C CD 34 5E      [17] 3617 	call	_actualizarMarcadorMunicion
   638F F1            [10] 3618 	pop	af
                           3619 ;src/main.c:851: }
   6390 C9            [10] 3620 	ret
                           3621 ;src/main.c:854: void comprobarRecargaMunicion(u8 personaje){
                           3622 ;	---------------------------------
                           3623 ; Function comprobarRecargaMunicion
                           3624 ; ---------------------------------
   6391                    3625 _comprobarRecargaMunicion::
                           3626 ;src/main.c:857: switch(personaje){
   6391 FD 21 02 00   [14] 3627 	ld	iy,#2
   6395 FD 39         [15] 3628 	add	iy,sp
   6397 FD 7E 00      [19] 3629 	ld	a,0 (iy)
   639A B7            [ 4] 3630 	or	a, a
   639B 28 07         [12] 3631 	jr	Z,00101$
   639D FD 7E 00      [19] 3632 	ld	a,0 (iy)
   63A0 3D            [ 4] 3633 	dec	a
   63A1 28 4D         [12] 3634 	jr	Z,00107$
   63A3 C9            [10] 3635 	ret
                           3636 ;src/main.c:859: case 0:
   63A4                    3637 00101$:
                           3638 ;src/main.c:860: if(prota.x + ANCHO_PERSONAJE / 2 >= 7 && prota.x + ANCHO_PERSONAJE <= 18 && prota.y + ALTO_PERSONAJE / 2 >= 32  && prota.y + ALTO_PERSONAJE / 2 <= 70)
   63A4 21 54 4F      [10] 3639 	ld	hl,#_prota+0
   63A7 4E            [ 7] 3640 	ld	c,(hl)
   63A8 06 00         [ 7] 3641 	ld	b,#0x00
   63AA 59            [ 4] 3642 	ld	e, c
   63AB 50            [ 4] 3643 	ld	d, b
   63AC 13            [ 6] 3644 	inc	de
   63AD 13            [ 6] 3645 	inc	de
   63AE 7B            [ 4] 3646 	ld	a,e
   63AF D6 07         [ 7] 3647 	sub	a, #0x07
   63B1 7A            [ 4] 3648 	ld	a,d
   63B2 17            [ 4] 3649 	rla
   63B3 3F            [ 4] 3650 	ccf
   63B4 1F            [ 4] 3651 	rra
   63B5 DE 80         [ 7] 3652 	sbc	a, #0x80
   63B7 D8            [11] 3653 	ret	C
   63B8 21 05 00      [10] 3654 	ld	hl,#0x0005
   63BB 09            [11] 3655 	add	hl,bc
   63BC 3E 12         [ 7] 3656 	ld	a,#0x12
   63BE BD            [ 4] 3657 	cp	a, l
   63BF 3E 00         [ 7] 3658 	ld	a,#0x00
   63C1 9C            [ 4] 3659 	sbc	a, h
   63C2 E2 C7 63      [10] 3660 	jp	PO, 00158$
   63C5 EE 80         [ 7] 3661 	xor	a, #0x80
   63C7                    3662 00158$:
   63C7 F8            [11] 3663 	ret	M
   63C8 21 55 4F      [10] 3664 	ld	hl,#_prota+1
   63CB 4E            [ 7] 3665 	ld	c,(hl)
   63CC 06 00         [ 7] 3666 	ld	b,#0x00
   63CE 21 07 00      [10] 3667 	ld	hl,#0x0007
   63D1 09            [11] 3668 	add	hl,bc
   63D2 7D            [ 4] 3669 	ld	a,l
   63D3 D6 20         [ 7] 3670 	sub	a, #0x20
   63D5 7C            [ 4] 3671 	ld	a,h
   63D6 17            [ 4] 3672 	rla
   63D7 3F            [ 4] 3673 	ccf
   63D8 1F            [ 4] 3674 	rra
   63D9 DE 80         [ 7] 3675 	sbc	a, #0x80
   63DB D8            [11] 3676 	ret	C
   63DC 3E 46         [ 7] 3677 	ld	a,#0x46
   63DE BD            [ 4] 3678 	cp	a, l
   63DF 3E 00         [ 7] 3679 	ld	a,#0x00
   63E1 9C            [ 4] 3680 	sbc	a, h
   63E2 E2 E7 63      [10] 3681 	jp	PO, 00159$
   63E5 EE 80         [ 7] 3682 	xor	a, #0x80
   63E7                    3683 00159$:
   63E7 F8            [11] 3684 	ret	M
                           3685 ;src/main.c:861: recargarMunicion(0);
   63E8 AF            [ 4] 3686 	xor	a, a
   63E9 F5            [11] 3687 	push	af
   63EA 33            [ 6] 3688 	inc	sp
   63EB CD 5D 63      [17] 3689 	call	_recargarMunicion
   63EE 33            [ 6] 3690 	inc	sp
                           3691 ;src/main.c:862: break;
   63EF C9            [10] 3692 	ret
                           3693 ;src/main.c:864: case 1:
   63F0                    3694 00107$:
                           3695 ;src/main.c:865: if(protaDos.x + ANCHO_PERSONAJE / 2 >= 60 && protaDos.x + ANCHO_PERSONAJE <= 71 && protaDos.y + ALTO_PERSONAJE / 2 >= 156  && protaDos.y + ALTO_PERSONAJE / 2 <= 194)
   63F0 21 71 4F      [10] 3696 	ld	hl,#_protaDos+0
   63F3 4E            [ 7] 3697 	ld	c,(hl)
   63F4 06 00         [ 7] 3698 	ld	b,#0x00
   63F6 59            [ 4] 3699 	ld	e, c
   63F7 50            [ 4] 3700 	ld	d, b
   63F8 13            [ 6] 3701 	inc	de
   63F9 13            [ 6] 3702 	inc	de
   63FA 7B            [ 4] 3703 	ld	a,e
   63FB D6 3C         [ 7] 3704 	sub	a, #0x3C
   63FD 7A            [ 4] 3705 	ld	a,d
   63FE 17            [ 4] 3706 	rla
   63FF 3F            [ 4] 3707 	ccf
   6400 1F            [ 4] 3708 	rra
   6401 DE 80         [ 7] 3709 	sbc	a, #0x80
   6403 D8            [11] 3710 	ret	C
   6404 21 05 00      [10] 3711 	ld	hl,#0x0005
   6407 09            [11] 3712 	add	hl,bc
   6408 3E 47         [ 7] 3713 	ld	a,#0x47
   640A BD            [ 4] 3714 	cp	a, l
   640B 3E 00         [ 7] 3715 	ld	a,#0x00
   640D 9C            [ 4] 3716 	sbc	a, h
   640E E2 13 64      [10] 3717 	jp	PO, 00160$
   6411 EE 80         [ 7] 3718 	xor	a, #0x80
   6413                    3719 00160$:
   6413 F8            [11] 3720 	ret	M
   6414 21 72 4F      [10] 3721 	ld	hl,#_protaDos+1
   6417 4E            [ 7] 3722 	ld	c,(hl)
   6418 06 00         [ 7] 3723 	ld	b,#0x00
   641A 21 07 00      [10] 3724 	ld	hl,#0x0007
   641D 09            [11] 3725 	add	hl,bc
   641E 7D            [ 4] 3726 	ld	a,l
   641F D6 9C         [ 7] 3727 	sub	a, #0x9C
   6421 7C            [ 4] 3728 	ld	a,h
   6422 17            [ 4] 3729 	rla
   6423 3F            [ 4] 3730 	ccf
   6424 1F            [ 4] 3731 	rra
   6425 DE 80         [ 7] 3732 	sbc	a, #0x80
   6427 D8            [11] 3733 	ret	C
   6428 3E C2         [ 7] 3734 	ld	a,#0xC2
   642A BD            [ 4] 3735 	cp	a, l
   642B 3E 00         [ 7] 3736 	ld	a,#0x00
   642D 9C            [ 4] 3737 	sbc	a, h
   642E E2 33 64      [10] 3738 	jp	PO, 00161$
   6431 EE 80         [ 7] 3739 	xor	a, #0x80
   6433                    3740 00161$:
   6433 F8            [11] 3741 	ret	M
                           3742 ;src/main.c:866: recargarMunicion(1);
   6434 3E 01         [ 7] 3743 	ld	a,#0x01
   6436 F5            [11] 3744 	push	af
   6437 33            [ 6] 3745 	inc	sp
   6438 CD 5D 63      [17] 3746 	call	_recargarMunicion
   643B 33            [ 6] 3747 	inc	sp
                           3748 ;src/main.c:868: }
   643C C9            [10] 3749 	ret
                           3750 ;src/main.c:871: void dibujarMapa() {
                           3751 ;	---------------------------------
                           3752 ; Function dibujarMapa
                           3753 ; ---------------------------------
   643D                    3754 _dibujarMapa::
                           3755 ;src/main.c:873: cpct_etm_drawTilemap2x4(pre_terrain_W, pre_terrain_H, ORIGEN_MAPA, mapa);
   643D 2A A3 4F      [16] 3756 	ld	hl,(_mapa)
   6440 E5            [11] 3757 	push	hl
   6441 21 00 C0      [10] 3758 	ld	hl,#0xC000
   6444 E5            [11] 3759 	push	hl
   6445 21 32 27      [10] 3760 	ld	hl,#0x2732
   6448 E5            [11] 3761 	push	hl
   6449 2E 00         [ 7] 3762 	ld	l, #0x00
   644B E5            [11] 3763 	push	hl
   644C AF            [ 4] 3764 	xor	a, a
   644D F5            [11] 3765 	push	af
   644E 33            [ 6] 3766 	inc	sp
   644F CD AD 3F      [17] 3767 	call	_cpct_etm_drawTileBox2x4
   6452 C9            [10] 3768 	ret
                           3769 ;src/main.c:880: void llenarVmem(u8 x_start, u8 x_end, u8 y_start, u8 y_end, u8 color){
                           3770 ;	---------------------------------
                           3771 ; Function llenarVmem
                           3772 ; ---------------------------------
   6453                    3773 _llenarVmem::
   6453 DD E5         [15] 3774 	push	ix
   6455 DD 21 00 00   [14] 3775 	ld	ix,#0
   6459 DD 39         [15] 3776 	add	ix,sp
                           3777 ;src/main.c:883: for(j=y_start;j<y_end;j=j+4)
   645B DD 4E 06      [19] 3778 	ld	c,6 (ix)
   645E                    3779 00107$:
   645E 79            [ 4] 3780 	ld	a,c
   645F DD 96 07      [19] 3781 	sub	a, 7 (ix)
   6462 30 3B         [12] 3782 	jr	NC,00109$
                           3783 ;src/main.c:884: for(i=x_start;i<x_end;i=i+2)  
   6464 DD 46 04      [19] 3784 	ld	b,4 (ix)
   6467                    3785 00104$:
   6467 78            [ 4] 3786 	ld	a,b
   6468 DD 96 05      [19] 3787 	sub	a, 5 (ix)
   646B 30 2C         [12] 3788 	jr	NC,00108$
                           3789 ;src/main.c:885: cpct_drawTileAligned2x4_f(pre_tileset[color], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
   646D C5            [11] 3790 	push	bc
   646E 79            [ 4] 3791 	ld	a,c
   646F F5            [11] 3792 	push	af
   6470 33            [ 6] 3793 	inc	sp
   6471 C5            [11] 3794 	push	bc
   6472 33            [ 6] 3795 	inc	sp
   6473 21 00 C0      [10] 3796 	ld	hl,#0xC000
   6476 E5            [11] 3797 	push	hl
   6477 CD 0A 43      [17] 3798 	call	_cpct_getScreenPtr
   647A EB            [ 4] 3799 	ex	de,hl
   647B C1            [10] 3800 	pop	bc
   647C DD 6E 08      [19] 3801 	ld	l,8 (ix)
   647F 26 00         [ 7] 3802 	ld	h,#0x00
   6481 29            [11] 3803 	add	hl, hl
   6482 3E 08         [ 7] 3804 	ld	a,#<(_pre_tileset)
   6484 85            [ 4] 3805 	add	a, l
   6485 6F            [ 4] 3806 	ld	l,a
   6486 3E 18         [ 7] 3807 	ld	a,#>(_pre_tileset)
   6488 8C            [ 4] 3808 	adc	a, h
   6489 67            [ 4] 3809 	ld	h,a
   648A 7E            [ 7] 3810 	ld	a, (hl)
   648B 23            [ 6] 3811 	inc	hl
   648C 66            [ 7] 3812 	ld	h,(hl)
   648D 6F            [ 4] 3813 	ld	l,a
   648E C5            [11] 3814 	push	bc
   648F D5            [11] 3815 	push	de
   6490 E5            [11] 3816 	push	hl
   6491 CD C3 42      [17] 3817 	call	_cpct_drawTileAligned2x4_f
   6494 C1            [10] 3818 	pop	bc
                           3819 ;src/main.c:884: for(i=x_start;i<x_end;i=i+2)  
   6495 04            [ 4] 3820 	inc	b
   6496 04            [ 4] 3821 	inc	b
   6497 18 CE         [12] 3822 	jr	00104$
   6499                    3823 00108$:
                           3824 ;src/main.c:883: for(j=y_start;j<y_end;j=j+4)
   6499 0C            [ 4] 3825 	inc	c
   649A 0C            [ 4] 3826 	inc	c
   649B 0C            [ 4] 3827 	inc	c
   649C 0C            [ 4] 3828 	inc	c
   649D 18 BF         [12] 3829 	jr	00107$
   649F                    3830 00109$:
   649F DD E1         [14] 3831 	pop	ix
   64A1 C9            [10] 3832 	ret
                           3833 ;src/main.c:890: void dibujarCaritaPersonaje(u8 personaje, u8 x, u8 y){
                           3834 ;	---------------------------------
                           3835 ; Function dibujarCaritaPersonaje
                           3836 ; ---------------------------------
   64A2                    3837 _dibujarCaritaPersonaje::
   64A2 DD E5         [15] 3838 	push	ix
   64A4 DD 21 00 00   [14] 3839 	ld	ix,#0
   64A8 DD 39         [15] 3840 	add	ix,sp
                           3841 ;src/main.c:892: switch(personaje){
   64AA 3E 02         [ 7] 3842 	ld	a,#0x02
   64AC DD 96 04      [19] 3843 	sub	a, 4 (ix)
   64AF DA 07 66      [10] 3844 	jp	C,00105$
                           3845 ;src/main.c:895: cpct_drawTileAligned2x4_f(pre_tileset[18], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
   64B2 DD 46 06      [19] 3846 	ld	b,6 (ix)
   64B5 04            [ 4] 3847 	inc	b
   64B6 04            [ 4] 3848 	inc	b
   64B7 04            [ 4] 3849 	inc	b
   64B8 04            [ 4] 3850 	inc	b
                           3851 ;src/main.c:896: cpct_drawTileAligned2x4_f(pre_tileset[9], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
   64B9 DD 4E 05      [19] 3852 	ld	c,5 (ix)
   64BC 0C            [ 4] 3853 	inc	c
   64BD 0C            [ 4] 3854 	inc	c
                           3855 ;src/main.c:892: switch(personaje){
   64BE DD 5E 04      [19] 3856 	ld	e,4 (ix)
   64C1 16 00         [ 7] 3857 	ld	d,#0x00
   64C3 21 CA 64      [10] 3858 	ld	hl,#00111$
   64C6 19            [11] 3859 	add	hl,de
   64C7 19            [11] 3860 	add	hl,de
   64C8 19            [11] 3861 	add	hl,de
   64C9 E9            [ 4] 3862 	jp	(hl)
   64CA                    3863 00111$:
   64CA C3 D3 64      [10] 3864 	jp	00101$
   64CD C3 3B 65      [10] 3865 	jp	00102$
   64D0 C3 A2 65      [10] 3866 	jp	00103$
                           3867 ;src/main.c:893: case 0: 
   64D3                    3868 00101$:
                           3869 ;src/main.c:894: cpct_drawTileAligned2x4_f(pre_tileset[8], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
   64D3 C5            [11] 3870 	push	bc
   64D4 DD 66 06      [19] 3871 	ld	h,6 (ix)
   64D7 DD 6E 05      [19] 3872 	ld	l,5 (ix)
   64DA E5            [11] 3873 	push	hl
   64DB 21 00 C0      [10] 3874 	ld	hl,#0xC000
   64DE E5            [11] 3875 	push	hl
   64DF CD 0A 43      [17] 3876 	call	_cpct_getScreenPtr
   64E2 5D            [ 4] 3877 	ld	e,l
   64E3 54            [ 4] 3878 	ld	d,h
   64E4 C1            [10] 3879 	pop	bc
   64E5 2A 18 18      [16] 3880 	ld	hl, (#_pre_tileset + 16)
   64E8 C5            [11] 3881 	push	bc
   64E9 D5            [11] 3882 	push	de
   64EA E5            [11] 3883 	push	hl
   64EB CD C3 42      [17] 3884 	call	_cpct_drawTileAligned2x4_f
   64EE C1            [10] 3885 	pop	bc
                           3886 ;src/main.c:895: cpct_drawTileAligned2x4_f(pre_tileset[18], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
   64EF C5            [11] 3887 	push	bc
   64F0 C5            [11] 3888 	push	bc
   64F1 33            [ 6] 3889 	inc	sp
   64F2 DD 7E 05      [19] 3890 	ld	a,5 (ix)
   64F5 F5            [11] 3891 	push	af
   64F6 33            [ 6] 3892 	inc	sp
   64F7 21 00 C0      [10] 3893 	ld	hl,#0xC000
   64FA E5            [11] 3894 	push	hl
   64FB CD 0A 43      [17] 3895 	call	_cpct_getScreenPtr
   64FE 5D            [ 4] 3896 	ld	e,l
   64FF 54            [ 4] 3897 	ld	d,h
   6500 C1            [10] 3898 	pop	bc
   6501 2A 2C 18      [16] 3899 	ld	hl, (#_pre_tileset + 36)
   6504 C5            [11] 3900 	push	bc
   6505 D5            [11] 3901 	push	de
   6506 E5            [11] 3902 	push	hl
   6507 CD C3 42      [17] 3903 	call	_cpct_drawTileAligned2x4_f
   650A C1            [10] 3904 	pop	bc
                           3905 ;src/main.c:896: cpct_drawTileAligned2x4_f(pre_tileset[9], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
   650B C5            [11] 3906 	push	bc
   650C DD 7E 06      [19] 3907 	ld	a,6 (ix)
   650F F5            [11] 3908 	push	af
   6510 33            [ 6] 3909 	inc	sp
   6511 79            [ 4] 3910 	ld	a,c
   6512 F5            [11] 3911 	push	af
   6513 33            [ 6] 3912 	inc	sp
   6514 21 00 C0      [10] 3913 	ld	hl,#0xC000
   6517 E5            [11] 3914 	push	hl
   6518 CD 0A 43      [17] 3915 	call	_cpct_getScreenPtr
   651B 5D            [ 4] 3916 	ld	e,l
   651C 54            [ 4] 3917 	ld	d,h
   651D C1            [10] 3918 	pop	bc
   651E 2A 1A 18      [16] 3919 	ld	hl, (#_pre_tileset + 18)
   6521 C5            [11] 3920 	push	bc
   6522 D5            [11] 3921 	push	de
   6523 E5            [11] 3922 	push	hl
   6524 CD C3 42      [17] 3923 	call	_cpct_drawTileAligned2x4_f
   6527 21 00 C0      [10] 3924 	ld	hl,#0xC000
   652A E5            [11] 3925 	push	hl
   652B CD 0A 43      [17] 3926 	call	_cpct_getScreenPtr
   652E 4D            [ 4] 3927 	ld	c,l
   652F 44            [ 4] 3928 	ld	b,h
   6530 2A 2E 18      [16] 3929 	ld	hl, (#_pre_tileset + 38)
   6533 C5            [11] 3930 	push	bc
   6534 E5            [11] 3931 	push	hl
   6535 CD C3 42      [17] 3932 	call	_cpct_drawTileAligned2x4_f
                           3933 ;src/main.c:898: break;
   6538 C3 07 66      [10] 3934 	jp	00105$
                           3935 ;src/main.c:899: case 1:
   653B                    3936 00102$:
                           3937 ;src/main.c:900: cpct_drawTileAligned2x4_f(pre_tileset[28], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
   653B C5            [11] 3938 	push	bc
   653C DD 66 06      [19] 3939 	ld	h,6 (ix)
   653F DD 6E 05      [19] 3940 	ld	l,5 (ix)
   6542 E5            [11] 3941 	push	hl
   6543 21 00 C0      [10] 3942 	ld	hl,#0xC000
   6546 E5            [11] 3943 	push	hl
   6547 CD 0A 43      [17] 3944 	call	_cpct_getScreenPtr
   654A 5D            [ 4] 3945 	ld	e,l
   654B 54            [ 4] 3946 	ld	d,h
   654C C1            [10] 3947 	pop	bc
   654D 2A 40 18      [16] 3948 	ld	hl, (#_pre_tileset + 56)
   6550 C5            [11] 3949 	push	bc
   6551 D5            [11] 3950 	push	de
   6552 E5            [11] 3951 	push	hl
   6553 CD C3 42      [17] 3952 	call	_cpct_drawTileAligned2x4_f
   6556 C1            [10] 3953 	pop	bc
                           3954 ;src/main.c:901: cpct_drawTileAligned2x4_f(pre_tileset[38], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
   6557 C5            [11] 3955 	push	bc
   6558 C5            [11] 3956 	push	bc
   6559 33            [ 6] 3957 	inc	sp
   655A DD 7E 05      [19] 3958 	ld	a,5 (ix)
   655D F5            [11] 3959 	push	af
   655E 33            [ 6] 3960 	inc	sp
   655F 21 00 C0      [10] 3961 	ld	hl,#0xC000
   6562 E5            [11] 3962 	push	hl
   6563 CD 0A 43      [17] 3963 	call	_cpct_getScreenPtr
   6566 5D            [ 4] 3964 	ld	e,l
   6567 54            [ 4] 3965 	ld	d,h
   6568 C1            [10] 3966 	pop	bc
   6569 2A 54 18      [16] 3967 	ld	hl, (#_pre_tileset + 76)
   656C C5            [11] 3968 	push	bc
   656D D5            [11] 3969 	push	de
   656E E5            [11] 3970 	push	hl
   656F CD C3 42      [17] 3971 	call	_cpct_drawTileAligned2x4_f
   6572 C1            [10] 3972 	pop	bc
                           3973 ;src/main.c:902: cpct_drawTileAligned2x4_f(pre_tileset[29], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
   6573 C5            [11] 3974 	push	bc
   6574 DD 7E 06      [19] 3975 	ld	a,6 (ix)
   6577 F5            [11] 3976 	push	af
   6578 33            [ 6] 3977 	inc	sp
   6579 79            [ 4] 3978 	ld	a,c
   657A F5            [11] 3979 	push	af
   657B 33            [ 6] 3980 	inc	sp
   657C 21 00 C0      [10] 3981 	ld	hl,#0xC000
   657F E5            [11] 3982 	push	hl
   6580 CD 0A 43      [17] 3983 	call	_cpct_getScreenPtr
   6583 5D            [ 4] 3984 	ld	e,l
   6584 54            [ 4] 3985 	ld	d,h
   6585 C1            [10] 3986 	pop	bc
   6586 2A 42 18      [16] 3987 	ld	hl, (#_pre_tileset + 58)
   6589 C5            [11] 3988 	push	bc
   658A D5            [11] 3989 	push	de
   658B E5            [11] 3990 	push	hl
   658C CD C3 42      [17] 3991 	call	_cpct_drawTileAligned2x4_f
   658F 21 00 C0      [10] 3992 	ld	hl,#0xC000
   6592 E5            [11] 3993 	push	hl
   6593 CD 0A 43      [17] 3994 	call	_cpct_getScreenPtr
   6596 4D            [ 4] 3995 	ld	c,l
   6597 44            [ 4] 3996 	ld	b,h
   6598 2A 56 18      [16] 3997 	ld	hl, (#_pre_tileset + 78)
   659B C5            [11] 3998 	push	bc
   659C E5            [11] 3999 	push	hl
   659D CD C3 42      [17] 4000 	call	_cpct_drawTileAligned2x4_f
                           4001 ;src/main.c:904: break;
   65A0 18 65         [12] 4002 	jr	00105$
                           4003 ;src/main.c:905: case 2:
   65A2                    4004 00103$:
                           4005 ;src/main.c:906: cpct_drawTileAligned2x4_f(pre_tileset[8], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
   65A2 C5            [11] 4006 	push	bc
   65A3 DD 66 06      [19] 4007 	ld	h,6 (ix)
   65A6 DD 6E 05      [19] 4008 	ld	l,5 (ix)
   65A9 E5            [11] 4009 	push	hl
   65AA 21 00 C0      [10] 4010 	ld	hl,#0xC000
   65AD E5            [11] 4011 	push	hl
   65AE CD 0A 43      [17] 4012 	call	_cpct_getScreenPtr
   65B1 5D            [ 4] 4013 	ld	e,l
   65B2 54            [ 4] 4014 	ld	d,h
   65B3 C1            [10] 4015 	pop	bc
   65B4 2A 18 18      [16] 4016 	ld	hl, (#_pre_tileset + 16)
   65B7 C5            [11] 4017 	push	bc
   65B8 D5            [11] 4018 	push	de
   65B9 E5            [11] 4019 	push	hl
   65BA CD C3 42      [17] 4020 	call	_cpct_drawTileAligned2x4_f
   65BD C1            [10] 4021 	pop	bc
                           4022 ;src/main.c:907: cpct_drawTileAligned2x4_f(pre_tileset[18], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
   65BE C5            [11] 4023 	push	bc
   65BF C5            [11] 4024 	push	bc
   65C0 33            [ 6] 4025 	inc	sp
   65C1 DD 7E 05      [19] 4026 	ld	a,5 (ix)
   65C4 F5            [11] 4027 	push	af
   65C5 33            [ 6] 4028 	inc	sp
   65C6 21 00 C0      [10] 4029 	ld	hl,#0xC000
   65C9 E5            [11] 4030 	push	hl
   65CA CD 0A 43      [17] 4031 	call	_cpct_getScreenPtr
   65CD 5D            [ 4] 4032 	ld	e,l
   65CE 54            [ 4] 4033 	ld	d,h
   65CF C1            [10] 4034 	pop	bc
   65D0 2A 2C 18      [16] 4035 	ld	hl, (#_pre_tileset + 36)
   65D3 C5            [11] 4036 	push	bc
   65D4 D5            [11] 4037 	push	de
   65D5 E5            [11] 4038 	push	hl
   65D6 CD C3 42      [17] 4039 	call	_cpct_drawTileAligned2x4_f
   65D9 C1            [10] 4040 	pop	bc
                           4041 ;src/main.c:908: cpct_drawTileAligned2x4_f(pre_tileset[29], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
   65DA C5            [11] 4042 	push	bc
   65DB DD 7E 06      [19] 4043 	ld	a,6 (ix)
   65DE F5            [11] 4044 	push	af
   65DF 33            [ 6] 4045 	inc	sp
   65E0 79            [ 4] 4046 	ld	a,c
   65E1 F5            [11] 4047 	push	af
   65E2 33            [ 6] 4048 	inc	sp
   65E3 21 00 C0      [10] 4049 	ld	hl,#0xC000
   65E6 E5            [11] 4050 	push	hl
   65E7 CD 0A 43      [17] 4051 	call	_cpct_getScreenPtr
   65EA 5D            [ 4] 4052 	ld	e,l
   65EB 54            [ 4] 4053 	ld	d,h
   65EC C1            [10] 4054 	pop	bc
   65ED 2A 42 18      [16] 4055 	ld	hl, (#_pre_tileset + 58)
   65F0 C5            [11] 4056 	push	bc
   65F1 D5            [11] 4057 	push	de
   65F2 E5            [11] 4058 	push	hl
   65F3 CD C3 42      [17] 4059 	call	_cpct_drawTileAligned2x4_f
   65F6 21 00 C0      [10] 4060 	ld	hl,#0xC000
   65F9 E5            [11] 4061 	push	hl
   65FA CD 0A 43      [17] 4062 	call	_cpct_getScreenPtr
   65FD 4D            [ 4] 4063 	ld	c,l
   65FE 44            [ 4] 4064 	ld	b,h
   65FF 2A 56 18      [16] 4065 	ld	hl, (#_pre_tileset + 78)
   6602 C5            [11] 4066 	push	bc
   6603 E5            [11] 4067 	push	hl
   6604 CD C3 42      [17] 4068 	call	_cpct_drawTileAligned2x4_f
                           4069 ;src/main.c:911: }
   6607                    4070 00105$:
   6607 DD E1         [14] 4071 	pop	ix
   6609 C9            [10] 4072 	ret
                           4073 ;src/main.c:914: void dibujarGanador(u8 ganador){
                           4074 ;	---------------------------------
                           4075 ; Function dibujarGanador
                           4076 ; ---------------------------------
   660A                    4077 _dibujarGanador::
   660A DD E5         [15] 4078 	push	ix
   660C DD 21 00 00   [14] 4079 	ld	ix,#0
   6610 DD 39         [15] 4080 	add	ix,sp
                           4081 ;src/main.c:918: estado = 5;
   6612 21 AA 4F      [10] 4082 	ld	hl,#_estado + 0
   6615 36 05         [10] 4083 	ld	(hl), #0x05
                           4084 ;src/main.c:919: llenarVmem(5,74,40,160,24);
   6617 21 A0 18      [10] 4085 	ld	hl,#0x18A0
   661A E5            [11] 4086 	push	hl
   661B 21 4A 28      [10] 4087 	ld	hl,#0x284A
   661E E5            [11] 4088 	push	hl
   661F 3E 05         [ 7] 4089 	ld	a,#0x05
   6621 F5            [11] 4090 	push	af
   6622 33            [ 6] 4091 	inc	sp
   6623 CD 53 64      [17] 4092 	call	_llenarVmem
   6626 F1            [10] 4093 	pop	af
   6627 F1            [10] 4094 	pop	af
   6628 33            [ 6] 4095 	inc	sp
                           4096 ;src/main.c:921: switch(ganador){
   6629 DD 7E 04      [19] 4097 	ld	a,4 (ix)
   662C B7            [ 4] 4098 	or	a, a
   662D 28 09         [12] 4099 	jr	Z,00101$
   662F DD 7E 04      [19] 4100 	ld	a,4 (ix)
   6632 3D            [ 4] 4101 	dec	a
   6633 28 58         [12] 4102 	jr	Z,00102$
   6635 C3 E2 66      [10] 4103 	jp	00103$
                           4104 ;src/main.c:922: case 0: 
   6638                    4105 00101$:
                           4106 ;src/main.c:923: cpct_drawStringM0("POINT TO:", cpct_getScreenPtr(CPCT_VMEM_START, 24, 75), 15, 0);
   6638 21 18 4B      [10] 4107 	ld	hl,#0x4B18
   663B E5            [11] 4108 	push	hl
   663C 21 00 C0      [10] 4109 	ld	hl,#0xC000
   663F E5            [11] 4110 	push	hl
   6640 CD 0A 43      [17] 4111 	call	_cpct_getScreenPtr
   6643 4D            [ 4] 4112 	ld	c,l
   6644 44            [ 4] 4113 	ld	b,h
   6645 21 0F 00      [10] 4114 	ld	hl,#0x000F
   6648 E5            [11] 4115 	push	hl
   6649 C5            [11] 4116 	push	bc
   664A 21 00 67      [10] 4117 	ld	hl,#___str_7
   664D E5            [11] 4118 	push	hl
   664E CD E4 3E      [17] 4119 	call	_cpct_drawStringM0
   6651 21 06 00      [10] 4120 	ld	hl,#6
   6654 39            [11] 4121 	add	hl,sp
   6655 F9            [ 6] 4122 	ld	sp,hl
                           4123 ;src/main.c:924: cpct_drawStringM0("Jimmy", cpct_getScreenPtr(CPCT_VMEM_START, 30, 108), 11, 0);
   6656 21 1E 6C      [10] 4124 	ld	hl,#0x6C1E
   6659 E5            [11] 4125 	push	hl
   665A 21 00 C0      [10] 4126 	ld	hl,#0xC000
   665D E5            [11] 4127 	push	hl
   665E CD 0A 43      [17] 4128 	call	_cpct_getScreenPtr
   6661 4D            [ 4] 4129 	ld	c,l
   6662 44            [ 4] 4130 	ld	b,h
   6663 21 0B 00      [10] 4131 	ld	hl,#0x000B
   6666 E5            [11] 4132 	push	hl
   6667 C5            [11] 4133 	push	bc
   6668 21 0A 67      [10] 4134 	ld	hl,#___str_8
   666B E5            [11] 4135 	push	hl
   666C CD E4 3E      [17] 4136 	call	_cpct_drawStringM0
   666F 21 06 00      [10] 4137 	ld	hl,#6
   6672 39            [11] 4138 	add	hl,sp
   6673 F9            [ 6] 4139 	ld	sp,hl
                           4140 ;src/main.c:925: dibujarCaritaPersonaje(0, 14, 108);
   6674 21 0E 6C      [10] 4141 	ld	hl,#0x6C0E
   6677 E5            [11] 4142 	push	hl
   6678 AF            [ 4] 4143 	xor	a, a
   6679 F5            [11] 4144 	push	af
   667A 33            [ 6] 4145 	inc	sp
   667B CD A2 64      [17] 4146 	call	_dibujarCaritaPersonaje
                           4147 ;src/main.c:926: dibujarCaritaPersonaje(0, 63, 108);
   667E 33            [ 6] 4148 	inc	sp
   667F 21 3F 6C      [10] 4149 	ld	hl,#0x6C3F
   6682 E3            [19] 4150 	ex	(sp),hl
   6683 AF            [ 4] 4151 	xor	a, a
   6684 F5            [11] 4152 	push	af
   6685 33            [ 6] 4153 	inc	sp
   6686 CD A2 64      [17] 4154 	call	_dibujarCaritaPersonaje
   6689 F1            [10] 4155 	pop	af
   668A 33            [ 6] 4156 	inc	sp
                           4157 ;src/main.c:927: break;
   668B 18 55         [12] 4158 	jr	00103$
                           4159 ;src/main.c:928: case 1:
   668D                    4160 00102$:
                           4161 ;src/main.c:929: cpct_drawStringM0("POINT TO:", cpct_getScreenPtr(CPCT_VMEM_START, 24, 75), 15, 0);
   668D 21 18 4B      [10] 4162 	ld	hl,#0x4B18
   6690 E5            [11] 4163 	push	hl
   6691 21 00 C0      [10] 4164 	ld	hl,#0xC000
   6694 E5            [11] 4165 	push	hl
   6695 CD 0A 43      [17] 4166 	call	_cpct_getScreenPtr
   6698 4D            [ 4] 4167 	ld	c,l
   6699 44            [ 4] 4168 	ld	b,h
   669A 21 0F 00      [10] 4169 	ld	hl,#0x000F
   669D E5            [11] 4170 	push	hl
   669E C5            [11] 4171 	push	bc
   669F 21 00 67      [10] 4172 	ld	hl,#___str_7
   66A2 E5            [11] 4173 	push	hl
   66A3 CD E4 3E      [17] 4174 	call	_cpct_drawStringM0
   66A6 21 06 00      [10] 4175 	ld	hl,#6
   66A9 39            [11] 4176 	add	hl,sp
   66AA F9            [ 6] 4177 	ld	sp,hl
                           4178 ;src/main.c:930: cpct_drawStringM0("Obdulia", cpct_getScreenPtr(CPCT_VMEM_START, 27, 108), 10, 0);
   66AB 21 1B 6C      [10] 4179 	ld	hl,#0x6C1B
   66AE E5            [11] 4180 	push	hl
   66AF 21 00 C0      [10] 4181 	ld	hl,#0xC000
   66B2 E5            [11] 4182 	push	hl
   66B3 CD 0A 43      [17] 4183 	call	_cpct_getScreenPtr
   66B6 4D            [ 4] 4184 	ld	c,l
   66B7 44            [ 4] 4185 	ld	b,h
   66B8 21 0A 00      [10] 4186 	ld	hl,#0x000A
   66BB E5            [11] 4187 	push	hl
   66BC C5            [11] 4188 	push	bc
   66BD 21 10 67      [10] 4189 	ld	hl,#___str_9
   66C0 E5            [11] 4190 	push	hl
   66C1 CD E4 3E      [17] 4191 	call	_cpct_drawStringM0
   66C4 21 06 00      [10] 4192 	ld	hl,#6
   66C7 39            [11] 4193 	add	hl,sp
   66C8 F9            [ 6] 4194 	ld	sp,hl
                           4195 ;src/main.c:931: dibujarCaritaPersonaje(1, 14, 108);
   66C9 21 0E 6C      [10] 4196 	ld	hl,#0x6C0E
   66CC E5            [11] 4197 	push	hl
   66CD 3E 01         [ 7] 4198 	ld	a,#0x01
   66CF F5            [11] 4199 	push	af
   66D0 33            [ 6] 4200 	inc	sp
   66D1 CD A2 64      [17] 4201 	call	_dibujarCaritaPersonaje
                           4202 ;src/main.c:932: dibujarCaritaPersonaje(1, 63, 108);
   66D4 33            [ 6] 4203 	inc	sp
   66D5 21 3F 6C      [10] 4204 	ld	hl,#0x6C3F
   66D8 E3            [19] 4205 	ex	(sp),hl
   66D9 3E 01         [ 7] 4206 	ld	a,#0x01
   66DB F5            [11] 4207 	push	af
   66DC 33            [ 6] 4208 	inc	sp
   66DD CD A2 64      [17] 4209 	call	_dibujarCaritaPersonaje
   66E0 F1            [10] 4210 	pop	af
   66E1 33            [ 6] 4211 	inc	sp
                           4212 ;src/main.c:934: }
   66E2                    4213 00103$:
                           4214 ;src/main.c:937: timer = 0;  
   66E2 11 00 00      [10] 4215 	ld	de,#0x0000
                           4216 ;src/main.c:939: while(timer2<2){
   66E5 0E 00         [ 7] 4217 	ld	c,#0x00
   66E7                    4218 00107$:
   66E7 79            [ 4] 4219 	ld	a,c
   66E8 D6 02         [ 7] 4220 	sub	a, #0x02
   66EA 30 11         [12] 4221 	jr	NC,00110$
                           4222 ;src/main.c:940: while(timer<30000){
   66EC                    4223 00104$:
   66EC 7B            [ 4] 4224 	ld	a,e
   66ED D6 30         [ 7] 4225 	sub	a, #0x30
   66EF 7A            [ 4] 4226 	ld	a,d
   66F0 DE 75         [ 7] 4227 	sbc	a, #0x75
   66F2 30 03         [12] 4228 	jr	NC,00106$
                           4229 ;src/main.c:941: timer++;
   66F4 13            [ 6] 4230 	inc	de
   66F5 18 F5         [12] 4231 	jr	00104$
   66F7                    4232 00106$:
                           4233 ;src/main.c:943: timer2++;
   66F7 0C            [ 4] 4234 	inc	c
                           4235 ;src/main.c:944: timer = 0;
   66F8 11 00 00      [10] 4236 	ld	de,#0x0000
   66FB 18 EA         [12] 4237 	jr	00107$
   66FD                    4238 00110$:
   66FD DD E1         [14] 4239 	pop	ix
   66FF C9            [10] 4240 	ret
   6700                    4241 ___str_7:
   6700 50 4F 49 4E 54 20  4242 	.ascii "POINT TO:"
        54 4F 3A
   6709 00                 4243 	.db 0x00
   670A                    4244 ___str_8:
   670A 4A 69 6D 6D 79     4245 	.ascii "Jimmy"
   670F 00                 4246 	.db 0x00
   6710                    4247 ___str_9:
   6710 4F 62 64 75 6C 69  4248 	.ascii "Obdulia"
        61
   6717 00                 4249 	.db 0x00
                           4250 ;src/main.c:950: void dibujarAyuda(){
                           4251 ;	---------------------------------
                           4252 ; Function dibujarAyuda
                           4253 ; ---------------------------------
   6718                    4254 _dibujarAyuda::
                           4255 ;src/main.c:955: cpct_drawStringM0("1 VS 1", cpct_getScreenPtr(CPCT_VMEM_START, 26, 4), 11, 0);
   6718 21 1A 04      [10] 4256 	ld	hl,#0x041A
   671B E5            [11] 4257 	push	hl
   671C 21 00 C0      [10] 4258 	ld	hl,#0xC000
   671F E5            [11] 4259 	push	hl
   6720 CD 0A 43      [17] 4260 	call	_cpct_getScreenPtr
   6723 4D            [ 4] 4261 	ld	c,l
   6724 44            [ 4] 4262 	ld	b,h
   6725 21 0B 00      [10] 4263 	ld	hl,#0x000B
   6728 E5            [11] 4264 	push	hl
   6729 C5            [11] 4265 	push	bc
   672A 21 24 6A      [10] 4266 	ld	hl,#___str_10
   672D E5            [11] 4267 	push	hl
   672E CD E4 3E      [17] 4268 	call	_cpct_drawStringM0
   6731 21 06 00      [10] 4269 	ld	hl,#6
   6734 39            [11] 4270 	add	hl,sp
   6735 F9            [ 6] 4271 	ld	sp,hl
                           4272 ;src/main.c:956: cpct_drawStringM0("TWO WAYS TO WIN:", cpct_getScreenPtr(CPCT_VMEM_START, 9, 20), 15, 0);
   6736 21 09 14      [10] 4273 	ld	hl,#0x1409
   6739 E5            [11] 4274 	push	hl
   673A 21 00 C0      [10] 4275 	ld	hl,#0xC000
   673D E5            [11] 4276 	push	hl
   673E CD 0A 43      [17] 4277 	call	_cpct_getScreenPtr
   6741 4D            [ 4] 4278 	ld	c,l
   6742 44            [ 4] 4279 	ld	b,h
   6743 21 0F 00      [10] 4280 	ld	hl,#0x000F
   6746 E5            [11] 4281 	push	hl
   6747 C5            [11] 4282 	push	bc
   6748 21 2B 6A      [10] 4283 	ld	hl,#___str_11
   674B E5            [11] 4284 	push	hl
   674C CD E4 3E      [17] 4285 	call	_cpct_drawStringM0
   674F 21 06 00      [10] 4286 	ld	hl,#6
   6752 39            [11] 4287 	add	hl,sp
   6753 F9            [ 6] 4288 	ld	sp,hl
                           4289 ;src/main.c:957: cpct_drawStringM0("GET THE KEY OF", cpct_getScreenPtr(CPCT_VMEM_START, 12, 40), 6, 0);
   6754 21 0C 28      [10] 4290 	ld	hl,#0x280C
   6757 E5            [11] 4291 	push	hl
   6758 21 00 C0      [10] 4292 	ld	hl,#0xC000
   675B E5            [11] 4293 	push	hl
   675C CD 0A 43      [17] 4294 	call	_cpct_getScreenPtr
   675F 4D            [ 4] 4295 	ld	c,l
   6760 44            [ 4] 4296 	ld	b,h
   6761 21 06 00      [10] 4297 	ld	hl,#0x0006
   6764 E5            [11] 4298 	push	hl
   6765 C5            [11] 4299 	push	bc
   6766 21 3C 6A      [10] 4300 	ld	hl,#___str_12
   6769 E5            [11] 4301 	push	hl
   676A CD E4 3E      [17] 4302 	call	_cpct_drawStringM0
   676D 21 06 00      [10] 4303 	ld	hl,#6
   6770 39            [11] 4304 	add	hl,sp
   6771 F9            [ 6] 4305 	ld	sp,hl
                           4306 ;src/main.c:958: cpct_drawStringM0("YOUR DOOR THEN", cpct_getScreenPtr(CPCT_VMEM_START, 12, 50), 6, 0);
   6772 21 0C 32      [10] 4307 	ld	hl,#0x320C
   6775 E5            [11] 4308 	push	hl
   6776 21 00 C0      [10] 4309 	ld	hl,#0xC000
   6779 E5            [11] 4310 	push	hl
   677A CD 0A 43      [17] 4311 	call	_cpct_getScreenPtr
   677D 4D            [ 4] 4312 	ld	c,l
   677E 44            [ 4] 4313 	ld	b,h
   677F 21 06 00      [10] 4314 	ld	hl,#0x0006
   6782 E5            [11] 4315 	push	hl
   6783 C5            [11] 4316 	push	bc
   6784 21 4B 6A      [10] 4317 	ld	hl,#___str_13
   6787 E5            [11] 4318 	push	hl
   6788 CD E4 3E      [17] 4319 	call	_cpct_drawStringM0
   678B 21 06 00      [10] 4320 	ld	hl,#6
   678E 39            [11] 4321 	add	hl,sp
   678F F9            [ 6] 4322 	ld	sp,hl
                           4323 ;src/main.c:959: cpct_drawStringM0("ESCAPE THROUGH IT", cpct_getScreenPtr(CPCT_VMEM_START, 12, 60), 6, 0);
   6790 21 0C 3C      [10] 4324 	ld	hl,#0x3C0C
   6793 E5            [11] 4325 	push	hl
   6794 21 00 C0      [10] 4326 	ld	hl,#0xC000
   6797 E5            [11] 4327 	push	hl
   6798 CD 0A 43      [17] 4328 	call	_cpct_getScreenPtr
   679B 4D            [ 4] 4329 	ld	c,l
   679C 44            [ 4] 4330 	ld	b,h
   679D 21 06 00      [10] 4331 	ld	hl,#0x0006
   67A0 E5            [11] 4332 	push	hl
   67A1 C5            [11] 4333 	push	bc
   67A2 21 5A 6A      [10] 4334 	ld	hl,#___str_14
   67A5 E5            [11] 4335 	push	hl
   67A6 CD E4 3E      [17] 4336 	call	_cpct_drawStringM0
   67A9 21 06 00      [10] 4337 	ld	hl,#6
   67AC 39            [11] 4338 	add	hl,sp
   67AD F9            [ 6] 4339 	ld	sp,hl
                           4340 ;src/main.c:961: cpct_drawStringM0("KILL YOUR ENEMY", cpct_getScreenPtr(CPCT_VMEM_START, 12, 80), 6, 0);
   67AE 21 0C 50      [10] 4341 	ld	hl,#0x500C
   67B1 E5            [11] 4342 	push	hl
   67B2 21 00 C0      [10] 4343 	ld	hl,#0xC000
   67B5 E5            [11] 4344 	push	hl
   67B6 CD 0A 43      [17] 4345 	call	_cpct_getScreenPtr
   67B9 4D            [ 4] 4346 	ld	c,l
   67BA 44            [ 4] 4347 	ld	b,h
   67BB 21 06 00      [10] 4348 	ld	hl,#0x0006
   67BE E5            [11] 4349 	push	hl
   67BF C5            [11] 4350 	push	bc
   67C0 21 6C 6A      [10] 4351 	ld	hl,#___str_15
   67C3 E5            [11] 4352 	push	hl
   67C4 CD E4 3E      [17] 4353 	call	_cpct_drawStringM0
   67C7 21 06 00      [10] 4354 	ld	hl,#6
   67CA 39            [11] 4355 	add	hl,sp
   67CB F9            [ 6] 4356 	ld	sp,hl
                           4357 ;src/main.c:962: cpct_drawStringM0("TO SCORE A POINT", cpct_getScreenPtr(CPCT_VMEM_START, 12, 90), 6, 0);
   67CC 21 0C 5A      [10] 4358 	ld	hl,#0x5A0C
   67CF E5            [11] 4359 	push	hl
   67D0 21 00 C0      [10] 4360 	ld	hl,#0xC000
   67D3 E5            [11] 4361 	push	hl
   67D4 CD 0A 43      [17] 4362 	call	_cpct_getScreenPtr
   67D7 4D            [ 4] 4363 	ld	c,l
   67D8 44            [ 4] 4364 	ld	b,h
   67D9 21 06 00      [10] 4365 	ld	hl,#0x0006
   67DC E5            [11] 4366 	push	hl
   67DD C5            [11] 4367 	push	bc
   67DE 21 7C 6A      [10] 4368 	ld	hl,#___str_16
   67E1 E5            [11] 4369 	push	hl
   67E2 CD E4 3E      [17] 4370 	call	_cpct_drawStringM0
   67E5 21 06 00      [10] 4371 	ld	hl,#6
   67E8 39            [11] 4372 	add	hl,sp
   67E9 F9            [ 6] 4373 	ld	sp,hl
                           4374 ;src/main.c:964: cpct_drawStringM0("DON'T FORGET:", cpct_getScreenPtr(CPCT_VMEM_START, 9, 110), 15, 0);
   67EA 21 09 6E      [10] 4375 	ld	hl,#0x6E09
   67ED E5            [11] 4376 	push	hl
   67EE 21 00 C0      [10] 4377 	ld	hl,#0xC000
   67F1 E5            [11] 4378 	push	hl
   67F2 CD 0A 43      [17] 4379 	call	_cpct_getScreenPtr
   67F5 4D            [ 4] 4380 	ld	c,l
   67F6 44            [ 4] 4381 	ld	b,h
   67F7 21 0F 00      [10] 4382 	ld	hl,#0x000F
   67FA E5            [11] 4383 	push	hl
   67FB C5            [11] 4384 	push	bc
   67FC 21 8D 6A      [10] 4385 	ld	hl,#___str_17
   67FF E5            [11] 4386 	push	hl
   6800 CD E4 3E      [17] 4387 	call	_cpct_drawStringM0
   6803 21 06 00      [10] 4388 	ld	hl,#6
   6806 39            [11] 4389 	add	hl,sp
   6807 F9            [ 6] 4390 	ld	sp,hl
                           4391 ;src/main.c:966: cpct_drawStringM0("YOU CAN RELOAD", cpct_getScreenPtr(CPCT_VMEM_START, 12, 130), 6, 0);
   6808 21 0C 82      [10] 4392 	ld	hl,#0x820C
   680B E5            [11] 4393 	push	hl
   680C 21 00 C0      [10] 4394 	ld	hl,#0xC000
   680F E5            [11] 4395 	push	hl
   6810 CD 0A 43      [17] 4396 	call	_cpct_getScreenPtr
   6813 4D            [ 4] 4397 	ld	c,l
   6814 44            [ 4] 4398 	ld	b,h
   6815 21 06 00      [10] 4399 	ld	hl,#0x0006
   6818 E5            [11] 4400 	push	hl
   6819 C5            [11] 4401 	push	bc
   681A 21 9B 6A      [10] 4402 	ld	hl,#___str_18
   681D E5            [11] 4403 	push	hl
   681E CD E4 3E      [17] 4404 	call	_cpct_drawStringM0
   6821 21 06 00      [10] 4405 	ld	hl,#6
   6824 39            [11] 4406 	add	hl,sp
   6825 F9            [ 6] 4407 	ld	sp,hl
                           4408 ;src/main.c:967: cpct_drawStringM0("YOUR WEAPON BY", cpct_getScreenPtr(CPCT_VMEM_START, 12, 140), 6, 0);
   6826 21 0C 8C      [10] 4409 	ld	hl,#0x8C0C
   6829 E5            [11] 4410 	push	hl
   682A 21 00 C0      [10] 4411 	ld	hl,#0xC000
   682D E5            [11] 4412 	push	hl
   682E CD 0A 43      [17] 4413 	call	_cpct_getScreenPtr
   6831 4D            [ 4] 4414 	ld	c,l
   6832 44            [ 4] 4415 	ld	b,h
   6833 21 06 00      [10] 4416 	ld	hl,#0x0006
   6836 E5            [11] 4417 	push	hl
   6837 C5            [11] 4418 	push	bc
   6838 21 AA 6A      [10] 4419 	ld	hl,#___str_19
   683B E5            [11] 4420 	push	hl
   683C CD E4 3E      [17] 4421 	call	_cpct_drawStringM0
   683F 21 06 00      [10] 4422 	ld	hl,#6
   6842 39            [11] 4423 	add	hl,sp
   6843 F9            [ 6] 4424 	ld	sp,hl
                           4425 ;src/main.c:968: cpct_drawStringM0("WALKING CLOSE TO", cpct_getScreenPtr(CPCT_VMEM_START, 12, 150), 6, 0);
   6844 21 0C 96      [10] 4426 	ld	hl,#0x960C
   6847 E5            [11] 4427 	push	hl
   6848 21 00 C0      [10] 4428 	ld	hl,#0xC000
   684B E5            [11] 4429 	push	hl
   684C CD 0A 43      [17] 4430 	call	_cpct_getScreenPtr
   684F 4D            [ 4] 4431 	ld	c,l
   6850 44            [ 4] 4432 	ld	b,h
   6851 21 06 00      [10] 4433 	ld	hl,#0x0006
   6854 E5            [11] 4434 	push	hl
   6855 C5            [11] 4435 	push	bc
   6856 21 B9 6A      [10] 4436 	ld	hl,#___str_20
   6859 E5            [11] 4437 	push	hl
   685A CD E4 3E      [17] 4438 	call	_cpct_drawStringM0
   685D 21 06 00      [10] 4439 	ld	hl,#6
   6860 39            [11] 4440 	add	hl,sp
   6861 F9            [ 6] 4441 	ld	sp,hl
                           4442 ;src/main.c:969: cpct_drawStringM0("YOUR AMMO BOX", cpct_getScreenPtr(CPCT_VMEM_START, 12, 160), 6, 0);
   6862 21 0C A0      [10] 4443 	ld	hl,#0xA00C
   6865 E5            [11] 4444 	push	hl
   6866 21 00 C0      [10] 4445 	ld	hl,#0xC000
   6869 E5            [11] 4446 	push	hl
   686A CD 0A 43      [17] 4447 	call	_cpct_getScreenPtr
   686D 4D            [ 4] 4448 	ld	c,l
   686E 44            [ 4] 4449 	ld	b,h
   686F 21 06 00      [10] 4450 	ld	hl,#0x0006
   6872 E5            [11] 4451 	push	hl
   6873 C5            [11] 4452 	push	bc
   6874 21 CA 6A      [10] 4453 	ld	hl,#___str_21
   6877 E5            [11] 4454 	push	hl
   6878 CD E4 3E      [17] 4455 	call	_cpct_drawStringM0
   687B 21 06 00      [10] 4456 	ld	hl,#6
   687E 39            [11] 4457 	add	hl,sp
   687F F9            [ 6] 4458 	ld	sp,hl
                           4459 ;src/main.c:971: cpct_drawStringM0("PRESS ANY KEY", cpct_getScreenPtr(CPCT_VMEM_START, 14, 180), 10, 0);
   6880 21 0E B4      [10] 4460 	ld	hl,#0xB40E
   6883 E5            [11] 4461 	push	hl
   6884 21 00 C0      [10] 4462 	ld	hl,#0xC000
   6887 E5            [11] 4463 	push	hl
   6888 CD 0A 43      [17] 4464 	call	_cpct_getScreenPtr
   688B 4D            [ 4] 4465 	ld	c,l
   688C 44            [ 4] 4466 	ld	b,h
   688D 21 0A 00      [10] 4467 	ld	hl,#0x000A
   6890 E5            [11] 4468 	push	hl
   6891 C5            [11] 4469 	push	bc
   6892 21 D8 6A      [10] 4470 	ld	hl,#___str_22
   6895 E5            [11] 4471 	push	hl
   6896 CD E4 3E      [17] 4472 	call	_cpct_drawStringM0
   6899 21 06 00      [10] 4473 	ld	hl,#6
   689C 39            [11] 4474 	add	hl,sp
   689D F9            [ 6] 4475 	ld	sp,hl
                           4476 ;src/main.c:972: cpct_drawStringM0("TO START!", cpct_getScreenPtr(CPCT_VMEM_START, 22, 190), 10, 0);
   689E 21 16 BE      [10] 4477 	ld	hl,#0xBE16
   68A1 E5            [11] 4478 	push	hl
   68A2 21 00 C0      [10] 4479 	ld	hl,#0xC000
   68A5 E5            [11] 4480 	push	hl
   68A6 CD 0A 43      [17] 4481 	call	_cpct_getScreenPtr
   68A9 4D            [ 4] 4482 	ld	c,l
   68AA 44            [ 4] 4483 	ld	b,h
   68AB 21 0A 00      [10] 4484 	ld	hl,#0x000A
   68AE E5            [11] 4485 	push	hl
   68AF C5            [11] 4486 	push	bc
   68B0 21 E6 6A      [10] 4487 	ld	hl,#___str_23
   68B3 E5            [11] 4488 	push	hl
   68B4 CD E4 3E      [17] 4489 	call	_cpct_drawStringM0
   68B7 21 06 00      [10] 4490 	ld	hl,#6
   68BA 39            [11] 4491 	add	hl,sp
   68BB F9            [ 6] 4492 	ld	sp,hl
                           4493 ;src/main.c:974: cpct_drawTileAligned2x4_f(pre_tileset[16], cpct_getScreenPtr(CPCT_VMEM_START, 0, 40));
   68BC 21 00 28      [10] 4494 	ld	hl,#0x2800
   68BF E5            [11] 4495 	push	hl
   68C0 26 C0         [ 7] 4496 	ld	h, #0xC0
   68C2 E5            [11] 4497 	push	hl
   68C3 CD 0A 43      [17] 4498 	call	_cpct_getScreenPtr
   68C6 4D            [ 4] 4499 	ld	c,l
   68C7 44            [ 4] 4500 	ld	b,h
   68C8 2A 28 18      [16] 4501 	ld	hl, (#_pre_tileset + 32)
   68CB C5            [11] 4502 	push	bc
   68CC E5            [11] 4503 	push	hl
   68CD CD C3 42      [17] 4504 	call	_cpct_drawTileAligned2x4_f
                           4505 ;src/main.c:975: cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, 2, 40));
   68D0 21 02 28      [10] 4506 	ld	hl,#0x2802
   68D3 E5            [11] 4507 	push	hl
   68D4 21 00 C0      [10] 4508 	ld	hl,#0xC000
   68D7 E5            [11] 4509 	push	hl
   68D8 CD 0A 43      [17] 4510 	call	_cpct_getScreenPtr
   68DB 4D            [ 4] 4511 	ld	c,l
   68DC 44            [ 4] 4512 	ld	b,h
   68DD 2A 2A 18      [16] 4513 	ld	hl, (#_pre_tileset + 34)
   68E0 C5            [11] 4514 	push	bc
   68E1 E5            [11] 4515 	push	hl
   68E2 CD C3 42      [17] 4516 	call	_cpct_drawTileAligned2x4_f
                           4517 ;src/main.c:976: cpct_drawTileAligned2x4_f(pre_tileset[25], cpct_getScreenPtr(CPCT_VMEM_START, 4, 40));
   68E5 21 04 28      [10] 4518 	ld	hl,#0x2804
   68E8 E5            [11] 4519 	push	hl
   68E9 21 00 C0      [10] 4520 	ld	hl,#0xC000
   68EC E5            [11] 4521 	push	hl
   68ED CD 0A 43      [17] 4522 	call	_cpct_getScreenPtr
   68F0 4D            [ 4] 4523 	ld	c,l
   68F1 44            [ 4] 4524 	ld	b,h
   68F2 2A 3A 18      [16] 4525 	ld	hl, (#_pre_tileset + 50)
   68F5 C5            [11] 4526 	push	bc
   68F6 E5            [11] 4527 	push	hl
   68F7 CD C3 42      [17] 4528 	call	_cpct_drawTileAligned2x4_f
                           4529 ;src/main.c:978: cpct_drawTileAligned2x4_f(pre_tileset[32], cpct_getScreenPtr(CPCT_VMEM_START, 0, 50));
   68FA 21 00 32      [10] 4530 	ld	hl,#0x3200
   68FD E5            [11] 4531 	push	hl
   68FE 26 C0         [ 7] 4532 	ld	h, #0xC0
   6900 E5            [11] 4533 	push	hl
   6901 CD 0A 43      [17] 4534 	call	_cpct_getScreenPtr
   6904 4D            [ 4] 4535 	ld	c,l
   6905 44            [ 4] 4536 	ld	b,h
   6906 2A 48 18      [16] 4537 	ld	hl, (#_pre_tileset + 64)
   6909 C5            [11] 4538 	push	bc
   690A E5            [11] 4539 	push	hl
   690B CD C3 42      [17] 4540 	call	_cpct_drawTileAligned2x4_f
                           4541 ;src/main.c:979: cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, 2, 50));
   690E 21 02 32      [10] 4542 	ld	hl,#0x3202
   6911 E5            [11] 4543 	push	hl
   6912 21 00 C0      [10] 4544 	ld	hl,#0xC000
   6915 E5            [11] 4545 	push	hl
   6916 CD 0A 43      [17] 4546 	call	_cpct_getScreenPtr
   6919 4D            [ 4] 4547 	ld	c,l
   691A 44            [ 4] 4548 	ld	b,h
   691B 2A 3C 18      [16] 4549 	ld	hl, (#_pre_tileset + 52)
   691E C5            [11] 4550 	push	bc
   691F E5            [11] 4551 	push	hl
   6920 CD C3 42      [17] 4552 	call	_cpct_drawTileAligned2x4_f
                           4553 ;src/main.c:980: cpct_drawTileAligned2x4_f(pre_tileset[27], cpct_getScreenPtr(CPCT_VMEM_START, 4, 50));
   6923 21 04 32      [10] 4554 	ld	hl,#0x3204
   6926 E5            [11] 4555 	push	hl
   6927 21 00 C0      [10] 4556 	ld	hl,#0xC000
   692A E5            [11] 4557 	push	hl
   692B CD 0A 43      [17] 4558 	call	_cpct_getScreenPtr
   692E 4D            [ 4] 4559 	ld	c,l
   692F 44            [ 4] 4560 	ld	b,h
   6930 2A 3E 18      [16] 4561 	ld	hl, (#_pre_tileset + 54)
   6933 C5            [11] 4562 	push	bc
   6934 E5            [11] 4563 	push	hl
   6935 CD C3 42      [17] 4564 	call	_cpct_drawTileAligned2x4_f
                           4565 ;src/main.c:982: dibujarCaritaPersonaje(0, 0, 80);
   6938 21 00 50      [10] 4566 	ld	hl,#0x5000
   693B E5            [11] 4567 	push	hl
   693C AF            [ 4] 4568 	xor	a, a
   693D F5            [11] 4569 	push	af
   693E 33            [ 6] 4570 	inc	sp
   693F CD A2 64      [17] 4571 	call	_dibujarCaritaPersonaje
                           4572 ;src/main.c:983: dibujarCaritaPersonaje(1, 4, 80);
   6942 33            [ 6] 4573 	inc	sp
   6943 21 04 50      [10] 4574 	ld	hl,#0x5004
   6946 E3            [19] 4575 	ex	(sp),hl
   6947 3E 01         [ 7] 4576 	ld	a,#0x01
   6949 F5            [11] 4577 	push	af
   694A 33            [ 6] 4578 	inc	sp
   694B CD A2 64      [17] 4579 	call	_dibujarCaritaPersonaje
   694E F1            [10] 4580 	pop	af
   694F 33            [ 6] 4581 	inc	sp
                           4582 ;src/main.c:985: cpct_drawTileAligned2x4_f(pre_tileset[30], cpct_getScreenPtr(CPCT_VMEM_START, 0, 132));
   6950 21 00 84      [10] 4583 	ld	hl,#0x8400
   6953 E5            [11] 4584 	push	hl
   6954 26 C0         [ 7] 4585 	ld	h, #0xC0
   6956 E5            [11] 4586 	push	hl
   6957 CD 0A 43      [17] 4587 	call	_cpct_getScreenPtr
   695A 4D            [ 4] 4588 	ld	c,l
   695B 44            [ 4] 4589 	ld	b,h
   695C 2A 44 18      [16] 4590 	ld	hl, (#_pre_tileset + 60)
   695F C5            [11] 4591 	push	bc
   6960 E5            [11] 4592 	push	hl
   6961 CD C3 42      [17] 4593 	call	_cpct_drawTileAligned2x4_f
                           4594 ;src/main.c:986: cpct_drawTileAligned2x4_f(pre_tileset[31], cpct_getScreenPtr(CPCT_VMEM_START, 2, 132));
   6964 21 02 84      [10] 4595 	ld	hl,#0x8402
   6967 E5            [11] 4596 	push	hl
   6968 21 00 C0      [10] 4597 	ld	hl,#0xC000
   696B E5            [11] 4598 	push	hl
   696C CD 0A 43      [17] 4599 	call	_cpct_getScreenPtr
   696F 4D            [ 4] 4600 	ld	c,l
   6970 44            [ 4] 4601 	ld	b,h
   6971 2A 46 18      [16] 4602 	ld	hl, (#_pre_tileset + 62)
   6974 C5            [11] 4603 	push	bc
   6975 E5            [11] 4604 	push	hl
   6976 CD C3 42      [17] 4605 	call	_cpct_drawTileAligned2x4_f
                           4606 ;src/main.c:987: cpct_drawTileAligned2x4_f(pre_tileset[33], cpct_getScreenPtr(CPCT_VMEM_START, 4, 132));
   6979 21 04 84      [10] 4607 	ld	hl,#0x8404
   697C E5            [11] 4608 	push	hl
   697D 21 00 C0      [10] 4609 	ld	hl,#0xC000
   6980 E5            [11] 4610 	push	hl
   6981 CD 0A 43      [17] 4611 	call	_cpct_getScreenPtr
   6984 4D            [ 4] 4612 	ld	c,l
   6985 44            [ 4] 4613 	ld	b,h
   6986 2A 4A 18      [16] 4614 	ld	hl, (#_pre_tileset + 66)
   6989 C5            [11] 4615 	push	bc
   698A E5            [11] 4616 	push	hl
   698B CD C3 42      [17] 4617 	call	_cpct_drawTileAligned2x4_f
                           4618 ;src/main.c:988: cpct_drawTileAligned2x4_f(pre_tileset[35], cpct_getScreenPtr(CPCT_VMEM_START, 0, 136));
   698E 21 00 88      [10] 4619 	ld	hl,#0x8800
   6991 E5            [11] 4620 	push	hl
   6992 26 C0         [ 7] 4621 	ld	h, #0xC0
   6994 E5            [11] 4622 	push	hl
   6995 CD 0A 43      [17] 4623 	call	_cpct_getScreenPtr
   6998 4D            [ 4] 4624 	ld	c,l
   6999 44            [ 4] 4625 	ld	b,h
   699A 2A 4E 18      [16] 4626 	ld	hl, (#(_pre_tileset + 0x0046) + 0)
   699D C5            [11] 4627 	push	bc
   699E E5            [11] 4628 	push	hl
   699F CD C3 42      [17] 4629 	call	_cpct_drawTileAligned2x4_f
                           4630 ;src/main.c:989: cpct_drawTileAligned2x4_f(pre_tileset[35], cpct_getScreenPtr(CPCT_VMEM_START, 2, 136));
   69A2 21 02 88      [10] 4631 	ld	hl,#0x8802
   69A5 E5            [11] 4632 	push	hl
   69A6 21 00 C0      [10] 4633 	ld	hl,#0xC000
   69A9 E5            [11] 4634 	push	hl
   69AA CD 0A 43      [17] 4635 	call	_cpct_getScreenPtr
   69AD 4D            [ 4] 4636 	ld	c,l
   69AE 44            [ 4] 4637 	ld	b,h
   69AF 2A 4E 18      [16] 4638 	ld	hl, (#(_pre_tileset + 0x0046) + 0)
   69B2 C5            [11] 4639 	push	bc
   69B3 E5            [11] 4640 	push	hl
   69B4 CD C3 42      [17] 4641 	call	_cpct_drawTileAligned2x4_f
                           4642 ;src/main.c:990: cpct_drawTileAligned2x4_f(pre_tileset[35], cpct_getScreenPtr(CPCT_VMEM_START, 4, 136));
   69B7 21 04 88      [10] 4643 	ld	hl,#0x8804
   69BA E5            [11] 4644 	push	hl
   69BB 21 00 C0      [10] 4645 	ld	hl,#0xC000
   69BE E5            [11] 4646 	push	hl
   69BF CD 0A 43      [17] 4647 	call	_cpct_getScreenPtr
   69C2 4D            [ 4] 4648 	ld	c,l
   69C3 44            [ 4] 4649 	ld	b,h
   69C4 2A 4E 18      [16] 4650 	ld	hl, (#(_pre_tileset + 0x0046) + 0)
   69C7 C5            [11] 4651 	push	bc
   69C8 E5            [11] 4652 	push	hl
   69C9 CD C3 42      [17] 4653 	call	_cpct_drawTileAligned2x4_f
                           4654 ;src/main.c:991: cpct_drawTileAligned2x4_f(pre_tileset[20], cpct_getScreenPtr(CPCT_VMEM_START, 0, 140));
   69CC 21 00 8C      [10] 4655 	ld	hl,#0x8C00
   69CF E5            [11] 4656 	push	hl
   69D0 26 C0         [ 7] 4657 	ld	h, #0xC0
   69D2 E5            [11] 4658 	push	hl
   69D3 CD 0A 43      [17] 4659 	call	_cpct_getScreenPtr
   69D6 4D            [ 4] 4660 	ld	c,l
   69D7 44            [ 4] 4661 	ld	b,h
   69D8 2A 30 18      [16] 4662 	ld	hl, (#_pre_tileset + 40)
   69DB C5            [11] 4663 	push	bc
   69DC E5            [11] 4664 	push	hl
   69DD CD C3 42      [17] 4665 	call	_cpct_drawTileAligned2x4_f
                           4666 ;src/main.c:992: cpct_drawTileAligned2x4_f(pre_tileset[22], cpct_getScreenPtr(CPCT_VMEM_START, 2, 140));
   69E0 21 02 8C      [10] 4667 	ld	hl,#0x8C02
   69E3 E5            [11] 4668 	push	hl
   69E4 21 00 C0      [10] 4669 	ld	hl,#0xC000
   69E7 E5            [11] 4670 	push	hl
   69E8 CD 0A 43      [17] 4671 	call	_cpct_getScreenPtr
   69EB 4D            [ 4] 4672 	ld	c,l
   69EC 44            [ 4] 4673 	ld	b,h
   69ED 2A 34 18      [16] 4674 	ld	hl, (#(_pre_tileset + 0x002c) + 0)
   69F0 C5            [11] 4675 	push	bc
   69F1 E5            [11] 4676 	push	hl
   69F2 CD C3 42      [17] 4677 	call	_cpct_drawTileAligned2x4_f
                           4678 ;src/main.c:993: cpct_drawTileAligned2x4_f(pre_tileset[22], cpct_getScreenPtr(CPCT_VMEM_START, 4, 140));
   69F5 21 04 8C      [10] 4679 	ld	hl,#0x8C04
   69F8 E5            [11] 4680 	push	hl
   69F9 21 00 C0      [10] 4681 	ld	hl,#0xC000
   69FC E5            [11] 4682 	push	hl
   69FD CD 0A 43      [17] 4683 	call	_cpct_getScreenPtr
   6A00 4D            [ 4] 4684 	ld	c,l
   6A01 44            [ 4] 4685 	ld	b,h
   6A02 2A 34 18      [16] 4686 	ld	hl, (#(_pre_tileset + 0x002c) + 0)
   6A05 C5            [11] 4687 	push	bc
   6A06 E5            [11] 4688 	push	hl
   6A07 CD C3 42      [17] 4689 	call	_cpct_drawTileAligned2x4_f
                           4690 ;src/main.c:995: timer = 0;  
   6A0A 11 00 00      [10] 4691 	ld	de,#0x0000
                           4692 ;src/main.c:997: while(timer2<2){
   6A0D 0E 00         [ 7] 4693 	ld	c,#0x00
   6A0F                    4694 00104$:
   6A0F 79            [ 4] 4695 	ld	a,c
   6A10 D6 02         [ 7] 4696 	sub	a, #0x02
   6A12 D0            [11] 4697 	ret	NC
                           4698 ;src/main.c:998: while(timer<30000){
   6A13                    4699 00101$:
   6A13 7B            [ 4] 4700 	ld	a,e
   6A14 D6 30         [ 7] 4701 	sub	a, #0x30
   6A16 7A            [ 4] 4702 	ld	a,d
   6A17 DE 75         [ 7] 4703 	sbc	a, #0x75
   6A19 30 03         [12] 4704 	jr	NC,00103$
                           4705 ;src/main.c:999: timer++;
   6A1B 13            [ 6] 4706 	inc	de
   6A1C 18 F5         [12] 4707 	jr	00101$
   6A1E                    4708 00103$:
                           4709 ;src/main.c:1001: timer2++;
   6A1E 0C            [ 4] 4710 	inc	c
                           4711 ;src/main.c:1002: timer = 0;
   6A1F 11 00 00      [10] 4712 	ld	de,#0x0000
   6A22 18 EB         [12] 4713 	jr	00104$
   6A24                    4714 ___str_10:
   6A24 31 20 56 53 20 31  4715 	.ascii "1 VS 1"
   6A2A 00                 4716 	.db 0x00
   6A2B                    4717 ___str_11:
   6A2B 54 57 4F 20 57 41  4718 	.ascii "TWO WAYS TO WIN:"
        59 53 20 54 4F 20
        57 49 4E 3A
   6A3B 00                 4719 	.db 0x00
   6A3C                    4720 ___str_12:
   6A3C 47 45 54 20 54 48  4721 	.ascii "GET THE KEY OF"
        45 20 4B 45 59 20
        4F 46
   6A4A 00                 4722 	.db 0x00
   6A4B                    4723 ___str_13:
   6A4B 59 4F 55 52 20 44  4724 	.ascii "YOUR DOOR THEN"
        4F 4F 52 20 54 48
        45 4E
   6A59 00                 4725 	.db 0x00
   6A5A                    4726 ___str_14:
   6A5A 45 53 43 41 50 45  4727 	.ascii "ESCAPE THROUGH IT"
        20 54 48 52 4F 55
        47 48 20 49 54
   6A6B 00                 4728 	.db 0x00
   6A6C                    4729 ___str_15:
   6A6C 4B 49 4C 4C 20 59  4730 	.ascii "KILL YOUR ENEMY"
        4F 55 52 20 45 4E
        45 4D 59
   6A7B 00                 4731 	.db 0x00
   6A7C                    4732 ___str_16:
   6A7C 54 4F 20 53 43 4F  4733 	.ascii "TO SCORE A POINT"
        52 45 20 41 20 50
        4F 49 4E 54
   6A8C 00                 4734 	.db 0x00
   6A8D                    4735 ___str_17:
   6A8D 44 4F 4E 27 54 20  4736 	.ascii "DON'T FORGET:"
        46 4F 52 47 45 54
        3A
   6A9A 00                 4737 	.db 0x00
   6A9B                    4738 ___str_18:
   6A9B 59 4F 55 20 43 41  4739 	.ascii "YOU CAN RELOAD"
        4E 20 52 45 4C 4F
        41 44
   6AA9 00                 4740 	.db 0x00
   6AAA                    4741 ___str_19:
   6AAA 59 4F 55 52 20 57  4742 	.ascii "YOUR WEAPON BY"
        45 41 50 4F 4E 20
        42 59
   6AB8 00                 4743 	.db 0x00
   6AB9                    4744 ___str_20:
   6AB9 57 41 4C 4B 49 4E  4745 	.ascii "WALKING CLOSE TO"
        47 20 43 4C 4F 53
        45 20 54 4F
   6AC9 00                 4746 	.db 0x00
   6ACA                    4747 ___str_21:
   6ACA 59 4F 55 52 20 41  4748 	.ascii "YOUR AMMO BOX"
        4D 4D 4F 20 42 4F
        58
   6AD7 00                 4749 	.db 0x00
   6AD8                    4750 ___str_22:
   6AD8 50 52 45 53 53 20  4751 	.ascii "PRESS ANY KEY"
        41 4E 59 20 4B 45
        59
   6AE5 00                 4752 	.db 0x00
   6AE6                    4753 ___str_23:
   6AE6 54 4F 20 53 54 41  4754 	.ascii "TO START!"
        52 54 21
   6AEF 00                 4755 	.db 0x00
                           4756 ;src/main.c:1007: void dibujarFondoMenu(){
                           4757 ;	---------------------------------
                           4758 ; Function dibujarFondoMenu
                           4759 ; ---------------------------------
   6AF0                    4760 _dibujarFondoMenu::
   6AF0 DD E5         [15] 4761 	push	ix
   6AF2 DD 21 00 00   [14] 4762 	ld	ix,#0
   6AF6 DD 39         [15] 4763 	add	ix,sp
   6AF8 21 F0 FF      [10] 4764 	ld	hl,#-16
   6AFB 39            [11] 4765 	add	hl,sp
   6AFC F9            [ 6] 4766 	ld	sp,hl
                           4767 ;src/main.c:1013: t=4; //Controla el patron de stripes
   6AFD DD 36 F0 04   [19] 4768 	ld	-16 (ix),#0x04
                           4769 ;src/main.c:1015: for(j=64;j<200;j=j+4){
   6B01 DD 36 F1 40   [19] 4770 	ld	-15 (ix),#0x40
                           4771 ;src/main.c:1016: for(i=0;i<80;i=i+2){
   6B05                    4772 00141$:
   6B05 3E BA         [ 7] 4773 	ld	a,#0xBA
   6B07 DD 96 F1      [19] 4774 	sub	a, -15 (ix)
   6B0A 3E 00         [ 7] 4775 	ld	a,#0x00
   6B0C 17            [ 4] 4776 	rla
   6B0D DD 77 FC      [19] 4777 	ld	-4 (ix),a
   6B10 DD 7E F1      [19] 4778 	ld	a,-15 (ix)
   6B13 D6 B9         [ 7] 4779 	sub	a, #0xB9
   6B15 3E 00         [ 7] 4780 	ld	a,#0x00
   6B17 17            [ 4] 4781 	rla
   6B18 DD 77 F6      [19] 4782 	ld	-10 (ix),a
   6B1B 3E 53         [ 7] 4783 	ld	a,#0x53
   6B1D DD 96 F1      [19] 4784 	sub	a, -15 (ix)
   6B20 3E 00         [ 7] 4785 	ld	a,#0x00
   6B22 17            [ 4] 4786 	rla
   6B23 DD 77 F5      [19] 4787 	ld	-11 (ix),a
   6B26 DD 7E F1      [19] 4788 	ld	a,-15 (ix)
   6B29 D6 54         [ 7] 4789 	sub	a, #0x54
   6B2B 20 04         [12] 4790 	jr	NZ,00188$
   6B2D 3E 01         [ 7] 4791 	ld	a,#0x01
   6B2F 18 01         [12] 4792 	jr	00189$
   6B31                    4793 00188$:
   6B31 AF            [ 4] 4794 	xor	a,a
   6B32                    4795 00189$:
   6B32 DD 77 F3      [19] 4796 	ld	-13 (ix),a
   6B35 DD 7E F1      [19] 4797 	ld	a,-15 (ix)
   6B38 D6 B8         [ 7] 4798 	sub	a, #0xB8
   6B3A 20 04         [12] 4799 	jr	NZ,00190$
   6B3C 3E 01         [ 7] 4800 	ld	a,#0x01
   6B3E 18 01         [12] 4801 	jr	00191$
   6B40                    4802 00190$:
   6B40 AF            [ 4] 4803 	xor	a,a
   6B41                    4804 00191$:
   6B41 DD 77 F9      [19] 4805 	ld	-7 (ix),a
   6B44 DD 7E F1      [19] 4806 	ld	a,-15 (ix)
   6B47 D6 B8         [ 7] 4807 	sub	a, #0xB8
   6B49 3E 00         [ 7] 4808 	ld	a,#0x00
   6B4B 17            [ 4] 4809 	rla
   6B4C DD 77 F4      [19] 4810 	ld	-12 (ix),a
   6B4F 3E 54         [ 7] 4811 	ld	a,#0x54
   6B51 DD 96 F1      [19] 4812 	sub	a, -15 (ix)
   6B54 3E 00         [ 7] 4813 	ld	a,#0x00
   6B56 17            [ 4] 4814 	rla
   6B57 DD 77 F8      [19] 4815 	ld	-8 (ix),a
   6B5A DD 7E F1      [19] 4816 	ld	a,-15 (ix)
   6B5D D6 52         [ 7] 4817 	sub	a, #0x52
   6B5F 3E 00         [ 7] 4818 	ld	a,#0x00
   6B61 17            [ 4] 4819 	rla
   6B62 DD 77 F7      [19] 4820 	ld	-9 (ix),a
   6B65 DD 36 F2 00   [19] 4821 	ld	-14 (ix),#0x00
   6B69                    4822 00124$:
                           4823 ;src/main.c:1019: else if((j>83 && j<185) && (i<8 || i>70))cpct_drawTileAligned2x4_f(pre_tileset[15], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
   6B69 DD 7E F2      [19] 4824 	ld	a,-14 (ix)
   6B6C D6 08         [ 7] 4825 	sub	a, #0x08
   6B6E 3E 00         [ 7] 4826 	ld	a,#0x00
   6B70 17            [ 4] 4827 	rla
   6B71 DD 77 FF      [19] 4828 	ld	-1 (ix),a
                           4829 ;src/main.c:1018: if(j<82 || j>186)cpct_drawTileAligned2x4_f(pre_tileset[15], cpct_getScreenPtr(CPCT_VMEM_START, i, j));  
   6B74 DD 7E F7      [19] 4830 	ld	a,-9 (ix)
   6B77 B7            [ 4] 4831 	or	a, a
   6B78 20 06         [12] 4832 	jr	NZ,00106$
   6B7A DD 7E FC      [19] 4833 	ld	a,-4 (ix)
   6B7D B7            [ 4] 4834 	or	a, a
   6B7E 28 1A         [12] 4835 	jr	Z,00107$
   6B80                    4836 00106$:
   6B80 DD 66 F1      [19] 4837 	ld	h,-15 (ix)
   6B83 DD 6E F2      [19] 4838 	ld	l,-14 (ix)
   6B86 E5            [11] 4839 	push	hl
   6B87 21 00 C0      [10] 4840 	ld	hl,#0xC000
   6B8A E5            [11] 4841 	push	hl
   6B8B CD 0A 43      [17] 4842 	call	_cpct_getScreenPtr
   6B8E 4D            [ 4] 4843 	ld	c,l
   6B8F 44            [ 4] 4844 	ld	b,h
   6B90 2A 26 18      [16] 4845 	ld	hl, (#(_pre_tileset + 0x001e) + 0)
   6B93 C5            [11] 4846 	push	bc
   6B94 E5            [11] 4847 	push	hl
   6B95 CD C3 42      [17] 4848 	call	_cpct_drawTileAligned2x4_f
   6B98 18 31         [12] 4849 	jr	00108$
   6B9A                    4850 00107$:
                           4851 ;src/main.c:1019: else if((j>83 && j<185) && (i<8 || i>70))cpct_drawTileAligned2x4_f(pre_tileset[15], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
   6B9A DD 7E F5      [19] 4852 	ld	a,-11 (ix)
   6B9D B7            [ 4] 4853 	or	a, a
   6B9E 28 2B         [12] 4854 	jr	Z,00108$
   6BA0 DD 7E F6      [19] 4855 	ld	a,-10 (ix)
   6BA3 B7            [ 4] 4856 	or	a, a
   6BA4 28 25         [12] 4857 	jr	Z,00108$
   6BA6 DD 7E FF      [19] 4858 	ld	a,-1 (ix)
   6BA9 B7            [ 4] 4859 	or	a, a
   6BAA 20 07         [12] 4860 	jr	NZ,00101$
   6BAC 3E 46         [ 7] 4861 	ld	a,#0x46
   6BAE DD 96 F2      [19] 4862 	sub	a, -14 (ix)
   6BB1 30 18         [12] 4863 	jr	NC,00108$
   6BB3                    4864 00101$:
   6BB3 DD 66 F1      [19] 4865 	ld	h,-15 (ix)
   6BB6 DD 6E F2      [19] 4866 	ld	l,-14 (ix)
   6BB9 E5            [11] 4867 	push	hl
   6BBA 21 00 C0      [10] 4868 	ld	hl,#0xC000
   6BBD E5            [11] 4869 	push	hl
   6BBE CD 0A 43      [17] 4870 	call	_cpct_getScreenPtr
   6BC1 4D            [ 4] 4871 	ld	c,l
   6BC2 44            [ 4] 4872 	ld	b,h
   6BC3 2A 26 18      [16] 4873 	ld	hl, (#(_pre_tileset + 0x001e) + 0)
   6BC6 C5            [11] 4874 	push	bc
   6BC7 E5            [11] 4875 	push	hl
   6BC8 CD C3 42      [17] 4876 	call	_cpct_drawTileAligned2x4_f
   6BCB                    4877 00108$:
                           4878 ;src/main.c:1020: if((j==84 || j==184) && (i>=8 && i<=71))cpct_drawTileAligned2x4_f(pre_tileset[t], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
   6BCB DD 6E F0      [19] 4879 	ld	l,-16 (ix)
   6BCE 26 00         [ 7] 4880 	ld	h,#0x00
   6BD0 29            [11] 4881 	add	hl, hl
   6BD1 4D            [ 4] 4882 	ld	c, l
   6BD2 44            [ 4] 4883 	ld	b, h
   6BD3 21 08 18      [10] 4884 	ld	hl,#_pre_tileset
   6BD6 09            [11] 4885 	add	hl,bc
   6BD7 DD 75 FD      [19] 4886 	ld	-3 (ix),l
   6BDA DD 74 FE      [19] 4887 	ld	-2 (ix),h
   6BDD DD 7E F3      [19] 4888 	ld	a,-13 (ix)
   6BE0 B7            [ 4] 4889 	or	a, a
   6BE1 20 06         [12] 4890 	jr	NZ,00114$
   6BE3 DD 7E F9      [19] 4891 	ld	a,-7 (ix)
   6BE6 B7            [ 4] 4892 	or	a, a
   6BE7 28 2B         [12] 4893 	jr	Z,00111$
   6BE9                    4894 00114$:
   6BE9 DD 7E FF      [19] 4895 	ld	a,-1 (ix)
   6BEC B7            [ 4] 4896 	or	a, a
   6BED 20 25         [12] 4897 	jr	NZ,00111$
   6BEF 3E 47         [ 7] 4898 	ld	a,#0x47
   6BF1 DD 96 F2      [19] 4899 	sub	a, -14 (ix)
   6BF4 38 1E         [12] 4900 	jr	C,00111$
   6BF6 DD 66 F1      [19] 4901 	ld	h,-15 (ix)
   6BF9 DD 6E F2      [19] 4902 	ld	l,-14 (ix)
   6BFC E5            [11] 4903 	push	hl
   6BFD 21 00 C0      [10] 4904 	ld	hl,#0xC000
   6C00 E5            [11] 4905 	push	hl
   6C01 CD 0A 43      [17] 4906 	call	_cpct_getScreenPtr
   6C04 4D            [ 4] 4907 	ld	c,l
   6C05 44            [ 4] 4908 	ld	b,h
   6C06 DD 6E FD      [19] 4909 	ld	l,-3 (ix)
   6C09 DD 66 FE      [19] 4910 	ld	h,-2 (ix)
   6C0C 5E            [ 7] 4911 	ld	e,(hl)
   6C0D 23            [ 6] 4912 	inc	hl
   6C0E 56            [ 7] 4913 	ld	d,(hl)
   6C0F C5            [11] 4914 	push	bc
   6C10 D5            [11] 4915 	push	de
   6C11 CD C3 42      [17] 4916 	call	_cpct_drawTileAligned2x4_f
   6C14                    4917 00111$:
                           4918 ;src/main.c:1021: if((j>84 && j<184) && (i==8 || i==70))cpct_drawTileAligned2x4_f(pre_tileset[t], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
   6C14 DD 7E F8      [19] 4919 	ld	a,-8 (ix)
   6C17 B7            [ 4] 4920 	or	a, a
   6C18 28 48         [12] 4921 	jr	Z,00116$
   6C1A DD 7E F4      [19] 4922 	ld	a,-12 (ix)
   6C1D B7            [ 4] 4923 	or	a, a
   6C1E 28 42         [12] 4924 	jr	Z,00116$
   6C20 DD 7E F2      [19] 4925 	ld	a,-14 (ix)
   6C23 D6 08         [ 7] 4926 	sub	a, #0x08
   6C25 28 07         [12] 4927 	jr	Z,00115$
   6C27 DD 7E F2      [19] 4928 	ld	a,-14 (ix)
   6C2A D6 46         [ 7] 4929 	sub	a, #0x46
   6C2C 20 34         [12] 4930 	jr	NZ,00116$
   6C2E                    4931 00115$:
   6C2E DD 66 F1      [19] 4932 	ld	h,-15 (ix)
   6C31 DD 6E F2      [19] 4933 	ld	l,-14 (ix)
   6C34 E5            [11] 4934 	push	hl
   6C35 21 00 C0      [10] 4935 	ld	hl,#0xC000
   6C38 E5            [11] 4936 	push	hl
   6C39 CD 0A 43      [17] 4937 	call	_cpct_getScreenPtr
   6C3C DD 74 FB      [19] 4938 	ld	-5 (ix),h
   6C3F DD 75 FA      [19] 4939 	ld	-6 (ix),l
   6C42 DD 6E FD      [19] 4940 	ld	l,-3 (ix)
   6C45 DD 66 FE      [19] 4941 	ld	h,-2 (ix)
   6C48 7E            [ 7] 4942 	ld	a,(hl)
   6C49 DD 77 FD      [19] 4943 	ld	-3 (ix),a
   6C4C 23            [ 6] 4944 	inc	hl
   6C4D 7E            [ 7] 4945 	ld	a,(hl)
   6C4E DD 77 FE      [19] 4946 	ld	-2 (ix),a
   6C51 DD 6E FA      [19] 4947 	ld	l,-6 (ix)
   6C54 DD 66 FB      [19] 4948 	ld	h,-5 (ix)
   6C57 E5            [11] 4949 	push	hl
   6C58 DD 6E FD      [19] 4950 	ld	l,-3 (ix)
   6C5B DD 66 FE      [19] 4951 	ld	h,-2 (ix)
   6C5E E5            [11] 4952 	push	hl
   6C5F CD C3 42      [17] 4953 	call	_cpct_drawTileAligned2x4_f
   6C62                    4954 00116$:
                           4955 ;src/main.c:1022: t++; if(t>6)t=4;
   6C62 DD 34 F0      [23] 4956 	inc	-16 (ix)
   6C65 3E 06         [ 7] 4957 	ld	a,#0x06
   6C67 DD 96 F0      [19] 4958 	sub	a, -16 (ix)
   6C6A 30 04         [12] 4959 	jr	NC,00125$
   6C6C DD 36 F0 04   [19] 4960 	ld	-16 (ix),#0x04
   6C70                    4961 00125$:
                           4962 ;src/main.c:1016: for(i=0;i<80;i=i+2){
   6C70 DD 34 F2      [23] 4963 	inc	-14 (ix)
   6C73 DD 34 F2      [23] 4964 	inc	-14 (ix)
   6C76 DD 7E F2      [19] 4965 	ld	a,-14 (ix)
   6C79 D6 50         [ 7] 4966 	sub	a, #0x50
   6C7B DA 69 6B      [10] 4967 	jp	C,00124$
                           4968 ;src/main.c:1015: for(j=64;j<200;j=j+4){
   6C7E DD 34 F1      [23] 4969 	inc	-15 (ix)
   6C81 DD 34 F1      [23] 4970 	inc	-15 (ix)
   6C84 DD 34 F1      [23] 4971 	inc	-15 (ix)
   6C87 DD 34 F1      [23] 4972 	inc	-15 (ix)
   6C8A DD 7E F1      [19] 4973 	ld	a,-15 (ix)
   6C8D D6 C8         [ 7] 4974 	sub	a, #0xC8
   6C8F DA 05 6B      [10] 4975 	jp	C,00141$
   6C92 DD F9         [10] 4976 	ld	sp, ix
   6C94 DD E1         [14] 4977 	pop	ix
   6C96 C9            [10] 4978 	ret
                           4979 ;src/main.c:1028: void dibujarYellowStripes(){
                           4980 ;	---------------------------------
                           4981 ; Function dibujarYellowStripes
                           4982 ; ---------------------------------
   6C97                    4983 _dibujarYellowStripes::
   6C97 DD E5         [15] 4984 	push	ix
   6C99 DD 21 00 00   [14] 4985 	ld	ix,#0
   6C9D DD 39         [15] 4986 	add	ix,sp
   6C9F 21 FA FF      [10] 4987 	ld	hl,#-6
   6CA2 39            [11] 4988 	add	hl,sp
   6CA3 F9            [ 6] 4989 	ld	sp,hl
                           4990 ;src/main.c:1032: u8 t=4;
   6CA4 DD 36 FA 04   [19] 4991 	ld	-6 (ix),#0x04
                           4992 ;src/main.c:1034: for(j=0;j<200;j=j+4){
   6CA8 0E 00         [ 7] 4993 	ld	c,#0x00
                           4994 ;src/main.c:1035: for(i=0;i<80;i=i+2){          
   6CAA                    4995 00129$:
   6CAA 3E 84         [ 7] 4996 	ld	a,#0x84
   6CAC 91            [ 4] 4997 	sub	a, c
   6CAD 3E 00         [ 7] 4998 	ld	a,#0x00
   6CAF 17            [ 4] 4999 	rla
   6CB0 5F            [ 4] 5000 	ld	e,a
   6CB1 79            [ 4] 5001 	ld	a,c
   6CB2 D6 44         [ 7] 5002 	sub	a, #0x44
   6CB4 20 04         [12] 5003 	jr	NZ,00159$
   6CB6 3E 01         [ 7] 5004 	ld	a,#0x01
   6CB8 18 01         [12] 5005 	jr	00160$
   6CBA                    5006 00159$:
   6CBA AF            [ 4] 5007 	xor	a,a
   6CBB                    5008 00160$:
   6CBB DD 77 FF      [19] 5009 	ld	-1 (ix),a
   6CBE 79            [ 4] 5010 	ld	a,c
   6CBF D6 80         [ 7] 5011 	sub	a, #0x80
   6CC1 20 04         [12] 5012 	jr	NZ,00161$
   6CC3 3E 01         [ 7] 5013 	ld	a,#0x01
   6CC5 18 01         [12] 5014 	jr	00162$
   6CC7                    5015 00161$:
   6CC7 AF            [ 4] 5016 	xor	a,a
   6CC8                    5017 00162$:
   6CC8 DD 77 FE      [19] 5018 	ld	-2 (ix),a
   6CCB 79            [ 4] 5019 	ld	a,c
   6CCC D6 48         [ 7] 5020 	sub	a, #0x48
   6CCE 20 04         [12] 5021 	jr	NZ,00163$
   6CD0 3E 01         [ 7] 5022 	ld	a,#0x01
   6CD2 18 01         [12] 5023 	jr	00164$
   6CD4                    5024 00163$:
   6CD4 AF            [ 4] 5025 	xor	a,a
   6CD5                    5026 00164$:
   6CD5 DD 77 FD      [19] 5027 	ld	-3 (ix),a
   6CD8 79            [ 4] 5028 	ld	a,c
   6CD9 D6 84         [ 7] 5029 	sub	a, #0x84
   6CDB 20 04         [12] 5030 	jr	NZ,00165$
   6CDD 3E 01         [ 7] 5031 	ld	a,#0x01
   6CDF 18 01         [12] 5032 	jr	00166$
   6CE1                    5033 00165$:
   6CE1 AF            [ 4] 5034 	xor	a,a
   6CE2                    5035 00166$:
   6CE2 DD 77 FC      [19] 5036 	ld	-4 (ix),a
   6CE5 79            [ 4] 5037 	ld	a,c
   6CE6 D6 44         [ 7] 5038 	sub	a, #0x44
   6CE8 3E 00         [ 7] 5039 	ld	a,#0x00
   6CEA 17            [ 4] 5040 	rla
   6CEB DD 77 FB      [19] 5041 	ld	-5 (ix),a
   6CEE 06 00         [ 7] 5042 	ld	b,#0x00
   6CF0                    5043 00119$:
                           5044 ;src/main.c:1036: if(j<68 || j>132)cpct_drawTileAligned2x4_f(pre_tileset[t], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
   6CF0 DD 7E FB      [19] 5045 	ld	a,-5 (ix)
   6CF3 B7            [ 4] 5046 	or	a,a
   6CF4 20 03         [12] 5047 	jr	NZ,00109$
   6CF6 B3            [ 4] 5048 	or	a,e
   6CF7 28 32         [12] 5049 	jr	Z,00110$
   6CF9                    5050 00109$:
   6CF9 C5            [11] 5051 	push	bc
   6CFA D5            [11] 5052 	push	de
   6CFB 79            [ 4] 5053 	ld	a,c
   6CFC F5            [11] 5054 	push	af
   6CFD 33            [ 6] 5055 	inc	sp
   6CFE C5            [11] 5056 	push	bc
   6CFF 33            [ 6] 5057 	inc	sp
   6D00 21 00 C0      [10] 5058 	ld	hl,#0xC000
   6D03 E5            [11] 5059 	push	hl
   6D04 CD 0A 43      [17] 5060 	call	_cpct_getScreenPtr
   6D07 D1            [10] 5061 	pop	de
   6D08 C1            [10] 5062 	pop	bc
   6D09 E5            [11] 5063 	push	hl
   6D0A FD E1         [14] 5064 	pop	iy
   6D0C DD 6E FA      [19] 5065 	ld	l,-6 (ix)
   6D0F 26 00         [ 7] 5066 	ld	h,#0x00
   6D11 29            [11] 5067 	add	hl, hl
   6D12 3E 08         [ 7] 5068 	ld	a,#<(_pre_tileset)
   6D14 85            [ 4] 5069 	add	a, l
   6D15 6F            [ 4] 5070 	ld	l,a
   6D16 3E 18         [ 7] 5071 	ld	a,#>(_pre_tileset)
   6D18 8C            [ 4] 5072 	adc	a, h
   6D19 67            [ 4] 5073 	ld	h,a
   6D1A 56            [ 7] 5074 	ld	d,(hl)
   6D1B 23            [ 6] 5075 	inc	hl
   6D1C 66            [ 7] 5076 	ld	h,(hl)
   6D1D C5            [11] 5077 	push	bc
   6D1E D5            [11] 5078 	push	de
   6D1F FD E5         [15] 5079 	push	iy
   6D21 6A            [ 4] 5080 	ld	l, d
   6D22 E5            [11] 5081 	push	hl
   6D23 CD C3 42      [17] 5082 	call	_cpct_drawTileAligned2x4_f
   6D26 D1            [10] 5083 	pop	de
   6D27 C1            [10] 5084 	pop	bc
   6D28 C3 A7 6D      [10] 5085 	jp	00111$
   6D2B                    5086 00110$:
                           5087 ;src/main.c:1037: else if(j==68 || j==128)cpct_drawTileAligned2x4_f(pre_tileset[17], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
   6D2B DD 7E FF      [19] 5088 	ld	a,-1 (ix)
   6D2E B7            [ 4] 5089 	or	a, a
   6D2F 20 06         [12] 5090 	jr	NZ,00105$
   6D31 DD 7E FE      [19] 5091 	ld	a,-2 (ix)
   6D34 B7            [ 4] 5092 	or	a, a
   6D35 28 22         [12] 5093 	jr	Z,00106$
   6D37                    5094 00105$:
   6D37 C5            [11] 5095 	push	bc
   6D38 D5            [11] 5096 	push	de
   6D39 79            [ 4] 5097 	ld	a,c
   6D3A F5            [11] 5098 	push	af
   6D3B 33            [ 6] 5099 	inc	sp
   6D3C C5            [11] 5100 	push	bc
   6D3D 33            [ 6] 5101 	inc	sp
   6D3E 21 00 C0      [10] 5102 	ld	hl,#0xC000
   6D41 E5            [11] 5103 	push	hl
   6D42 CD 0A 43      [17] 5104 	call	_cpct_getScreenPtr
   6D45 D1            [10] 5105 	pop	de
   6D46 C1            [10] 5106 	pop	bc
   6D47 E5            [11] 5107 	push	hl
   6D48 FD E1         [14] 5108 	pop	iy
   6D4A 2A 2A 18      [16] 5109 	ld	hl, (#_pre_tileset + 34)
   6D4D C5            [11] 5110 	push	bc
   6D4E D5            [11] 5111 	push	de
   6D4F FD E5         [15] 5112 	push	iy
   6D51 E5            [11] 5113 	push	hl
   6D52 CD C3 42      [17] 5114 	call	_cpct_drawTileAligned2x4_f
   6D55 D1            [10] 5115 	pop	de
   6D56 C1            [10] 5116 	pop	bc
   6D57 18 4E         [12] 5117 	jr	00111$
   6D59                    5118 00106$:
                           5119 ;src/main.c:1038: else if(j==72 || j==132)cpct_drawTileAligned2x4_f(pre_tileset[26], cpct_getScreenPtr(CPCT_VMEM_START, i, j));
   6D59 DD 7E FD      [19] 5120 	ld	a,-3 (ix)
   6D5C B7            [ 4] 5121 	or	a, a
   6D5D 20 06         [12] 5122 	jr	NZ,00101$
   6D5F DD 7E FC      [19] 5123 	ld	a,-4 (ix)
   6D62 B7            [ 4] 5124 	or	a, a
   6D63 28 22         [12] 5125 	jr	Z,00102$
   6D65                    5126 00101$:
   6D65 C5            [11] 5127 	push	bc
   6D66 D5            [11] 5128 	push	de
   6D67 79            [ 4] 5129 	ld	a,c
   6D68 F5            [11] 5130 	push	af
   6D69 33            [ 6] 5131 	inc	sp
   6D6A C5            [11] 5132 	push	bc
   6D6B 33            [ 6] 5133 	inc	sp
   6D6C 21 00 C0      [10] 5134 	ld	hl,#0xC000
   6D6F E5            [11] 5135 	push	hl
   6D70 CD 0A 43      [17] 5136 	call	_cpct_getScreenPtr
   6D73 D1            [10] 5137 	pop	de
   6D74 C1            [10] 5138 	pop	bc
   6D75 E5            [11] 5139 	push	hl
   6D76 FD E1         [14] 5140 	pop	iy
   6D78 2A 3C 18      [16] 5141 	ld	hl, (#_pre_tileset + 52)
   6D7B C5            [11] 5142 	push	bc
   6D7C D5            [11] 5143 	push	de
   6D7D FD E5         [15] 5144 	push	iy
   6D7F E5            [11] 5145 	push	hl
   6D80 CD C3 42      [17] 5146 	call	_cpct_drawTileAligned2x4_f
   6D83 D1            [10] 5147 	pop	de
   6D84 C1            [10] 5148 	pop	bc
   6D85 18 20         [12] 5149 	jr	00111$
   6D87                    5150 00102$:
                           5151 ;src/main.c:1039: else cpct_drawTileAligned2x4_f(pre_tileset[23], cpct_getScreenPtr(CPCT_VMEM_START, i, j));    
   6D87 C5            [11] 5152 	push	bc
   6D88 D5            [11] 5153 	push	de
   6D89 79            [ 4] 5154 	ld	a,c
   6D8A F5            [11] 5155 	push	af
   6D8B 33            [ 6] 5156 	inc	sp
   6D8C C5            [11] 5157 	push	bc
   6D8D 33            [ 6] 5158 	inc	sp
   6D8E 21 00 C0      [10] 5159 	ld	hl,#0xC000
   6D91 E5            [11] 5160 	push	hl
   6D92 CD 0A 43      [17] 5161 	call	_cpct_getScreenPtr
   6D95 D1            [10] 5162 	pop	de
   6D96 C1            [10] 5163 	pop	bc
   6D97 E5            [11] 5164 	push	hl
   6D98 FD E1         [14] 5165 	pop	iy
   6D9A 2A 36 18      [16] 5166 	ld	hl, (#_pre_tileset + 46)
   6D9D C5            [11] 5167 	push	bc
   6D9E D5            [11] 5168 	push	de
   6D9F FD E5         [15] 5169 	push	iy
   6DA1 E5            [11] 5170 	push	hl
   6DA2 CD C3 42      [17] 5171 	call	_cpct_drawTileAligned2x4_f
   6DA5 D1            [10] 5172 	pop	de
   6DA6 C1            [10] 5173 	pop	bc
   6DA7                    5174 00111$:
                           5175 ;src/main.c:1040: t++;if(t > 6)t = 4;
   6DA7 DD 34 FA      [23] 5176 	inc	-6 (ix)
   6DAA 3E 06         [ 7] 5177 	ld	a,#0x06
   6DAC DD 96 FA      [19] 5178 	sub	a, -6 (ix)
   6DAF 30 04         [12] 5179 	jr	NC,00120$
   6DB1 DD 36 FA 04   [19] 5180 	ld	-6 (ix),#0x04
   6DB5                    5181 00120$:
                           5182 ;src/main.c:1035: for(i=0;i<80;i=i+2){          
   6DB5 04            [ 4] 5183 	inc	b
   6DB6 04            [ 4] 5184 	inc	b
   6DB7 78            [ 4] 5185 	ld	a,b
   6DB8 D6 50         [ 7] 5186 	sub	a, #0x50
   6DBA DA F0 6C      [10] 5187 	jp	C,00119$
                           5188 ;src/main.c:1042: t-2; if(t > 6)t = 4;
   6DBD 3E 06         [ 7] 5189 	ld	a,#0x06
   6DBF DD 96 FA      [19] 5190 	sub	a, -6 (ix)
   6DC2 30 04         [12] 5191 	jr	NC,00122$
   6DC4 DD 36 FA 04   [19] 5192 	ld	-6 (ix),#0x04
   6DC8                    5193 00122$:
                           5194 ;src/main.c:1034: for(j=0;j<200;j=j+4){
   6DC8 0C            [ 4] 5195 	inc	c
   6DC9 0C            [ 4] 5196 	inc	c
   6DCA 0C            [ 4] 5197 	inc	c
   6DCB 0C            [ 4] 5198 	inc	c
   6DCC 79            [ 4] 5199 	ld	a,c
   6DCD D6 C8         [ 7] 5200 	sub	a, #0xC8
   6DCF DA AA 6C      [10] 5201 	jp	C,00129$
   6DD2 DD F9         [10] 5202 	ld	sp, ix
   6DD4 DD E1         [14] 5203 	pop	ix
   6DD6 C9            [10] 5204 	ret
                           5205 ;src/main.c:1046: void dibujarGetPsyched(){
                           5206 ;	---------------------------------
                           5207 ; Function dibujarGetPsyched
                           5208 ; ---------------------------------
   6DD7                    5209 _dibujarGetPsyched::
   6DD7 DD E5         [15] 5210 	push	ix
   6DD9 DD 21 00 00   [14] 5211 	ld	ix,#0
   6DDD DD 39         [15] 5212 	add	ix,sp
   6DDF F5            [11] 5213 	push	af
   6DE0 F5            [11] 5214 	push	af
                           5215 ;src/main.c:1051: dibujarYellowStripes();
   6DE1 CD 97 6C      [17] 5216 	call	_dibujarYellowStripes
                           5217 ;src/main.c:1052: cpct_drawStringM0("Round", cpct_getScreenPtr(CPCT_VMEM_START, 23, 85), 15, 1);
   6DE4 21 17 55      [10] 5218 	ld	hl,#0x5517
   6DE7 E5            [11] 5219 	push	hl
   6DE8 21 00 C0      [10] 5220 	ld	hl,#0xC000
   6DEB E5            [11] 5221 	push	hl
   6DEC CD 0A 43      [17] 5222 	call	_cpct_getScreenPtr
   6DEF 4D            [ 4] 5223 	ld	c,l
   6DF0 44            [ 4] 5224 	ld	b,h
   6DF1 21 0F 01      [10] 5225 	ld	hl,#0x010F
   6DF4 E5            [11] 5226 	push	hl
   6DF5 C5            [11] 5227 	push	bc
   6DF6 21 82 6E      [10] 5228 	ld	hl,#___str_24
   6DF9 E5            [11] 5229 	push	hl
   6DFA CD E4 3E      [17] 5230 	call	_cpct_drawStringM0
   6DFD 21 06 00      [10] 5231 	ld	hl,#6
   6E00 39            [11] 5232 	add	hl,sp
   6E01 F9            [ 6] 5233 	ld	sp,hl
                           5234 ;src/main.c:1053: cpct_drawStringM0("Get Psyched!", cpct_getScreenPtr(CPCT_VMEM_START, 16, 110), 10, 1);
   6E02 21 10 6E      [10] 5235 	ld	hl,#0x6E10
   6E05 E5            [11] 5236 	push	hl
   6E06 21 00 C0      [10] 5237 	ld	hl,#0xC000
   6E09 E5            [11] 5238 	push	hl
   6E0A CD 0A 43      [17] 5239 	call	_cpct_getScreenPtr
   6E0D 4D            [ 4] 5240 	ld	c,l
   6E0E 44            [ 4] 5241 	ld	b,h
   6E0F 21 0A 01      [10] 5242 	ld	hl,#0x010A
   6E12 E5            [11] 5243 	push	hl
   6E13 C5            [11] 5244 	push	bc
   6E14 21 88 6E      [10] 5245 	ld	hl,#___str_25
   6E17 E5            [11] 5246 	push	hl
   6E18 CD E4 3E      [17] 5247 	call	_cpct_drawStringM0
   6E1B 21 06 00      [10] 5248 	ld	hl,#6
   6E1E 39            [11] 5249 	add	hl,sp
   6E1F F9            [ 6] 5250 	ld	sp,hl
                           5251 ;src/main.c:1055: sprintf(str, "%d", ronda+1);
   6E20 21 B0 4F      [10] 5252 	ld	hl,#_ronda + 0
   6E23 5E            [ 7] 5253 	ld	e, (hl)
   6E24 16 00         [ 7] 5254 	ld	d,#0x00
   6E26 13            [ 6] 5255 	inc	de
   6E27 21 00 00      [10] 5256 	ld	hl,#0x0000
   6E2A 39            [11] 5257 	add	hl,sp
   6E2B E5            [11] 5258 	push	hl
   6E2C D5            [11] 5259 	push	de
   6E2D 11 95 6E      [10] 5260 	ld	de,#___str_26
   6E30 D5            [11] 5261 	push	de
   6E31 E5            [11] 5262 	push	hl
   6E32 CD 8E 41      [17] 5263 	call	_sprintf
   6E35 21 06 00      [10] 5264 	ld	hl,#6
   6E38 39            [11] 5265 	add	hl,sp
   6E39 F9            [ 6] 5266 	ld	sp,hl
   6E3A 21 32 55      [10] 5267 	ld	hl,#0x5532
   6E3D E5            [11] 5268 	push	hl
   6E3E 21 00 C0      [10] 5269 	ld	hl,#0xC000
   6E41 E5            [11] 5270 	push	hl
   6E42 CD 0A 43      [17] 5271 	call	_cpct_getScreenPtr
   6E45 EB            [ 4] 5272 	ex	de,hl
   6E46 C1            [10] 5273 	pop	bc
   6E47 21 0F 01      [10] 5274 	ld	hl,#0x010F
   6E4A E5            [11] 5275 	push	hl
   6E4B D5            [11] 5276 	push	de
   6E4C C5            [11] 5277 	push	bc
   6E4D CD E4 3E      [17] 5278 	call	_cpct_drawStringM0
   6E50 21 06 00      [10] 5279 	ld	hl,#6
   6E53 39            [11] 5280 	add	hl,sp
   6E54 F9            [ 6] 5281 	ld	sp,hl
                           5282 ;src/main.c:1058: timer = 0;  
   6E55 11 00 00      [10] 5283 	ld	de,#0x0000
                           5284 ;src/main.c:1060: while(timer2<3) {//<3
   6E58 0E 00         [ 7] 5285 	ld	c,#0x00
   6E5A                    5286 00104$:
   6E5A 79            [ 4] 5287 	ld	a,c
   6E5B D6 03         [ 7] 5288 	sub	a, #0x03
   6E5D 30 11         [12] 5289 	jr	NC,00106$
                           5290 ;src/main.c:1061: while(timer<30000){
   6E5F                    5291 00101$:
   6E5F 7B            [ 4] 5292 	ld	a,e
   6E60 D6 30         [ 7] 5293 	sub	a, #0x30
   6E62 7A            [ 4] 5294 	ld	a,d
   6E63 DE 75         [ 7] 5295 	sbc	a, #0x75
   6E65 30 03         [12] 5296 	jr	NC,00103$
                           5297 ;src/main.c:1062: timer++;
   6E67 13            [ 6] 5298 	inc	de
   6E68 18 F5         [12] 5299 	jr	00101$
   6E6A                    5300 00103$:
                           5301 ;src/main.c:1064: timer2++;
   6E6A 0C            [ 4] 5302 	inc	c
                           5303 ;src/main.c:1065: timer = 0;
   6E6B 11 00 00      [10] 5304 	ld	de,#0x0000
   6E6E 18 EA         [12] 5305 	jr	00104$
   6E70                    5306 00106$:
                           5307 ;src/main.c:1068: cpct_clearScreen(0);
   6E70 21 00 40      [10] 5308 	ld	hl,#0x4000
   6E73 E5            [11] 5309 	push	hl
   6E74 AF            [ 4] 5310 	xor	a, a
   6E75 F5            [11] 5311 	push	af
   6E76 33            [ 6] 5312 	inc	sp
   6E77 26 C0         [ 7] 5313 	ld	h, #0xC0
   6E79 E5            [11] 5314 	push	hl
   6E7A CD A5 42      [17] 5315 	call	_cpct_memset
   6E7D DD F9         [10] 5316 	ld	sp, ix
   6E7F DD E1         [14] 5317 	pop	ix
   6E81 C9            [10] 5318 	ret
   6E82                    5319 ___str_24:
   6E82 52 6F 75 6E 64     5320 	.ascii "Round"
   6E87 00                 5321 	.db 0x00
   6E88                    5322 ___str_25:
   6E88 47 65 74 20 50 73  5323 	.ascii "Get Psyched!"
        79 63 68 65 64 21
   6E94 00                 5324 	.db 0x00
   6E95                    5325 ___str_26:
   6E95 25 64              5326 	.ascii "%d"
   6E97 00                 5327 	.db 0x00
                           5328 ;src/main.c:1071: void dibujarVictoria(u8 personaje){
                           5329 ;	---------------------------------
                           5330 ; Function dibujarVictoria
                           5331 ; ---------------------------------
   6E98                    5332 _dibujarVictoria::
   6E98 DD E5         [15] 5333 	push	ix
   6E9A DD 21 00 00   [14] 5334 	ld	ix,#0
   6E9E DD 39         [15] 5335 	add	ix,sp
                           5336 ;src/main.c:1075: cpct_clearScreen(0);
   6EA0 21 00 40      [10] 5337 	ld	hl,#0x4000
   6EA3 E5            [11] 5338 	push	hl
   6EA4 AF            [ 4] 5339 	xor	a, a
   6EA5 F5            [11] 5340 	push	af
   6EA6 33            [ 6] 5341 	inc	sp
   6EA7 26 C0         [ 7] 5342 	ld	h, #0xC0
   6EA9 E5            [11] 5343 	push	hl
   6EAA CD A5 42      [17] 5344 	call	_cpct_memset
                           5345 ;src/main.c:1076: dibujarYellowStripes();
   6EAD CD 97 6C      [17] 5346 	call	_dibujarYellowStripes
                           5347 ;src/main.c:1077: switch(personaje){
   6EB0 DD 7E 04      [19] 5348 	ld	a,4 (ix)
   6EB3 B7            [ 4] 5349 	or	a, a
   6EB4 28 0A         [12] 5350 	jr	Z,00101$
   6EB6 DD 7E 04      [19] 5351 	ld	a,4 (ix)
   6EB9 3D            [ 4] 5352 	dec	a
   6EBA CA 3A 6F      [10] 5353 	jp	Z,00102$
   6EBD C3 B2 6F      [10] 5354 	jp	00103$
                           5355 ;src/main.c:1081: case 0:
   6EC0                    5356 00101$:
                           5357 ;src/main.c:1082: cpct_drawStringM0("   Jimmy wins!   ", cpct_getScreenPtr(CPCT_VMEM_START, 6, 40), 15, 0);
   6EC0 21 06 28      [10] 5358 	ld	hl,#0x2806
   6EC3 E5            [11] 5359 	push	hl
   6EC4 21 00 C0      [10] 5360 	ld	hl,#0xC000
   6EC7 E5            [11] 5361 	push	hl
   6EC8 CD 0A 43      [17] 5362 	call	_cpct_getScreenPtr
   6ECB 4D            [ 4] 5363 	ld	c,l
   6ECC 44            [ 4] 5364 	ld	b,h
   6ECD 21 0F 00      [10] 5365 	ld	hl,#0x000F
   6ED0 E5            [11] 5366 	push	hl
   6ED1 C5            [11] 5367 	push	bc
   6ED2 21 DD 6F      [10] 5368 	ld	hl,#___str_27
   6ED5 E5            [11] 5369 	push	hl
   6ED6 CD E4 3E      [17] 5370 	call	_cpct_drawStringM0
   6ED9 21 06 00      [10] 5371 	ld	hl,#6
   6EDC 39            [11] 5372 	add	hl,sp
   6EDD F9            [ 6] 5373 	ld	sp,hl
                           5374 ;src/main.c:1083: cpct_drawStringM0("FEAR NOT OBDULIA", cpct_getScreenPtr(CPCT_VMEM_START, 9, 80), 10, 1);
   6EDE 21 09 50      [10] 5375 	ld	hl,#0x5009
   6EE1 E5            [11] 5376 	push	hl
   6EE2 21 00 C0      [10] 5377 	ld	hl,#0xC000
   6EE5 E5            [11] 5378 	push	hl
   6EE6 CD 0A 43      [17] 5379 	call	_cpct_getScreenPtr
   6EE9 4D            [ 4] 5380 	ld	c,l
   6EEA 44            [ 4] 5381 	ld	b,h
   6EEB 21 0A 01      [10] 5382 	ld	hl,#0x010A
   6EEE E5            [11] 5383 	push	hl
   6EEF C5            [11] 5384 	push	bc
   6EF0 21 EF 6F      [10] 5385 	ld	hl,#___str_28
   6EF3 E5            [11] 5386 	push	hl
   6EF4 CD E4 3E      [17] 5387 	call	_cpct_drawStringM0
   6EF7 21 06 00      [10] 5388 	ld	hl,#6
   6EFA 39            [11] 5389 	add	hl,sp
   6EFB F9            [ 6] 5390 	ld	sp,hl
                           5391 ;src/main.c:1084: cpct_drawStringM0("IT WAS ONLY A", cpct_getScreenPtr(CPCT_VMEM_START, 14, 99), 10, 1);
   6EFC 21 0E 63      [10] 5392 	ld	hl,#0x630E
   6EFF E5            [11] 5393 	push	hl
   6F00 21 00 C0      [10] 5394 	ld	hl,#0xC000
   6F03 E5            [11] 5395 	push	hl
   6F04 CD 0A 43      [17] 5396 	call	_cpct_getScreenPtr
   6F07 4D            [ 4] 5397 	ld	c,l
   6F08 44            [ 4] 5398 	ld	b,h
   6F09 21 0A 01      [10] 5399 	ld	hl,#0x010A
   6F0C E5            [11] 5400 	push	hl
   6F0D C5            [11] 5401 	push	bc
   6F0E 21 00 70      [10] 5402 	ld	hl,#___str_29
   6F11 E5            [11] 5403 	push	hl
   6F12 CD E4 3E      [17] 5404 	call	_cpct_drawStringM0
   6F15 21 06 00      [10] 5405 	ld	hl,#6
   6F18 39            [11] 5406 	add	hl,sp
   6F19 F9            [ 6] 5407 	ld	sp,hl
                           5408 ;src/main.c:1085: cpct_drawStringM0("HORRIBLE NIGHTMARE", cpct_getScreenPtr(CPCT_VMEM_START, 4, 118), 10, 1);
   6F1A 21 04 76      [10] 5409 	ld	hl,#0x7604
   6F1D E5            [11] 5410 	push	hl
   6F1E 21 00 C0      [10] 5411 	ld	hl,#0xC000
   6F21 E5            [11] 5412 	push	hl
   6F22 CD 0A 43      [17] 5413 	call	_cpct_getScreenPtr
   6F25 4D            [ 4] 5414 	ld	c,l
   6F26 44            [ 4] 5415 	ld	b,h
   6F27 21 0A 01      [10] 5416 	ld	hl,#0x010A
   6F2A E5            [11] 5417 	push	hl
   6F2B C5            [11] 5418 	push	bc
   6F2C 21 0E 70      [10] 5419 	ld	hl,#___str_30
   6F2F E5            [11] 5420 	push	hl
   6F30 CD E4 3E      [17] 5421 	call	_cpct_drawStringM0
   6F33 21 06 00      [10] 5422 	ld	hl,#6
   6F36 39            [11] 5423 	add	hl,sp
   6F37 F9            [ 6] 5424 	ld	sp,hl
                           5425 ;src/main.c:1086: break;
   6F38 18 78         [12] 5426 	jr	00103$
                           5427 ;src/main.c:1088: case 1:
   6F3A                    5428 00102$:
                           5429 ;src/main.c:1089: cpct_drawStringM0("   Obdulia wins!   ", cpct_getScreenPtr(CPCT_VMEM_START, 2, 40), 15, 0);
   6F3A 21 02 28      [10] 5430 	ld	hl,#0x2802
   6F3D E5            [11] 5431 	push	hl
   6F3E 21 00 C0      [10] 5432 	ld	hl,#0xC000
   6F41 E5            [11] 5433 	push	hl
   6F42 CD 0A 43      [17] 5434 	call	_cpct_getScreenPtr
   6F45 4D            [ 4] 5435 	ld	c,l
   6F46 44            [ 4] 5436 	ld	b,h
   6F47 21 0F 00      [10] 5437 	ld	hl,#0x000F
   6F4A E5            [11] 5438 	push	hl
   6F4B C5            [11] 5439 	push	bc
   6F4C 21 21 70      [10] 5440 	ld	hl,#___str_31
   6F4F E5            [11] 5441 	push	hl
   6F50 CD E4 3E      [17] 5442 	call	_cpct_drawStringM0
   6F53 21 06 00      [10] 5443 	ld	hl,#6
   6F56 39            [11] 5444 	add	hl,sp
   6F57 F9            [ 6] 5445 	ld	sp,hl
                           5446 ;src/main.c:1090: cpct_drawStringM0("FEAR NOT JIMMY", cpct_getScreenPtr(CPCT_VMEM_START, 10, 80), 11, 1);
   6F58 21 0A 50      [10] 5447 	ld	hl,#0x500A
   6F5B E5            [11] 5448 	push	hl
   6F5C 21 00 C0      [10] 5449 	ld	hl,#0xC000
   6F5F E5            [11] 5450 	push	hl
   6F60 CD 0A 43      [17] 5451 	call	_cpct_getScreenPtr
   6F63 4D            [ 4] 5452 	ld	c,l
   6F64 44            [ 4] 5453 	ld	b,h
   6F65 21 0B 01      [10] 5454 	ld	hl,#0x010B
   6F68 E5            [11] 5455 	push	hl
   6F69 C5            [11] 5456 	push	bc
   6F6A 21 35 70      [10] 5457 	ld	hl,#___str_32
   6F6D E5            [11] 5458 	push	hl
   6F6E CD E4 3E      [17] 5459 	call	_cpct_drawStringM0
   6F71 21 06 00      [10] 5460 	ld	hl,#6
   6F74 39            [11] 5461 	add	hl,sp
   6F75 F9            [ 6] 5462 	ld	sp,hl
                           5463 ;src/main.c:1091: cpct_drawStringM0("IT WAS ONLY A", cpct_getScreenPtr(CPCT_VMEM_START, 14, 99), 11, 1);
   6F76 21 0E 63      [10] 5464 	ld	hl,#0x630E
   6F79 E5            [11] 5465 	push	hl
   6F7A 21 00 C0      [10] 5466 	ld	hl,#0xC000
   6F7D E5            [11] 5467 	push	hl
   6F7E CD 0A 43      [17] 5468 	call	_cpct_getScreenPtr
   6F81 4D            [ 4] 5469 	ld	c,l
   6F82 44            [ 4] 5470 	ld	b,h
   6F83 21 0B 01      [10] 5471 	ld	hl,#0x010B
   6F86 E5            [11] 5472 	push	hl
   6F87 C5            [11] 5473 	push	bc
   6F88 21 00 70      [10] 5474 	ld	hl,#___str_29
   6F8B E5            [11] 5475 	push	hl
   6F8C CD E4 3E      [17] 5476 	call	_cpct_drawStringM0
   6F8F 21 06 00      [10] 5477 	ld	hl,#6
   6F92 39            [11] 5478 	add	hl,sp
   6F93 F9            [ 6] 5479 	ld	sp,hl
                           5480 ;src/main.c:1092: cpct_drawStringM0("HORRIBLE NIGHTMARE", cpct_getScreenPtr(CPCT_VMEM_START, 4, 118), 11, 1);
   6F94 21 04 76      [10] 5481 	ld	hl,#0x7604
   6F97 E5            [11] 5482 	push	hl
   6F98 21 00 C0      [10] 5483 	ld	hl,#0xC000
   6F9B E5            [11] 5484 	push	hl
   6F9C CD 0A 43      [17] 5485 	call	_cpct_getScreenPtr
   6F9F 4D            [ 4] 5486 	ld	c,l
   6FA0 44            [ 4] 5487 	ld	b,h
   6FA1 21 0B 01      [10] 5488 	ld	hl,#0x010B
   6FA4 E5            [11] 5489 	push	hl
   6FA5 C5            [11] 5490 	push	bc
   6FA6 21 0E 70      [10] 5491 	ld	hl,#___str_30
   6FA9 E5            [11] 5492 	push	hl
   6FAA CD E4 3E      [17] 5493 	call	_cpct_drawStringM0
   6FAD 21 06 00      [10] 5494 	ld	hl,#6
   6FB0 39            [11] 5495 	add	hl,sp
   6FB1 F9            [ 6] 5496 	ld	sp,hl
                           5497 ;src/main.c:1094: }
   6FB2                    5498 00103$:
                           5499 ;src/main.c:1096: timer = 0;  
   6FB2 11 00 00      [10] 5500 	ld	de,#0x0000
                           5501 ;src/main.c:1098: while(timer2<20){
   6FB5 0E 00         [ 7] 5502 	ld	c,#0x00
   6FB7                    5503 00107$:
   6FB7 79            [ 4] 5504 	ld	a,c
   6FB8 D6 14         [ 7] 5505 	sub	a, #0x14
   6FBA 30 11         [12] 5506 	jr	NC,00109$
                           5507 ;src/main.c:1099: while(timer<30000){
   6FBC                    5508 00104$:
   6FBC 7B            [ 4] 5509 	ld	a,e
   6FBD D6 30         [ 7] 5510 	sub	a, #0x30
   6FBF 7A            [ 4] 5511 	ld	a,d
   6FC0 DE 75         [ 7] 5512 	sbc	a, #0x75
   6FC2 30 03         [12] 5513 	jr	NC,00106$
                           5514 ;src/main.c:1100: timer++;
   6FC4 13            [ 6] 5515 	inc	de
   6FC5 18 F5         [12] 5516 	jr	00104$
   6FC7                    5517 00106$:
                           5518 ;src/main.c:1102: timer2++;
   6FC7 0C            [ 4] 5519 	inc	c
                           5520 ;src/main.c:1103: timer = 0;
   6FC8 11 00 00      [10] 5521 	ld	de,#0x0000
   6FCB 18 EA         [12] 5522 	jr	00107$
   6FCD                    5523 00109$:
                           5524 ;src/main.c:1106: cpct_clearScreen(0);
   6FCD 21 00 40      [10] 5525 	ld	hl,#0x4000
   6FD0 E5            [11] 5526 	push	hl
   6FD1 AF            [ 4] 5527 	xor	a, a
   6FD2 F5            [11] 5528 	push	af
   6FD3 33            [ 6] 5529 	inc	sp
   6FD4 26 C0         [ 7] 5530 	ld	h, #0xC0
   6FD6 E5            [11] 5531 	push	hl
   6FD7 CD A5 42      [17] 5532 	call	_cpct_memset
   6FDA DD E1         [14] 5533 	pop	ix
   6FDC C9            [10] 5534 	ret
   6FDD                    5535 ___str_27:
   6FDD 20 20 20 4A 69 6D  5536 	.ascii "   Jimmy wins!   "
        6D 79 20 77 69 6E
        73 21 20 20 20
   6FEE 00                 5537 	.db 0x00
   6FEF                    5538 ___str_28:
   6FEF 46 45 41 52 20 4E  5539 	.ascii "FEAR NOT OBDULIA"
        4F 54 20 4F 42 44
        55 4C 49 41
   6FFF 00                 5540 	.db 0x00
   7000                    5541 ___str_29:
   7000 49 54 20 57 41 53  5542 	.ascii "IT WAS ONLY A"
        20 4F 4E 4C 59 20
        41
   700D 00                 5543 	.db 0x00
   700E                    5544 ___str_30:
   700E 48 4F 52 52 49 42  5545 	.ascii "HORRIBLE NIGHTMARE"
        4C 45 20 4E 49 47
        48 54 4D 41 52 45
   7020 00                 5546 	.db 0x00
   7021                    5547 ___str_31:
   7021 20 20 20 4F 62 64  5548 	.ascii "   Obdulia wins!   "
        75 6C 69 61 20 77
        69 6E 73 21 20 20
        20
   7034 00                 5549 	.db 0x00
   7035                    5550 ___str_32:
   7035 46 45 41 52 20 4E  5551 	.ascii "FEAR NOT JIMMY"
        4F 54 20 4A 49 4D
        4D 59
   7043 00                 5552 	.db 0x00
                           5553 ;src/main.c:1109: void dibujarTwitter(u8 x, u8 y){ 
                           5554 ;	---------------------------------
                           5555 ; Function dibujarTwitter
                           5556 ; ---------------------------------
   7044                    5557 _dibujarTwitter::
   7044 DD E5         [15] 5558 	push	ix
   7046 DD 21 00 00   [14] 5559 	ld	ix,#0
   704A DD 39         [15] 5560 	add	ix,sp
                           5561 ;src/main.c:1111: cpct_drawTileAligned2x4_f(pre_tileset[48], cpct_getScreenPtr(CPCT_VMEM_START, x, y));
   704C DD 66 05      [19] 5562 	ld	h,5 (ix)
   704F DD 6E 04      [19] 5563 	ld	l,4 (ix)
   7052 E5            [11] 5564 	push	hl
   7053 21 00 C0      [10] 5565 	ld	hl,#0xC000
   7056 E5            [11] 5566 	push	hl
   7057 CD 0A 43      [17] 5567 	call	_cpct_getScreenPtr
   705A 4D            [ 4] 5568 	ld	c,l
   705B 44            [ 4] 5569 	ld	b,h
   705C 2A 68 18      [16] 5570 	ld	hl, (#_pre_tileset + 96)
   705F C5            [11] 5571 	push	bc
   7060 E5            [11] 5572 	push	hl
   7061 CD C3 42      [17] 5573 	call	_cpct_drawTileAligned2x4_f
                           5574 ;src/main.c:1112: cpct_drawTileAligned2x4_f(pre_tileset[49], cpct_getScreenPtr(CPCT_VMEM_START, x+2, y));   
   7064 DD 4E 04      [19] 5575 	ld	c,4 (ix)
   7067 0C            [ 4] 5576 	inc	c
   7068 0C            [ 4] 5577 	inc	c
   7069 C5            [11] 5578 	push	bc
   706A DD 7E 05      [19] 5579 	ld	a,5 (ix)
   706D F5            [11] 5580 	push	af
   706E 33            [ 6] 5581 	inc	sp
   706F 79            [ 4] 5582 	ld	a,c
   7070 F5            [11] 5583 	push	af
   7071 33            [ 6] 5584 	inc	sp
   7072 21 00 C0      [10] 5585 	ld	hl,#0xC000
   7075 E5            [11] 5586 	push	hl
   7076 CD 0A 43      [17] 5587 	call	_cpct_getScreenPtr
   7079 5D            [ 4] 5588 	ld	e,l
   707A 54            [ 4] 5589 	ld	d,h
   707B C1            [10] 5590 	pop	bc
   707C 2A 6A 18      [16] 5591 	ld	hl, (#_pre_tileset + 98)
   707F C5            [11] 5592 	push	bc
   7080 D5            [11] 5593 	push	de
   7081 E5            [11] 5594 	push	hl
   7082 CD C3 42      [17] 5595 	call	_cpct_drawTileAligned2x4_f
   7085 C1            [10] 5596 	pop	bc
                           5597 ;src/main.c:1113: cpct_drawTileAligned2x4_f(pre_tileset[50], cpct_getScreenPtr(CPCT_VMEM_START, x, y+4));
   7086 DD 46 05      [19] 5598 	ld	b,5 (ix)
   7089 04            [ 4] 5599 	inc	b
   708A 04            [ 4] 5600 	inc	b
   708B 04            [ 4] 5601 	inc	b
   708C 04            [ 4] 5602 	inc	b
   708D C5            [11] 5603 	push	bc
   708E C5            [11] 5604 	push	bc
   708F 33            [ 6] 5605 	inc	sp
   7090 DD 7E 04      [19] 5606 	ld	a,4 (ix)
   7093 F5            [11] 5607 	push	af
   7094 33            [ 6] 5608 	inc	sp
   7095 21 00 C0      [10] 5609 	ld	hl,#0xC000
   7098 E5            [11] 5610 	push	hl
   7099 CD 0A 43      [17] 5611 	call	_cpct_getScreenPtr
   709C 5D            [ 4] 5612 	ld	e,l
   709D 54            [ 4] 5613 	ld	d,h
   709E C1            [10] 5614 	pop	bc
   709F 2A 6C 18      [16] 5615 	ld	hl, (#_pre_tileset + 100)
   70A2 C5            [11] 5616 	push	bc
   70A3 D5            [11] 5617 	push	de
   70A4 E5            [11] 5618 	push	hl
   70A5 CD C3 42      [17] 5619 	call	_cpct_drawTileAligned2x4_f
   70A8 21 00 C0      [10] 5620 	ld	hl,#0xC000
   70AB E5            [11] 5621 	push	hl
   70AC CD 0A 43      [17] 5622 	call	_cpct_getScreenPtr
   70AF 4D            [ 4] 5623 	ld	c,l
   70B0 44            [ 4] 5624 	ld	b,h
   70B1 2A 6E 18      [16] 5625 	ld	hl, (#_pre_tileset + 102)
   70B4 C5            [11] 5626 	push	bc
   70B5 E5            [11] 5627 	push	hl
   70B6 CD C3 42      [17] 5628 	call	_cpct_drawTileAligned2x4_f
   70B9 DD E1         [14] 5629 	pop	ix
   70BB C9            [10] 5630 	ret
                           5631 ;src/main.c:1117: void dibujarCreditos(){
                           5632 ;	---------------------------------
                           5633 ; Function dibujarCreditos
                           5634 ; ---------------------------------
   70BC                    5635 _dibujarCreditos::
                           5636 ;src/main.c:1120: cpct_clearScreen(0);
   70BC 21 00 40      [10] 5637 	ld	hl,#0x4000
   70BF E5            [11] 5638 	push	hl
   70C0 AF            [ 4] 5639 	xor	a, a
   70C1 F5            [11] 5640 	push	af
   70C2 33            [ 6] 5641 	inc	sp
   70C3 26 C0         [ 7] 5642 	ld	h, #0xC0
   70C5 E5            [11] 5643 	push	hl
   70C6 CD A5 42      [17] 5644 	call	_cpct_memset
                           5645 ;src/main.c:1122: cpct_drawStringM0("SubXplosion TEAM", cpct_getScreenPtr(CPCT_VMEM_START, 8, 0), 14, 0);
   70C9 21 08 00      [10] 5646 	ld	hl,#0x0008
   70CC E5            [11] 5647 	push	hl
   70CD 21 00 C0      [10] 5648 	ld	hl,#0xC000
   70D0 E5            [11] 5649 	push	hl
   70D1 CD 0A 43      [17] 5650 	call	_cpct_getScreenPtr
   70D4 4D            [ 4] 5651 	ld	c,l
   70D5 44            [ 4] 5652 	ld	b,h
   70D6 21 0E 00      [10] 5653 	ld	hl,#0x000E
   70D9 E5            [11] 5654 	push	hl
   70DA C5            [11] 5655 	push	bc
   70DB 21 B4 72      [10] 5656 	ld	hl,#___str_33
   70DE E5            [11] 5657 	push	hl
   70DF CD E4 3E      [17] 5658 	call	_cpct_drawStringM0
   70E2 21 06 00      [10] 5659 	ld	hl,#6
   70E5 39            [11] 5660 	add	hl,sp
   70E6 F9            [ 6] 5661 	ld	sp,hl
                           5662 ;src/main.c:1123: dibujarTwitter(12,12);
   70E7 21 0C 0C      [10] 5663 	ld	hl,#0x0C0C
   70EA E5            [11] 5664 	push	hl
   70EB CD 44 70      [17] 5665 	call	_dibujarTwitter
                           5666 ;src/main.c:1124: cpct_drawStringM0("@SubXplosion", cpct_getScreenPtr(CPCT_VMEM_START, 18, 12), 15, 0);
   70EE 21 12 0C      [10] 5667 	ld	hl, #0x0C12
   70F1 E3            [19] 5668 	ex	(sp),hl
   70F2 21 00 C0      [10] 5669 	ld	hl,#0xC000
   70F5 E5            [11] 5670 	push	hl
   70F6 CD 0A 43      [17] 5671 	call	_cpct_getScreenPtr
   70F9 4D            [ 4] 5672 	ld	c,l
   70FA 44            [ 4] 5673 	ld	b,h
   70FB 21 0F 00      [10] 5674 	ld	hl,#0x000F
   70FE E5            [11] 5675 	push	hl
   70FF C5            [11] 5676 	push	bc
   7100 21 C5 72      [10] 5677 	ld	hl,#___str_34
   7103 E5            [11] 5678 	push	hl
   7104 CD E4 3E      [17] 5679 	call	_cpct_drawStringM0
   7107 21 06 00      [10] 5680 	ld	hl,#6
   710A 39            [11] 5681 	add	hl,sp
   710B F9            [ 6] 5682 	ld	sp,hl
                           5683 ;src/main.c:1126: dibujarCaritaPersonaje(0,8, 40);
   710C 21 08 28      [10] 5684 	ld	hl,#0x2808
   710F E5            [11] 5685 	push	hl
   7110 AF            [ 4] 5686 	xor	a, a
   7111 F5            [11] 5687 	push	af
   7112 33            [ 6] 5688 	inc	sp
   7113 CD A2 64      [17] 5689 	call	_dibujarCaritaPersonaje
                           5690 ;src/main.c:1127: cpct_drawStringM0("Carlos", cpct_getScreenPtr(CPCT_VMEM_START, 15, 40), 6, 0);
   7116 33            [ 6] 5691 	inc	sp
   7117 21 0F 28      [10] 5692 	ld	hl,#0x280F
   711A E3            [19] 5693 	ex	(sp),hl
   711B 21 00 C0      [10] 5694 	ld	hl,#0xC000
   711E E5            [11] 5695 	push	hl
   711F CD 0A 43      [17] 5696 	call	_cpct_getScreenPtr
   7122 4D            [ 4] 5697 	ld	c,l
   7123 44            [ 4] 5698 	ld	b,h
   7124 21 06 00      [10] 5699 	ld	hl,#0x0006
   7127 E5            [11] 5700 	push	hl
   7128 C5            [11] 5701 	push	bc
   7129 21 D2 72      [10] 5702 	ld	hl,#___str_35
   712C E5            [11] 5703 	push	hl
   712D CD E4 3E      [17] 5704 	call	_cpct_drawStringM0
   7130 21 06 00      [10] 5705 	ld	hl,#6
   7133 39            [11] 5706 	add	hl,sp
   7134 F9            [ 6] 5707 	ld	sp,hl
                           5708 ;src/main.c:1128: cpct_drawStringM0("Aniorte Llanes", cpct_getScreenPtr(CPCT_VMEM_START, 15, 50), 6, 0);
   7135 21 0F 32      [10] 5709 	ld	hl,#0x320F
   7138 E5            [11] 5710 	push	hl
   7139 21 00 C0      [10] 5711 	ld	hl,#0xC000
   713C E5            [11] 5712 	push	hl
   713D CD 0A 43      [17] 5713 	call	_cpct_getScreenPtr
   7140 4D            [ 4] 5714 	ld	c,l
   7141 44            [ 4] 5715 	ld	b,h
   7142 21 06 00      [10] 5716 	ld	hl,#0x0006
   7145 E5            [11] 5717 	push	hl
   7146 C5            [11] 5718 	push	bc
   7147 21 D9 72      [10] 5719 	ld	hl,#___str_36
   714A E5            [11] 5720 	push	hl
   714B CD E4 3E      [17] 5721 	call	_cpct_drawStringM0
   714E 21 06 00      [10] 5722 	ld	hl,#6
   7151 39            [11] 5723 	add	hl,sp
   7152 F9            [ 6] 5724 	ld	sp,hl
                           5725 ;src/main.c:1130: dibujarCaritaPersonaje(0,8, 80);
   7153 21 08 50      [10] 5726 	ld	hl,#0x5008
   7156 E5            [11] 5727 	push	hl
   7157 AF            [ 4] 5728 	xor	a, a
   7158 F5            [11] 5729 	push	af
   7159 33            [ 6] 5730 	inc	sp
   715A CD A2 64      [17] 5731 	call	_dibujarCaritaPersonaje
                           5732 ;src/main.c:1131: cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 31, 77), 12, 0);
   715D 33            [ 6] 5733 	inc	sp
   715E 21 1F 4D      [10] 5734 	ld	hl,#0x4D1F
   7161 E3            [19] 5735 	ex	(sp),hl
   7162 21 00 C0      [10] 5736 	ld	hl,#0xC000
   7165 E5            [11] 5737 	push	hl
   7166 CD 0A 43      [17] 5738 	call	_cpct_getScreenPtr
   7169 4D            [ 4] 5739 	ld	c,l
   716A 44            [ 4] 5740 	ld	b,h
   716B 21 0C 00      [10] 5741 	ld	hl,#0x000C
   716E E5            [11] 5742 	push	hl
   716F C5            [11] 5743 	push	bc
   7170 21 E8 72      [10] 5744 	ld	hl,#___str_37
   7173 E5            [11] 5745 	push	hl
   7174 CD E4 3E      [17] 5746 	call	_cpct_drawStringM0
   7177 21 06 00      [10] 5747 	ld	hl,#6
   717A 39            [11] 5748 	add	hl,sp
   717B F9            [ 6] 5749 	ld	sp,hl
                           5750 ;src/main.c:1132: cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 31, 87), 12, 0);
   717C 21 1F 57      [10] 5751 	ld	hl,#0x571F
   717F E5            [11] 5752 	push	hl
   7180 21 00 C0      [10] 5753 	ld	hl,#0xC000
   7183 E5            [11] 5754 	push	hl
   7184 CD 0A 43      [17] 5755 	call	_cpct_getScreenPtr
   7187 4D            [ 4] 5756 	ld	c,l
   7188 44            [ 4] 5757 	ld	b,h
   7189 21 0C 00      [10] 5758 	ld	hl,#0x000C
   718C E5            [11] 5759 	push	hl
   718D C5            [11] 5760 	push	bc
   718E 21 E8 72      [10] 5761 	ld	hl,#___str_37
   7191 E5            [11] 5762 	push	hl
   7192 CD E4 3E      [17] 5763 	call	_cpct_drawStringM0
   7195 21 06 00      [10] 5764 	ld	hl,#6
   7198 39            [11] 5765 	add	hl,sp
   7199 F9            [ 6] 5766 	ld	sp,hl
                           5767 ;src/main.c:1133: cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 59, 87), 12, 0);
   719A 21 3B 57      [10] 5768 	ld	hl,#0x573B
   719D E5            [11] 5769 	push	hl
   719E 21 00 C0      [10] 5770 	ld	hl,#0xC000
   71A1 E5            [11] 5771 	push	hl
   71A2 CD 0A 43      [17] 5772 	call	_cpct_getScreenPtr
   71A5 4D            [ 4] 5773 	ld	c,l
   71A6 44            [ 4] 5774 	ld	b,h
   71A7 21 0C 00      [10] 5775 	ld	hl,#0x000C
   71AA E5            [11] 5776 	push	hl
   71AB C5            [11] 5777 	push	bc
   71AC 21 E8 72      [10] 5778 	ld	hl,#___str_37
   71AF E5            [11] 5779 	push	hl
   71B0 CD E4 3E      [17] 5780 	call	_cpct_drawStringM0
   71B3 21 06 00      [10] 5781 	ld	hl,#6
   71B6 39            [11] 5782 	add	hl,sp
   71B7 F9            [ 6] 5783 	ld	sp,hl
                           5784 ;src/main.c:1134: cpct_drawStringM0("Adrian", cpct_getScreenPtr(CPCT_VMEM_START, 15, 80), 12, 0);
   71B8 21 0F 50      [10] 5785 	ld	hl,#0x500F
   71BB E5            [11] 5786 	push	hl
   71BC 21 00 C0      [10] 5787 	ld	hl,#0xC000
   71BF E5            [11] 5788 	push	hl
   71C0 CD 0A 43      [17] 5789 	call	_cpct_getScreenPtr
   71C3 4D            [ 4] 5790 	ld	c,l
   71C4 44            [ 4] 5791 	ld	b,h
   71C5 21 0C 00      [10] 5792 	ld	hl,#0x000C
   71C8 E5            [11] 5793 	push	hl
   71C9 C5            [11] 5794 	push	bc
   71CA 21 EA 72      [10] 5795 	ld	hl,#___str_38
   71CD E5            [11] 5796 	push	hl
   71CE CD E4 3E      [17] 5797 	call	_cpct_drawStringM0
   71D1 21 06 00      [10] 5798 	ld	hl,#6
   71D4 39            [11] 5799 	add	hl,sp
   71D5 F9            [ 6] 5800 	ld	sp,hl
                           5801 ;src/main.c:1135: cpct_drawStringM0("Garcia Garcia", cpct_getScreenPtr(CPCT_VMEM_START, 15, 90), 12, 0);
   71D6 21 0F 5A      [10] 5802 	ld	hl,#0x5A0F
   71D9 E5            [11] 5803 	push	hl
   71DA 21 00 C0      [10] 5804 	ld	hl,#0xC000
   71DD E5            [11] 5805 	push	hl
   71DE CD 0A 43      [17] 5806 	call	_cpct_getScreenPtr
   71E1 4D            [ 4] 5807 	ld	c,l
   71E2 44            [ 4] 5808 	ld	b,h
   71E3 21 0C 00      [10] 5809 	ld	hl,#0x000C
   71E6 E5            [11] 5810 	push	hl
   71E7 C5            [11] 5811 	push	bc
   71E8 21 F1 72      [10] 5812 	ld	hl,#___str_39
   71EB E5            [11] 5813 	push	hl
   71EC CD E4 3E      [17] 5814 	call	_cpct_drawStringM0
   71EF 21 06 00      [10] 5815 	ld	hl,#6
   71F2 39            [11] 5816 	add	hl,sp
   71F3 F9            [ 6] 5817 	ld	sp,hl
                           5818 ;src/main.c:1137: dibujarCaritaPersonaje(0,8, 120);
   71F4 21 08 78      [10] 5819 	ld	hl,#0x7808
   71F7 E5            [11] 5820 	push	hl
   71F8 AF            [ 4] 5821 	xor	a, a
   71F9 F5            [11] 5822 	push	af
   71FA 33            [ 6] 5823 	inc	sp
   71FB CD A2 64      [17] 5824 	call	_dibujarCaritaPersonaje
                           5825 ;src/main.c:1138: cpct_drawStringM0("Andreu", cpct_getScreenPtr(CPCT_VMEM_START, 15, 120), 9, 0);
   71FE 33            [ 6] 5826 	inc	sp
   71FF 21 0F 78      [10] 5827 	ld	hl,#0x780F
   7202 E3            [19] 5828 	ex	(sp),hl
   7203 21 00 C0      [10] 5829 	ld	hl,#0xC000
   7206 E5            [11] 5830 	push	hl
   7207 CD 0A 43      [17] 5831 	call	_cpct_getScreenPtr
   720A 4D            [ 4] 5832 	ld	c,l
   720B 44            [ 4] 5833 	ld	b,h
   720C 21 09 00      [10] 5834 	ld	hl,#0x0009
   720F E5            [11] 5835 	push	hl
   7210 C5            [11] 5836 	push	bc
   7211 21 FF 72      [10] 5837 	ld	hl,#___str_40
   7214 E5            [11] 5838 	push	hl
   7215 CD E4 3E      [17] 5839 	call	_cpct_drawStringM0
   7218 21 06 00      [10] 5840 	ld	hl,#6
   721B 39            [11] 5841 	add	hl,sp
   721C F9            [ 6] 5842 	ld	sp,hl
                           5843 ;src/main.c:1139: cpct_drawStringM0("´", cpct_getScreenPtr(CPCT_VMEM_START, 27, 126), 9, 0);
   721D 21 1B 7E      [10] 5844 	ld	hl,#0x7E1B
   7220 E5            [11] 5845 	push	hl
   7221 21 00 C0      [10] 5846 	ld	hl,#0xC000
   7224 E5            [11] 5847 	push	hl
   7225 CD 0A 43      [17] 5848 	call	_cpct_getScreenPtr
   7228 4D            [ 4] 5849 	ld	c,l
   7229 44            [ 4] 5850 	ld	b,h
   722A 21 09 00      [10] 5851 	ld	hl,#0x0009
   722D E5            [11] 5852 	push	hl
   722E C5            [11] 5853 	push	bc
   722F 21 E8 72      [10] 5854 	ld	hl,#___str_37
   7232 E5            [11] 5855 	push	hl
   7233 CD E4 3E      [17] 5856 	call	_cpct_drawStringM0
   7236 21 06 00      [10] 5857 	ld	hl,#6
   7239 39            [11] 5858 	add	hl,sp
   723A F9            [ 6] 5859 	ld	sp,hl
                           5860 ;src/main.c:1140: cpct_drawStringM0("~", cpct_getScreenPtr(CPCT_VMEM_START, 31, 128), 9, 0);
   723B 21 1F 80      [10] 5861 	ld	hl,#0x801F
   723E E5            [11] 5862 	push	hl
   723F 21 00 C0      [10] 5863 	ld	hl,#0xC000
   7242 E5            [11] 5864 	push	hl
   7243 CD 0A 43      [17] 5865 	call	_cpct_getScreenPtr
   7246 4D            [ 4] 5866 	ld	c,l
   7247 44            [ 4] 5867 	ld	b,h
   7248 21 09 00      [10] 5868 	ld	hl,#0x0009
   724B E5            [11] 5869 	push	hl
   724C C5            [11] 5870 	push	bc
   724D 21 06 73      [10] 5871 	ld	hl,#___str_41
   7250 E5            [11] 5872 	push	hl
   7251 CD E4 3E      [17] 5873 	call	_cpct_drawStringM0
   7254 21 06 00      [10] 5874 	ld	hl,#6
   7257 39            [11] 5875 	add	hl,sp
   7258 F9            [ 6] 5876 	ld	sp,hl
                           5877 ;src/main.c:1141: cpct_drawStringM0("Ordonez Arboleda", cpct_getScreenPtr(CPCT_VMEM_START, 15, 130), 9, 0);
   7259 21 0F 82      [10] 5878 	ld	hl,#0x820F
   725C E5            [11] 5879 	push	hl
   725D 21 00 C0      [10] 5880 	ld	hl,#0xC000
   7260 E5            [11] 5881 	push	hl
   7261 CD 0A 43      [17] 5882 	call	_cpct_getScreenPtr
   7264 4D            [ 4] 5883 	ld	c,l
   7265 44            [ 4] 5884 	ld	b,h
   7266 21 09 00      [10] 5885 	ld	hl,#0x0009
   7269 E5            [11] 5886 	push	hl
   726A C5            [11] 5887 	push	bc
   726B 21 08 73      [10] 5888 	ld	hl,#___str_42
   726E E5            [11] 5889 	push	hl
   726F CD E4 3E      [17] 5890 	call	_cpct_drawStringM0
   7272 21 06 00      [10] 5891 	ld	hl,#6
   7275 39            [11] 5892 	add	hl,sp
   7276 F9            [ 6] 5893 	ld	sp,hl
                           5894 ;src/main.c:1143: cpct_drawStringM0("Subxplosionstudio", cpct_getScreenPtr(CPCT_VMEM_START, 10, 170), 15, 0);
   7277 21 0A AA      [10] 5895 	ld	hl,#0xAA0A
   727A E5            [11] 5896 	push	hl
   727B 21 00 C0      [10] 5897 	ld	hl,#0xC000
   727E E5            [11] 5898 	push	hl
   727F CD 0A 43      [17] 5899 	call	_cpct_getScreenPtr
   7282 4D            [ 4] 5900 	ld	c,l
   7283 44            [ 4] 5901 	ld	b,h
   7284 21 0F 00      [10] 5902 	ld	hl,#0x000F
   7287 E5            [11] 5903 	push	hl
   7288 C5            [11] 5904 	push	bc
   7289 21 19 73      [10] 5905 	ld	hl,#___str_43
   728C E5            [11] 5906 	push	hl
   728D CD E4 3E      [17] 5907 	call	_cpct_drawStringM0
   7290 21 06 00      [10] 5908 	ld	hl,#6
   7293 39            [11] 5909 	add	hl,sp
   7294 F9            [ 6] 5910 	ld	sp,hl
                           5911 ;src/main.c:1144: cpct_drawStringM0("@gmail.com", cpct_getScreenPtr(CPCT_VMEM_START, 22, 180), 15, 0);
   7295 21 16 B4      [10] 5912 	ld	hl,#0xB416
   7298 E5            [11] 5913 	push	hl
   7299 21 00 C0      [10] 5914 	ld	hl,#0xC000
   729C E5            [11] 5915 	push	hl
   729D CD 0A 43      [17] 5916 	call	_cpct_getScreenPtr
   72A0 4D            [ 4] 5917 	ld	c,l
   72A1 44            [ 4] 5918 	ld	b,h
   72A2 21 0F 00      [10] 5919 	ld	hl,#0x000F
   72A5 E5            [11] 5920 	push	hl
   72A6 C5            [11] 5921 	push	bc
   72A7 21 2B 73      [10] 5922 	ld	hl,#___str_44
   72AA E5            [11] 5923 	push	hl
   72AB CD E4 3E      [17] 5924 	call	_cpct_drawStringM0
   72AE 21 06 00      [10] 5925 	ld	hl,#6
   72B1 39            [11] 5926 	add	hl,sp
   72B2 F9            [ 6] 5927 	ld	sp,hl
   72B3 C9            [10] 5928 	ret
   72B4                    5929 ___str_33:
   72B4 53 75 62 58 70 6C  5930 	.ascii "SubXplosion TEAM"
        6F 73 69 6F 6E 20
        54 45 41 4D
   72C4 00                 5931 	.db 0x00
   72C5                    5932 ___str_34:
   72C5 40 53 75 62 58 70  5933 	.ascii "@SubXplosion"
        6C 6F 73 69 6F 6E
   72D1 00                 5934 	.db 0x00
   72D2                    5935 ___str_35:
   72D2 43 61 72 6C 6F 73  5936 	.ascii "Carlos"
   72D8 00                 5937 	.db 0x00
   72D9                    5938 ___str_36:
   72D9 41 6E 69 6F 72 74  5939 	.ascii "Aniorte Llanes"
        65 20 4C 6C 61 6E
        65 73
   72E7 00                 5940 	.db 0x00
   72E8                    5941 ___str_37:
   72E8 B4                 5942 	.db 0xB4
   72E9 00                 5943 	.db 0x00
   72EA                    5944 ___str_38:
   72EA 41 64 72 69 61 6E  5945 	.ascii "Adrian"
   72F0 00                 5946 	.db 0x00
   72F1                    5947 ___str_39:
   72F1 47 61 72 63 69 61  5948 	.ascii "Garcia Garcia"
        20 47 61 72 63 69
        61
   72FE 00                 5949 	.db 0x00
   72FF                    5950 ___str_40:
   72FF 41 6E 64 72 65 75  5951 	.ascii "Andreu"
   7305 00                 5952 	.db 0x00
   7306                    5953 ___str_41:
   7306 7E                 5954 	.ascii "~"
   7307 00                 5955 	.db 0x00
   7308                    5956 ___str_42:
   7308 4F 72 64 6F 6E 65  5957 	.ascii "Ordonez Arboleda"
        7A 20 41 72 62 6F
        6C 65 64 61
   7318 00                 5958 	.db 0x00
   7319                    5959 ___str_43:
   7319 53 75 62 78 70 6C  5960 	.ascii "Subxplosionstudio"
        6F 73 69 6F 6E 73
        74 75 64 69 6F
   732A 00                 5961 	.db 0x00
   732B                    5962 ___str_44:
   732B 40 67 6D 61 69 6C  5963 	.ascii "@gmail.com"
        2E 63 6F 6D
   7335 00                 5964 	.db 0x00
                           5965 ;src/main.c:1153: void dibujarConfiguracionControles(u8 modo){
                           5966 ;	---------------------------------
                           5967 ; Function dibujarConfiguracionControles
                           5968 ; ---------------------------------
   7336                    5969 _dibujarConfiguracionControles::
   7336 DD E5         [15] 5970 	push	ix
   7338 DD 21 00 00   [14] 5971 	ld	ix,#0
   733C DD 39         [15] 5972 	add	ix,sp
                           5973 ;src/main.c:1156: if(modo == 0){
   733E DD 7E 04      [19] 5974 	ld	a,4 (ix)
   7341 B7            [ 4] 5975 	or	a, a
   7342 20 47         [12] 5976 	jr	NZ,00102$
                           5977 ;src/main.c:1158: llenarVmem(10,68,92,176,24);
   7344 21 B0 18      [10] 5978 	ld	hl,#0x18B0
   7347 E5            [11] 5979 	push	hl
   7348 21 44 5C      [10] 5980 	ld	hl,#0x5C44
   734B E5            [11] 5981 	push	hl
   734C 3E 0A         [ 7] 5982 	ld	a,#0x0A
   734E F5            [11] 5983 	push	af
   734F 33            [ 6] 5984 	inc	sp
   7350 CD 53 64      [17] 5985 	call	_llenarVmem
   7353 F1            [10] 5986 	pop	af
                           5987 ;src/main.c:1159: cpct_drawStringM0("CONTROL", cpct_getScreenPtr(CPCT_VMEM_START, 26, 95), 15, 0);
   7354 33            [ 6] 5988 	inc	sp
   7355 21 1A 5F      [10] 5989 	ld	hl,#0x5F1A
   7358 E3            [19] 5990 	ex	(sp),hl
   7359 21 00 C0      [10] 5991 	ld	hl,#0xC000
   735C E5            [11] 5992 	push	hl
   735D CD 0A 43      [17] 5993 	call	_cpct_getScreenPtr
   7360 4D            [ 4] 5994 	ld	c,l
   7361 44            [ 4] 5995 	ld	b,h
   7362 21 0F 00      [10] 5996 	ld	hl,#0x000F
   7365 E5            [11] 5997 	push	hl
   7366 C5            [11] 5998 	push	bc
   7367 21 96 75      [10] 5999 	ld	hl,#___str_45
   736A E5            [11] 6000 	push	hl
   736B CD E4 3E      [17] 6001 	call	_cpct_drawStringM0
   736E 21 06 00      [10] 6002 	ld	hl,#6
   7371 39            [11] 6003 	add	hl,sp
   7372 F9            [ 6] 6004 	ld	sp,hl
                           6005 ;src/main.c:1161: dibujarCaritaPersonaje(0, 14,120);
   7373 21 0E 78      [10] 6006 	ld	hl,#0x780E
   7376 E5            [11] 6007 	push	hl
   7377 AF            [ 4] 6008 	xor	a, a
   7378 F5            [11] 6009 	push	af
   7379 33            [ 6] 6010 	inc	sp
   737A CD A2 64      [17] 6011 	call	_dibujarCaritaPersonaje
                           6012 ;src/main.c:1162: dibujarCaritaPersonaje(1, 14,152);
   737D 33            [ 6] 6013 	inc	sp
   737E 21 0E 98      [10] 6014 	ld	hl,#0x980E
   7381 E3            [19] 6015 	ex	(sp),hl
   7382 3E 01         [ 7] 6016 	ld	a,#0x01
   7384 F5            [11] 6017 	push	af
   7385 33            [ 6] 6018 	inc	sp
   7386 CD A2 64      [17] 6019 	call	_dibujarCaritaPersonaje
   7389 F1            [10] 6020 	pop	af
   738A 33            [ 6] 6021 	inc	sp
   738B                    6022 00102$:
                           6023 ;src/main.c:1167: llenarVmem(20,68,120,128,24);
   738B 21 80 18      [10] 6024 	ld	hl,#0x1880
   738E E5            [11] 6025 	push	hl
   738F 21 44 78      [10] 6026 	ld	hl,#0x7844
   7392 E5            [11] 6027 	push	hl
   7393 3E 14         [ 7] 6028 	ld	a,#0x14
   7395 F5            [11] 6029 	push	af
   7396 33            [ 6] 6030 	inc	sp
   7397 CD 53 64      [17] 6031 	call	_llenarVmem
   739A F1            [10] 6032 	pop	af
                           6033 ;src/main.c:1168: llenarVmem(20,68,152,160,24);
   739B 33            [ 6] 6034 	inc	sp
   739C 21 A0 18      [10] 6035 	ld	hl,#0x18A0
   739F E3            [19] 6036 	ex	(sp),hl
   73A0 21 44 98      [10] 6037 	ld	hl,#0x9844
   73A3 E5            [11] 6038 	push	hl
   73A4 3E 14         [ 7] 6039 	ld	a,#0x14
   73A6 F5            [11] 6040 	push	af
   73A7 33            [ 6] 6041 	inc	sp
   73A8 CD 53 64      [17] 6042 	call	_llenarVmem
   73AB F1            [10] 6043 	pop	af
   73AC F1            [10] 6044 	pop	af
   73AD 33            [ 6] 6045 	inc	sp
                           6046 ;src/main.c:1170: if(seleccionControles == 0){
   73AE FD 21 AC 4F   [14] 6047 	ld	iy,#_seleccionControles
   73B2 FD 7E 00      [19] 6048 	ld	a,0 (iy)
   73B5 B7            [ 4] 6049 	or	a, a
   73B6 C2 A9 74      [10] 6050 	jp	NZ,00120$
                           6051 ;src/main.c:1172: switch(prota.controles){ 
   73B9 21 6E 4F      [10] 6052 	ld	hl,#_prota+26
   73BC 5E            [ 7] 6053 	ld	e,(hl)
   73BD 3E 02         [ 7] 6054 	ld	a,#0x02
   73BF 93            [ 4] 6055 	sub	a, e
   73C0 38 6C         [12] 6056 	jr	C,00106$
   73C2 16 00         [ 7] 6057 	ld	d,#0x00
   73C4 21 CA 73      [10] 6058 	ld	hl,#00148$
   73C7 19            [11] 6059 	add	hl,de
   73C8 19            [11] 6060 	add	hl,de
                           6061 ;src/main.c:1173: case 0: cpct_drawStringM0("< WASD >", cpct_getScreenPtr(CPCT_VMEM_START, 28, 120), 15, 0);break;
   73C9 E9            [ 4] 6062 	jp	(hl)
   73CA                    6063 00148$:
   73CA 18 04         [12] 6064 	jr	00103$
   73CC 18 22         [12] 6065 	jr	00104$
   73CE 18 40         [12] 6066 	jr	00105$
   73D0                    6067 00103$:
   73D0 21 1C 78      [10] 6068 	ld	hl,#0x781C
   73D3 E5            [11] 6069 	push	hl
   73D4 21 00 C0      [10] 6070 	ld	hl,#0xC000
   73D7 E5            [11] 6071 	push	hl
   73D8 CD 0A 43      [17] 6072 	call	_cpct_getScreenPtr
   73DB 4D            [ 4] 6073 	ld	c,l
   73DC 44            [ 4] 6074 	ld	b,h
   73DD 21 0F 00      [10] 6075 	ld	hl,#0x000F
   73E0 E5            [11] 6076 	push	hl
   73E1 C5            [11] 6077 	push	bc
   73E2 21 9E 75      [10] 6078 	ld	hl,#___str_46
   73E5 E5            [11] 6079 	push	hl
   73E6 CD E4 3E      [17] 6080 	call	_cpct_drawStringM0
   73E9 21 06 00      [10] 6081 	ld	hl,#6
   73EC 39            [11] 6082 	add	hl,sp
   73ED F9            [ 6] 6083 	ld	sp,hl
   73EE 18 3E         [12] 6084 	jr	00106$
                           6085 ;src/main.c:1174: case 1: cpct_drawStringM0("< Keypad >", cpct_getScreenPtr(CPCT_VMEM_START, 24, 120), 15, 0);break;
   73F0                    6086 00104$:
   73F0 21 18 78      [10] 6087 	ld	hl,#0x7818
   73F3 E5            [11] 6088 	push	hl
   73F4 21 00 C0      [10] 6089 	ld	hl,#0xC000
   73F7 E5            [11] 6090 	push	hl
   73F8 CD 0A 43      [17] 6091 	call	_cpct_getScreenPtr
   73FB 4D            [ 4] 6092 	ld	c,l
   73FC 44            [ 4] 6093 	ld	b,h
   73FD 21 0F 00      [10] 6094 	ld	hl,#0x000F
   7400 E5            [11] 6095 	push	hl
   7401 C5            [11] 6096 	push	bc
   7402 21 A7 75      [10] 6097 	ld	hl,#___str_47
   7405 E5            [11] 6098 	push	hl
   7406 CD E4 3E      [17] 6099 	call	_cpct_drawStringM0
   7409 21 06 00      [10] 6100 	ld	hl,#6
   740C 39            [11] 6101 	add	hl,sp
   740D F9            [ 6] 6102 	ld	sp,hl
   740E 18 1E         [12] 6103 	jr	00106$
                           6104 ;src/main.c:1175: case 2: cpct_drawStringM0("< Joystick >", cpct_getScreenPtr(CPCT_VMEM_START, 20, 120), 15, 0);break; 
   7410                    6105 00105$:
   7410 21 14 78      [10] 6106 	ld	hl,#0x7814
   7413 E5            [11] 6107 	push	hl
   7414 21 00 C0      [10] 6108 	ld	hl,#0xC000
   7417 E5            [11] 6109 	push	hl
   7418 CD 0A 43      [17] 6110 	call	_cpct_getScreenPtr
   741B 4D            [ 4] 6111 	ld	c,l
   741C 44            [ 4] 6112 	ld	b,h
   741D 21 0F 00      [10] 6113 	ld	hl,#0x000F
   7420 E5            [11] 6114 	push	hl
   7421 C5            [11] 6115 	push	bc
   7422 21 B2 75      [10] 6116 	ld	hl,#___str_48
   7425 E5            [11] 6117 	push	hl
   7426 CD E4 3E      [17] 6118 	call	_cpct_drawStringM0
   7429 21 06 00      [10] 6119 	ld	hl,#6
   742C 39            [11] 6120 	add	hl,sp
   742D F9            [ 6] 6121 	ld	sp,hl
                           6122 ;src/main.c:1176: }
   742E                    6123 00106$:
                           6124 ;src/main.c:1177: switch(protaDos.controles){    
   742E 21 8B 4F      [10] 6125 	ld	hl,#_protaDos+26
   7431 5E            [ 7] 6126 	ld	e,(hl)
   7432 3E 02         [ 7] 6127 	ld	a,#0x02
   7434 93            [ 4] 6128 	sub	a, e
   7435 DA 93 75      [10] 6129 	jp	C,00122$
   7438 16 00         [ 7] 6130 	ld	d,#0x00
   743A 21 40 74      [10] 6131 	ld	hl,#00149$
   743D 19            [11] 6132 	add	hl,de
   743E 19            [11] 6133 	add	hl,de
                           6134 ;src/main.c:1178: case 0: cpct_drawStringM0("WASD", cpct_getScreenPtr(CPCT_VMEM_START, 36, 152), 15, 0);break;
   743F E9            [ 4] 6135 	jp	(hl)
   7440                    6136 00149$:
   7440 18 04         [12] 6137 	jr	00107$
   7442 18 23         [12] 6138 	jr	00108$
   7444 18 42         [12] 6139 	jr	00109$
   7446                    6140 00107$:
   7446 21 24 98      [10] 6141 	ld	hl,#0x9824
   7449 E5            [11] 6142 	push	hl
   744A 21 00 C0      [10] 6143 	ld	hl,#0xC000
   744D E5            [11] 6144 	push	hl
   744E CD 0A 43      [17] 6145 	call	_cpct_getScreenPtr
   7451 4D            [ 4] 6146 	ld	c,l
   7452 44            [ 4] 6147 	ld	b,h
   7453 21 0F 00      [10] 6148 	ld	hl,#0x000F
   7456 E5            [11] 6149 	push	hl
   7457 C5            [11] 6150 	push	bc
   7458 21 BF 75      [10] 6151 	ld	hl,#___str_49
   745B E5            [11] 6152 	push	hl
   745C CD E4 3E      [17] 6153 	call	_cpct_drawStringM0
   745F 21 06 00      [10] 6154 	ld	hl,#6
   7462 39            [11] 6155 	add	hl,sp
   7463 F9            [ 6] 6156 	ld	sp,hl
   7464 C3 93 75      [10] 6157 	jp	00122$
                           6158 ;src/main.c:1179: case 1: cpct_drawStringM0("Keypad", cpct_getScreenPtr(CPCT_VMEM_START, 32, 152), 15, 0);break;
   7467                    6159 00108$:
   7467 21 20 98      [10] 6160 	ld	hl,#0x9820
   746A E5            [11] 6161 	push	hl
   746B 21 00 C0      [10] 6162 	ld	hl,#0xC000
   746E E5            [11] 6163 	push	hl
   746F CD 0A 43      [17] 6164 	call	_cpct_getScreenPtr
   7472 4D            [ 4] 6165 	ld	c,l
   7473 44            [ 4] 6166 	ld	b,h
   7474 21 0F 00      [10] 6167 	ld	hl,#0x000F
   7477 E5            [11] 6168 	push	hl
   7478 C5            [11] 6169 	push	bc
   7479 21 C4 75      [10] 6170 	ld	hl,#___str_50
   747C E5            [11] 6171 	push	hl
   747D CD E4 3E      [17] 6172 	call	_cpct_drawStringM0
   7480 21 06 00      [10] 6173 	ld	hl,#6
   7483 39            [11] 6174 	add	hl,sp
   7484 F9            [ 6] 6175 	ld	sp,hl
   7485 C3 93 75      [10] 6176 	jp	00122$
                           6177 ;src/main.c:1180: case 2: cpct_drawStringM0("Joystick", cpct_getScreenPtr(CPCT_VMEM_START, 28, 152), 15, 0);break;
   7488                    6178 00109$:
   7488 21 1C 98      [10] 6179 	ld	hl,#0x981C
   748B E5            [11] 6180 	push	hl
   748C 21 00 C0      [10] 6181 	ld	hl,#0xC000
   748F E5            [11] 6182 	push	hl
   7490 CD 0A 43      [17] 6183 	call	_cpct_getScreenPtr
   7493 4D            [ 4] 6184 	ld	c,l
   7494 44            [ 4] 6185 	ld	b,h
   7495 21 0F 00      [10] 6186 	ld	hl,#0x000F
   7498 E5            [11] 6187 	push	hl
   7499 C5            [11] 6188 	push	bc
   749A 21 CB 75      [10] 6189 	ld	hl,#___str_51
   749D E5            [11] 6190 	push	hl
   749E CD E4 3E      [17] 6191 	call	_cpct_drawStringM0
   74A1 21 06 00      [10] 6192 	ld	hl,#6
   74A4 39            [11] 6193 	add	hl,sp
   74A5 F9            [ 6] 6194 	ld	sp,hl
                           6195 ;src/main.c:1181: }   
   74A6 C3 93 75      [10] 6196 	jp	00122$
   74A9                    6197 00120$:
                           6198 ;src/main.c:1185: switch(prota.controles){ 
   74A9 21 6E 4F      [10] 6199 	ld	hl,#_prota+26
   74AC 5E            [ 7] 6200 	ld	e,(hl)
   74AD 3E 02         [ 7] 6201 	ld	a,#0x02
   74AF 93            [ 4] 6202 	sub	a, e
   74B0 38 6C         [12] 6203 	jr	C,00114$
   74B2 16 00         [ 7] 6204 	ld	d,#0x00
   74B4 21 BA 74      [10] 6205 	ld	hl,#00150$
   74B7 19            [11] 6206 	add	hl,de
   74B8 19            [11] 6207 	add	hl,de
                           6208 ;src/main.c:1186: case 0: cpct_drawStringM0("WASD", cpct_getScreenPtr(CPCT_VMEM_START, 36, 120), 15, 0);break;
   74B9 E9            [ 4] 6209 	jp	(hl)
   74BA                    6210 00150$:
   74BA 18 04         [12] 6211 	jr	00111$
   74BC 18 22         [12] 6212 	jr	00112$
   74BE 18 40         [12] 6213 	jr	00113$
   74C0                    6214 00111$:
   74C0 21 24 78      [10] 6215 	ld	hl,#0x7824
   74C3 E5            [11] 6216 	push	hl
   74C4 21 00 C0      [10] 6217 	ld	hl,#0xC000
   74C7 E5            [11] 6218 	push	hl
   74C8 CD 0A 43      [17] 6219 	call	_cpct_getScreenPtr
   74CB 4D            [ 4] 6220 	ld	c,l
   74CC 44            [ 4] 6221 	ld	b,h
   74CD 21 0F 00      [10] 6222 	ld	hl,#0x000F
   74D0 E5            [11] 6223 	push	hl
   74D1 C5            [11] 6224 	push	bc
   74D2 21 BF 75      [10] 6225 	ld	hl,#___str_49
   74D5 E5            [11] 6226 	push	hl
   74D6 CD E4 3E      [17] 6227 	call	_cpct_drawStringM0
   74D9 21 06 00      [10] 6228 	ld	hl,#6
   74DC 39            [11] 6229 	add	hl,sp
   74DD F9            [ 6] 6230 	ld	sp,hl
   74DE 18 3E         [12] 6231 	jr	00114$
                           6232 ;src/main.c:1187: case 1: cpct_drawStringM0("Keypad", cpct_getScreenPtr(CPCT_VMEM_START, 32, 120), 15, 0);break;
   74E0                    6233 00112$:
   74E0 21 20 78      [10] 6234 	ld	hl,#0x7820
   74E3 E5            [11] 6235 	push	hl
   74E4 21 00 C0      [10] 6236 	ld	hl,#0xC000
   74E7 E5            [11] 6237 	push	hl
   74E8 CD 0A 43      [17] 6238 	call	_cpct_getScreenPtr
   74EB 4D            [ 4] 6239 	ld	c,l
   74EC 44            [ 4] 6240 	ld	b,h
   74ED 21 0F 00      [10] 6241 	ld	hl,#0x000F
   74F0 E5            [11] 6242 	push	hl
   74F1 C5            [11] 6243 	push	bc
   74F2 21 C4 75      [10] 6244 	ld	hl,#___str_50
   74F5 E5            [11] 6245 	push	hl
   74F6 CD E4 3E      [17] 6246 	call	_cpct_drawStringM0
   74F9 21 06 00      [10] 6247 	ld	hl,#6
   74FC 39            [11] 6248 	add	hl,sp
   74FD F9            [ 6] 6249 	ld	sp,hl
   74FE 18 1E         [12] 6250 	jr	00114$
                           6251 ;src/main.c:1188: case 2: cpct_drawStringM0("Joystick", cpct_getScreenPtr(CPCT_VMEM_START, 28, 120), 15, 0);break;
   7500                    6252 00113$:
   7500 21 1C 78      [10] 6253 	ld	hl,#0x781C
   7503 E5            [11] 6254 	push	hl
   7504 21 00 C0      [10] 6255 	ld	hl,#0xC000
   7507 E5            [11] 6256 	push	hl
   7508 CD 0A 43      [17] 6257 	call	_cpct_getScreenPtr
   750B 4D            [ 4] 6258 	ld	c,l
   750C 44            [ 4] 6259 	ld	b,h
   750D 21 0F 00      [10] 6260 	ld	hl,#0x000F
   7510 E5            [11] 6261 	push	hl
   7511 C5            [11] 6262 	push	bc
   7512 21 CB 75      [10] 6263 	ld	hl,#___str_51
   7515 E5            [11] 6264 	push	hl
   7516 CD E4 3E      [17] 6265 	call	_cpct_drawStringM0
   7519 21 06 00      [10] 6266 	ld	hl,#6
   751C 39            [11] 6267 	add	hl,sp
   751D F9            [ 6] 6268 	ld	sp,hl
                           6269 ;src/main.c:1189: }
   751E                    6270 00114$:
                           6271 ;src/main.c:1190: switch(protaDos.controles){    
   751E 21 8B 4F      [10] 6272 	ld	hl,#_protaDos+26
   7521 5E            [ 7] 6273 	ld	e,(hl)
   7522 3E 02         [ 7] 6274 	ld	a,#0x02
   7524 93            [ 4] 6275 	sub	a, e
   7525 38 6C         [12] 6276 	jr	C,00122$
   7527 16 00         [ 7] 6277 	ld	d,#0x00
   7529 21 2F 75      [10] 6278 	ld	hl,#00151$
   752C 19            [11] 6279 	add	hl,de
   752D 19            [11] 6280 	add	hl,de
                           6281 ;src/main.c:1191: case 0: cpct_drawStringM0("< WASD >", cpct_getScreenPtr(CPCT_VMEM_START, 28, 152), 15, 0);break;
   752E E9            [ 4] 6282 	jp	(hl)
   752F                    6283 00151$:
   752F 18 04         [12] 6284 	jr	00115$
   7531 18 22         [12] 6285 	jr	00116$
   7533 18 40         [12] 6286 	jr	00117$
   7535                    6287 00115$:
   7535 21 1C 98      [10] 6288 	ld	hl,#0x981C
   7538 E5            [11] 6289 	push	hl
   7539 21 00 C0      [10] 6290 	ld	hl,#0xC000
   753C E5            [11] 6291 	push	hl
   753D CD 0A 43      [17] 6292 	call	_cpct_getScreenPtr
   7540 4D            [ 4] 6293 	ld	c,l
   7541 44            [ 4] 6294 	ld	b,h
   7542 21 0F 00      [10] 6295 	ld	hl,#0x000F
   7545 E5            [11] 6296 	push	hl
   7546 C5            [11] 6297 	push	bc
   7547 21 9E 75      [10] 6298 	ld	hl,#___str_46
   754A E5            [11] 6299 	push	hl
   754B CD E4 3E      [17] 6300 	call	_cpct_drawStringM0
   754E 21 06 00      [10] 6301 	ld	hl,#6
   7551 39            [11] 6302 	add	hl,sp
   7552 F9            [ 6] 6303 	ld	sp,hl
   7553 18 3E         [12] 6304 	jr	00122$
                           6305 ;src/main.c:1192: case 1: cpct_drawStringM0("< Keypad >", cpct_getScreenPtr(CPCT_VMEM_START, 24, 152), 15, 0);break;
   7555                    6306 00116$:
   7555 21 18 98      [10] 6307 	ld	hl,#0x9818
   7558 E5            [11] 6308 	push	hl
   7559 21 00 C0      [10] 6309 	ld	hl,#0xC000
   755C E5            [11] 6310 	push	hl
   755D CD 0A 43      [17] 6311 	call	_cpct_getScreenPtr
   7560 4D            [ 4] 6312 	ld	c,l
   7561 44            [ 4] 6313 	ld	b,h
   7562 21 0F 00      [10] 6314 	ld	hl,#0x000F
   7565 E5            [11] 6315 	push	hl
   7566 C5            [11] 6316 	push	bc
   7567 21 A7 75      [10] 6317 	ld	hl,#___str_47
   756A E5            [11] 6318 	push	hl
   756B CD E4 3E      [17] 6319 	call	_cpct_drawStringM0
   756E 21 06 00      [10] 6320 	ld	hl,#6
   7571 39            [11] 6321 	add	hl,sp
   7572 F9            [ 6] 6322 	ld	sp,hl
   7573 18 1E         [12] 6323 	jr	00122$
                           6324 ;src/main.c:1193: case 2: cpct_drawStringM0("< Joystick >", cpct_getScreenPtr(CPCT_VMEM_START, 20, 152), 15, 0);break;        
   7575                    6325 00117$:
   7575 21 14 98      [10] 6326 	ld	hl,#0x9814
   7578 E5            [11] 6327 	push	hl
   7579 21 00 C0      [10] 6328 	ld	hl,#0xC000
   757C E5            [11] 6329 	push	hl
   757D CD 0A 43      [17] 6330 	call	_cpct_getScreenPtr
   7580 4D            [ 4] 6331 	ld	c,l
   7581 44            [ 4] 6332 	ld	b,h
   7582 21 0F 00      [10] 6333 	ld	hl,#0x000F
   7585 E5            [11] 6334 	push	hl
   7586 C5            [11] 6335 	push	bc
   7587 21 B2 75      [10] 6336 	ld	hl,#___str_48
   758A E5            [11] 6337 	push	hl
   758B CD E4 3E      [17] 6338 	call	_cpct_drawStringM0
   758E 21 06 00      [10] 6339 	ld	hl,#6
   7591 39            [11] 6340 	add	hl,sp
   7592 F9            [ 6] 6341 	ld	sp,hl
                           6342 ;src/main.c:1194: }  
   7593                    6343 00122$:
   7593 DD E1         [14] 6344 	pop	ix
   7595 C9            [10] 6345 	ret
   7596                    6346 ___str_45:
   7596 43 4F 4E 54 52 4F  6347 	.ascii "CONTROL"
        4C
   759D 00                 6348 	.db 0x00
   759E                    6349 ___str_46:
   759E 3C 20 57 41 53 44  6350 	.ascii "< WASD >"
        20 3E
   75A6 00                 6351 	.db 0x00
   75A7                    6352 ___str_47:
   75A7 3C 20 4B 65 79 70  6353 	.ascii "< Keypad >"
        61 64 20 3E
   75B1 00                 6354 	.db 0x00
   75B2                    6355 ___str_48:
   75B2 3C 20 4A 6F 79 73  6356 	.ascii "< Joystick >"
        74 69 63 6B 20 3E
   75BE 00                 6357 	.db 0x00
   75BF                    6358 ___str_49:
   75BF 57 41 53 44        6359 	.ascii "WASD"
   75C3 00                 6360 	.db 0x00
   75C4                    6361 ___str_50:
   75C4 4B 65 79 70 61 64  6362 	.ascii "Keypad"
   75CA 00                 6363 	.db 0x00
   75CB                    6364 ___str_51:
   75CB 4A 6F 79 73 74 69  6365 	.ascii "Joystick"
        63 6B
   75D3 00                 6366 	.db 0x00
                           6367 ;src/main.c:1201: void dibujarPantallaPrincipal(){
                           6368 ;	---------------------------------
                           6369 ; Function dibujarPantallaPrincipal
                           6370 ; ---------------------------------
   75D4                    6371 _dibujarPantallaPrincipal::
                           6372 ;src/main.c:1203: cpct_clearScreen(0);
   75D4 21 00 40      [10] 6373 	ld	hl,#0x4000
   75D7 E5            [11] 6374 	push	hl
   75D8 AF            [ 4] 6375 	xor	a, a
   75D9 F5            [11] 6376 	push	af
   75DA 33            [ 6] 6377 	inc	sp
   75DB 26 C0         [ 7] 6378 	ld	h, #0xC0
   75DD E5            [11] 6379 	push	hl
   75DE CD A5 42      [17] 6380 	call	_cpct_memset
                           6381 ;src/main.c:1206: cpct_drawSprite (pre_logo_0, cpctm_screenPtr(CPCT_VMEM_START, 0, 0), PRE_LOGO_0_W, PRE_LOGO_0_H);
   75E1 21 28 42      [10] 6382 	ld	hl,#0x4228
   75E4 E5            [11] 6383 	push	hl
   75E5 21 00 C0      [10] 6384 	ld	hl,#0xC000
   75E8 E5            [11] 6385 	push	hl
   75E9 21 60 1A      [10] 6386 	ld	hl,#_pre_logo_0
   75EC E5            [11] 6387 	push	hl
   75ED CD 08 3F      [17] 6388 	call	_cpct_drawSprite
                           6389 ;src/main.c:1209: cpct_drawSprite (pre_logo_1, cpctm_screenPtr(CPCT_VMEM_START, PRE_LOGO_0_W, 0), PRE_LOGO_1_W, PRE_LOGO_1_H);
   75F0 21 28 42      [10] 6390 	ld	hl,#0x4228
   75F3 E5            [11] 6391 	push	hl
   75F4 26 C0         [ 7] 6392 	ld	h, #0xC0
   75F6 E5            [11] 6393 	push	hl
   75F7 21 B0 24      [10] 6394 	ld	hl,#_pre_logo_1
   75FA E5            [11] 6395 	push	hl
   75FB CD 08 3F      [17] 6396 	call	_cpct_drawSprite
                           6397 ;src/main.c:1212: dibujarFondoMenu();
   75FE CD F0 6A      [17] 6398 	call	_dibujarFondoMenu
                           6399 ;src/main.c:1213: mostrarMenu();
   7601 CD A6 77      [17] 6400 	call	_mostrarMenu
   7604 C9            [10] 6401 	ret
                           6402 ;src/main.c:1216: void dibujarPortada(){
                           6403 ;	---------------------------------
                           6404 ; Function dibujarPortada
                           6405 ; ---------------------------------
   7605                    6406 _dibujarPortada::
                           6407 ;src/main.c:1225: cpct_drawStringM0("SubXplosion", cpct_getScreenPtr(CPCT_VMEM_START, 18, 90), 10, 0);
   7605 21 12 5A      [10] 6408 	ld	hl,#0x5A12
   7608 E5            [11] 6409 	push	hl
   7609 21 00 C0      [10] 6410 	ld	hl,#0xC000
   760C E5            [11] 6411 	push	hl
   760D CD 0A 43      [17] 6412 	call	_cpct_getScreenPtr
   7610 4D            [ 4] 6413 	ld	c,l
   7611 44            [ 4] 6414 	ld	b,h
   7612 21 0A 00      [10] 6415 	ld	hl,#0x000A
   7615 E5            [11] 6416 	push	hl
   7616 C5            [11] 6417 	push	bc
   7617 21 42 76      [10] 6418 	ld	hl,#___str_52
   761A E5            [11] 6419 	push	hl
   761B CD E4 3E      [17] 6420 	call	_cpct_drawStringM0
   761E 21 06 00      [10] 6421 	ld	hl,#6
   7621 39            [11] 6422 	add	hl,sp
   7622 F9            [ 6] 6423 	ld	sp,hl
                           6424 ;src/main.c:1226: cpct_drawStringM0("Presents", cpct_getScreenPtr(CPCT_VMEM_START, 25, 120), 8, 0);
   7623 21 19 78      [10] 6425 	ld	hl,#0x7819
   7626 E5            [11] 6426 	push	hl
   7627 21 00 C0      [10] 6427 	ld	hl,#0xC000
   762A E5            [11] 6428 	push	hl
   762B CD 0A 43      [17] 6429 	call	_cpct_getScreenPtr
   762E 4D            [ 4] 6430 	ld	c,l
   762F 44            [ 4] 6431 	ld	b,h
   7630 21 08 00      [10] 6432 	ld	hl,#0x0008
   7633 E5            [11] 6433 	push	hl
   7634 C5            [11] 6434 	push	bc
   7635 21 4E 76      [10] 6435 	ld	hl,#___str_53
   7638 E5            [11] 6436 	push	hl
   7639 CD E4 3E      [17] 6437 	call	_cpct_drawStringM0
   763C 21 06 00      [10] 6438 	ld	hl,#6
   763F 39            [11] 6439 	add	hl,sp
   7640 F9            [ 6] 6440 	ld	sp,hl
   7641 C9            [10] 6441 	ret
   7642                    6442 ___str_52:
   7642 53 75 62 58 70 6C  6443 	.ascii "SubXplosion"
        6F 73 69 6F 6E
   764D 00                 6444 	.db 0x00
   764E                    6445 ___str_53:
   764E 50 72 65 73 65 6E  6446 	.ascii "Presents"
        74 73
   7656 00                 6447 	.db 0x00
                           6448 ;src/main.c:1232: void redefinirControles(u8 personaje, u8 modo, u8 disposicion){
                           6449 ;	---------------------------------
                           6450 ; Function redefinirControles
                           6451 ; ---------------------------------
   7657                    6452 _redefinirControles::
   7657 DD E5         [15] 6453 	push	ix
   7659 DD 21 00 00   [14] 6454 	ld	ix,#0
   765D DD 39         [15] 6455 	add	ix,sp
                           6456 ;src/main.c:1238: switch(modo){
   765F 3E 02         [ 7] 6457 	ld	a,#0x02
   7661 DD 96 05      [19] 6458 	sub	a, 5 (ix)
   7664 3E 00         [ 7] 6459 	ld	a,#0x00
   7666 17            [ 4] 6460 	rla
   7667 5F            [ 4] 6461 	ld	e,a
                           6462 ;src/main.c:1240: switch(disposicion){
   7668 DD 7E 06      [19] 6463 	ld	a,6 (ix)
   766B B7            [ 4] 6464 	or	a, a
   766C 20 04         [12] 6465 	jr	NZ,00152$
   766E 3E 01         [ 7] 6466 	ld	a,#0x01
   7670 18 01         [12] 6467 	jr	00153$
   7672                    6468 00152$:
   7672 AF            [ 4] 6469 	xor	a,a
   7673                    6470 00153$:
   7673 4F            [ 4] 6471 	ld	c,a
   7674 DD 7E 06      [19] 6472 	ld	a,6 (ix)
   7677 3D            [ 4] 6473 	dec	a
   7678 20 04         [12] 6474 	jr	NZ,00154$
   767A 3E 01         [ 7] 6475 	ld	a,#0x01
   767C 18 01         [12] 6476 	jr	00155$
   767E                    6477 00154$:
   767E AF            [ 4] 6478 	xor	a,a
   767F                    6479 00155$:
   767F 47            [ 4] 6480 	ld	b,a
                           6481 ;src/main.c:1235: switch(personaje){
   7680 DD 7E 04      [19] 6482 	ld	a,4 (ix)
   7683 B7            [ 4] 6483 	or	a, a
   7684 28 09         [12] 6484 	jr	Z,00101$
   7686 DD 7E 04      [19] 6485 	ld	a,4 (ix)
   7689 3D            [ 4] 6486 	dec	a
   768A 28 3D         [12] 6487 	jr	Z,00109$
   768C C3 01 77      [10] 6488 	jp	00118$
                           6489 ;src/main.c:1237: case 0: 
   768F                    6490 00101$:
                           6491 ;src/main.c:1238: switch(modo){
   768F 7B            [ 4] 6492 	ld	a,e
   7690 B7            [ 4] 6493 	or	a, a
   7691 20 6E         [12] 6494 	jr	NZ,00118$
   7693 DD 5E 05      [19] 6495 	ld	e,5 (ix)
   7696 16 00         [ 7] 6496 	ld	d,#0x00
   7698 21 9E 76      [10] 6497 	ld	hl,#00158$
   769B 19            [11] 6498 	add	hl,de
   769C 19            [11] 6499 	add	hl,de
                           6500 ;src/main.c:1239: case 0:
   769D E9            [ 4] 6501 	jp	(hl)
   769E                    6502 00158$:
   769E 18 04         [12] 6503 	jr	00102$
   76A0 18 19         [12] 6504 	jr	00106$
   76A2 18 1E         [12] 6505 	jr	00107$
   76A4                    6506 00102$:
                           6507 ;src/main.c:1240: switch(disposicion){
   76A4 79            [ 4] 6508 	ld	a,c
   76A5 B7            [ 4] 6509 	or	a,a
   76A6 20 05         [12] 6510 	jr	NZ,00103$
   76A8 B0            [ 4] 6511 	or	a,b
   76A9 20 09         [12] 6512 	jr	NZ,00104$
   76AB 18 54         [12] 6513 	jr	00118$
                           6514 ;src/main.c:1241: case 0: prota.controles = 0;break;
   76AD                    6515 00103$:
   76AD 21 6E 4F      [10] 6516 	ld	hl,#(_prota + 0x001a)
   76B0 36 00         [10] 6517 	ld	(hl),#0x00
   76B2 18 4D         [12] 6518 	jr	00118$
                           6519 ;src/main.c:1242: case 1: prota.controles = 1; break; 
   76B4                    6520 00104$:
   76B4 21 6E 4F      [10] 6521 	ld	hl,#(_prota + 0x001a)
   76B7 36 01         [10] 6522 	ld	(hl),#0x01
                           6523 ;src/main.c:1244: break;
   76B9 18 46         [12] 6524 	jr	00118$
                           6525 ;src/main.c:1246: case 1: prota.controles = 2; break;
   76BB                    6526 00106$:
   76BB 21 6E 4F      [10] 6527 	ld	hl,#(_prota + 0x001a)
   76BE 36 02         [10] 6528 	ld	(hl),#0x02
   76C0 18 3F         [12] 6529 	jr	00118$
                           6530 ;src/main.c:1247: case 2: prota.controles = 3; break;
   76C2                    6531 00107$:
   76C2 21 6E 4F      [10] 6532 	ld	hl,#(_prota + 0x001a)
   76C5 36 03         [10] 6533 	ld	(hl),#0x03
                           6534 ;src/main.c:1249: break;
   76C7 18 38         [12] 6535 	jr	00118$
                           6536 ;src/main.c:1251: case 1: 
   76C9                    6537 00109$:
                           6538 ;src/main.c:1252: switch(modo){
   76C9 7B            [ 4] 6539 	ld	a,e
   76CA B7            [ 4] 6540 	or	a, a
   76CB 20 34         [12] 6541 	jr	NZ,00118$
   76CD DD 5E 05      [19] 6542 	ld	e,5 (ix)
   76D0 16 00         [ 7] 6543 	ld	d,#0x00
   76D2 21 D8 76      [10] 6544 	ld	hl,#00159$
   76D5 19            [11] 6545 	add	hl,de
   76D6 19            [11] 6546 	add	hl,de
                           6547 ;src/main.c:1253: case 0:
   76D7 E9            [ 4] 6548 	jp	(hl)
   76D8                    6549 00159$:
   76D8 18 04         [12] 6550 	jr	00110$
   76DA 18 19         [12] 6551 	jr	00114$
   76DC 18 1E         [12] 6552 	jr	00115$
   76DE                    6553 00110$:
                           6554 ;src/main.c:1254: switch(disposicion){
   76DE 79            [ 4] 6555 	ld	a,c
   76DF B7            [ 4] 6556 	or	a,a
   76E0 20 05         [12] 6557 	jr	NZ,00111$
   76E2 B0            [ 4] 6558 	or	a,b
   76E3 20 09         [12] 6559 	jr	NZ,00112$
   76E5 18 1A         [12] 6560 	jr	00118$
                           6561 ;src/main.c:1255: case 0: protaDos.controles = 0;break;
   76E7                    6562 00111$:
   76E7 21 8B 4F      [10] 6563 	ld	hl,#(_protaDos + 0x001a)
   76EA 36 00         [10] 6564 	ld	(hl),#0x00
   76EC 18 13         [12] 6565 	jr	00118$
                           6566 ;src/main.c:1256: case 1: protaDos.controles = 1; break; 
   76EE                    6567 00112$:
   76EE 21 8B 4F      [10] 6568 	ld	hl,#(_protaDos + 0x001a)
   76F1 36 01         [10] 6569 	ld	(hl),#0x01
                           6570 ;src/main.c:1258: break;
   76F3 18 0C         [12] 6571 	jr	00118$
                           6572 ;src/main.c:1260: case 1: protaDos.controles = 2; break;
   76F5                    6573 00114$:
   76F5 21 8B 4F      [10] 6574 	ld	hl,#(_protaDos + 0x001a)
   76F8 36 02         [10] 6575 	ld	(hl),#0x02
   76FA 18 05         [12] 6576 	jr	00118$
                           6577 ;src/main.c:1261: case 2: protaDos.controles = 3; break;
   76FC                    6578 00115$:
   76FC 21 8B 4F      [10] 6579 	ld	hl,#(_protaDos + 0x001a)
   76FF 36 03         [10] 6580 	ld	(hl),#0x03
                           6581 ;src/main.c:1264: }
   7701                    6582 00118$:
   7701 DD E1         [14] 6583 	pop	ix
   7703 C9            [10] 6584 	ret
                           6585 ;src/main.c:1267: void reset(){
                           6586 ;	---------------------------------
                           6587 ; Function reset
                           6588 ; ---------------------------------
   7704                    6589 _reset::
                           6590 ;src/main.c:1270: musica = 0;
   7704 21 AE 4F      [10] 6591 	ld	hl,#_musica + 0
   7707 36 00         [10] 6592 	ld	(hl), #0x00
                           6593 ;src/main.c:1271: cpct_akp_stop();
   7709 CD 20 3E      [17] 6594 	call	_cpct_akp_stop
                           6595 ;src/main.c:1272: cpct_akp_musicInit(pre_music_presentation); 
   770C 21 00 02      [10] 6596 	ld	hl,#_pre_music_presentation
   770F E5            [11] 6597 	push	hl
   7710 CD C0 3D      [17] 6598 	call	_cpct_akp_musicInit
   7713 F1            [10] 6599 	pop	af
                           6600 ;src/main.c:1274: ronda=0;
   7714 21 B0 4F      [10] 6601 	ld	hl,#_ronda + 0
   7717 36 00         [10] 6602 	ld	(hl), #0x00
                           6603 ;src/main.c:1275: prota.marcador=0;
   7719 21 70 4F      [10] 6604 	ld	hl,#(_prota + 0x001c)
   771C 36 00         [10] 6605 	ld	(hl),#0x00
                           6606 ;src/main.c:1276: protaDos.marcador=0;
   771E 21 8D 4F      [10] 6607 	ld	hl,#(_protaDos + 0x001c)
   7721 36 00         [10] 6608 	ld	(hl),#0x00
                           6609 ;src/main.c:1277: estado = 3;
   7723 21 AA 4F      [10] 6610 	ld	hl,#_estado + 0
   7726 36 03         [10] 6611 	ld	(hl), #0x03
                           6612 ;src/main.c:1278: cpct_clearScreen(0);
   7728 21 00 40      [10] 6613 	ld	hl,#0x4000
   772B E5            [11] 6614 	push	hl
   772C AF            [ 4] 6615 	xor	a, a
   772D F5            [11] 6616 	push	af
   772E 33            [ 6] 6617 	inc	sp
   772F 26 C0         [ 7] 6618 	ld	h, #0xC0
   7731 E5            [11] 6619 	push	hl
   7732 CD A5 42      [17] 6620 	call	_cpct_memset
                           6621 ;src/main.c:1279: dibujarPortada();
   7735 CD 05 76      [17] 6622 	call	_dibujarPortada
   7738 C9            [10] 6623 	ret
                           6624 ;src/main.c:1288: void reaparecer(){
                           6625 ;	---------------------------------
                           6626 ; Function reaparecer
                           6627 ; ---------------------------------
   7739                    6628 _reaparecer::
                           6629 ;src/main.c:1297: if(prota.marcador != 5 && protaDos.marcador != 5){
   7739 3A 70 4F      [13] 6630 	ld	a, (#(_prota + 0x001c) + 0)
   773C D6 05         [ 7] 6631 	sub	a, #0x05
   773E 20 04         [12] 6632 	jr	NZ,00151$
   7740 3E 01         [ 7] 6633 	ld	a,#0x01
   7742 18 01         [12] 6634 	jr	00152$
   7744                    6635 00151$:
   7744 AF            [ 4] 6636 	xor	a,a
   7745                    6637 00152$:
   7745 4F            [ 4] 6638 	ld	c,a
   7746 CB 41         [ 8] 6639 	bit	0,c
   7748 20 32         [12] 6640 	jr	NZ,00112$
   774A 3A 8D 4F      [13] 6641 	ld	a, (#(_protaDos + 0x001c) + 0)
   774D D6 05         [ 7] 6642 	sub	a, #0x05
   774F 28 2B         [12] 6643 	jr	Z,00112$
                           6644 ;src/main.c:1299: switch(lastWinner){
   7751 3A A8 4F      [13] 6645 	ld	a,(#_lastWinner + 0)
   7754 3D            [ 4] 6646 	dec	a
   7755 28 09         [12] 6647 	jr	Z,00101$
   7757 3A A8 4F      [13] 6648 	ld	a,(#_lastWinner + 0)
   775A D6 02         [ 7] 6649 	sub	a, #0x02
   775C 28 0B         [12] 6650 	jr	Z,00102$
   775E 18 11         [12] 6651 	jr	00103$
                           6652 ;src/main.c:1301: case 1:
   7760                    6653 00101$:
                           6654 ;src/main.c:1302: dibujarGanador(0);
   7760 AF            [ 4] 6655 	xor	a, a
   7761 F5            [11] 6656 	push	af
   7762 33            [ 6] 6657 	inc	sp
   7763 CD 0A 66      [17] 6658 	call	_dibujarGanador
   7766 33            [ 6] 6659 	inc	sp
                           6660 ;src/main.c:1303: break;
   7767 18 08         [12] 6661 	jr	00103$
                           6662 ;src/main.c:1305: case 2:
   7769                    6663 00102$:
                           6664 ;src/main.c:1306: dibujarGanador(1);
   7769 3E 01         [ 7] 6665 	ld	a,#0x01
   776B F5            [11] 6666 	push	af
   776C 33            [ 6] 6667 	inc	sp
   776D CD 0A 66      [17] 6668 	call	_dibujarGanador
   7770 33            [ 6] 6669 	inc	sp
                           6670 ;src/main.c:1309: }
   7771                    6671 00103$:
                           6672 ;src/main.c:1311: if(estado == 1)inicializarPartida();
   7771 3A AA 4F      [13] 6673 	ld	a,(#_estado + 0)
   7774 3D            [ 4] 6674 	dec	a
   7775 20 24         [12] 6675 	jr	NZ,00113$
   7777 CD AE A2      [17] 6676 	call	_inicializarPartida
   777A 18 1F         [12] 6677 	jr	00113$
   777C                    6678 00112$:
                           6679 ;src/main.c:1314: if(prota.marcador == 5){
   777C CB 41         [ 8] 6680 	bit	0,c
   777E 28 09         [12] 6681 	jr	Z,00109$
                           6682 ;src/main.c:1315: dibujarVictoria(0);
   7780 AF            [ 4] 6683 	xor	a, a
   7781 F5            [11] 6684 	push	af
   7782 33            [ 6] 6685 	inc	sp
   7783 CD 98 6E      [17] 6686 	call	_dibujarVictoria
   7786 33            [ 6] 6687 	inc	sp
   7787 18 0F         [12] 6688 	jr	00110$
   7789                    6689 00109$:
                           6690 ;src/main.c:1317: else if (protaDos.marcador == 5){
   7789 3A 8D 4F      [13] 6691 	ld	a, (#(_protaDos + 0x001c) + 0)
   778C D6 05         [ 7] 6692 	sub	a, #0x05
   778E 20 08         [12] 6693 	jr	NZ,00110$
                           6694 ;src/main.c:1318: dibujarVictoria(1);
   7790 3E 01         [ 7] 6695 	ld	a,#0x01
   7792 F5            [11] 6696 	push	af
   7793 33            [ 6] 6697 	inc	sp
   7794 CD 98 6E      [17] 6698 	call	_dibujarVictoria
   7797 33            [ 6] 6699 	inc	sp
   7798                    6700 00110$:
                           6701 ;src/main.c:1320: reset();
   7798 CD 04 77      [17] 6702 	call	_reset
   779B                    6703 00113$:
                           6704 ;src/main.c:1323: if(estado == 1)reapareciendo=1;
   779B 3A AA 4F      [13] 6705 	ld	a,(#_estado + 0)
   779E 3D            [ 4] 6706 	dec	a
   779F C0            [11] 6707 	ret	NZ
   77A0 21 B1 4F      [10] 6708 	ld	hl,#_reapareciendo + 0
   77A3 36 01         [10] 6709 	ld	(hl), #0x01
   77A5 C9            [10] 6710 	ret
                           6711 ;src/main.c:1327: void mostrarMenu(){
                           6712 ;	---------------------------------
                           6713 ; Function mostrarMenu
                           6714 ; ---------------------------------
   77A6                    6715 _mostrarMenu::
                           6716 ;src/main.c:1334: cpct_drawStringM0(JUGAR, cpct_getScreenPtr(CPCT_VMEM_START, 26, 104), 15, 0);
   77A6 21 1A 68      [10] 6717 	ld	hl,#0x681A
   77A9 E5            [11] 6718 	push	hl
   77AA 21 00 C0      [10] 6719 	ld	hl,#0xC000
   77AD E5            [11] 6720 	push	hl
   77AE CD 0A 43      [17] 6721 	call	_cpct_getScreenPtr
   77B1 4D            [ 4] 6722 	ld	c,l
   77B2 44            [ 4] 6723 	ld	b,h
   77B3 21 0F 00      [10] 6724 	ld	hl,#0x000F
   77B6 E5            [11] 6725 	push	hl
   77B7 C5            [11] 6726 	push	bc
   77B8 21 1F 78      [10] 6727 	ld	hl,#___str_54
   77BB E5            [11] 6728 	push	hl
   77BC CD E4 3E      [17] 6729 	call	_cpct_drawStringM0
   77BF 21 06 00      [10] 6730 	ld	hl,#6
   77C2 39            [11] 6731 	add	hl,sp
   77C3 F9            [ 6] 6732 	ld	sp,hl
                           6733 ;src/main.c:1335: cpct_drawStringM0(MUSICA, cpct_getScreenPtr(CPCT_VMEM_START, 26, 124), 15, 0);
   77C4 21 1A 7C      [10] 6734 	ld	hl,#0x7C1A
   77C7 E5            [11] 6735 	push	hl
   77C8 21 00 C0      [10] 6736 	ld	hl,#0xC000
   77CB E5            [11] 6737 	push	hl
   77CC CD 0A 43      [17] 6738 	call	_cpct_getScreenPtr
   77CF 4D            [ 4] 6739 	ld	c,l
   77D0 44            [ 4] 6740 	ld	b,h
   77D1 21 0F 00      [10] 6741 	ld	hl,#0x000F
   77D4 E5            [11] 6742 	push	hl
   77D5 C5            [11] 6743 	push	bc
   77D6 21 25 78      [10] 6744 	ld	hl,#___str_55
   77D9 E5            [11] 6745 	push	hl
   77DA CD E4 3E      [17] 6746 	call	_cpct_drawStringM0
   77DD 21 06 00      [10] 6747 	ld	hl,#6
   77E0 39            [11] 6748 	add	hl,sp
   77E1 F9            [ 6] 6749 	ld	sp,hl
                           6750 ;src/main.c:1336: cpct_drawStringM0(CONTROLES, cpct_getScreenPtr(CPCT_VMEM_START, 26, 144), 15, 0);
   77E2 21 1A 90      [10] 6751 	ld	hl,#0x901A
   77E5 E5            [11] 6752 	push	hl
   77E6 21 00 C0      [10] 6753 	ld	hl,#0xC000
   77E9 E5            [11] 6754 	push	hl
   77EA CD 0A 43      [17] 6755 	call	_cpct_getScreenPtr
   77ED 4D            [ 4] 6756 	ld	c,l
   77EE 44            [ 4] 6757 	ld	b,h
   77EF 21 0F 00      [10] 6758 	ld	hl,#0x000F
   77F2 E5            [11] 6759 	push	hl
   77F3 C5            [11] 6760 	push	bc
   77F4 21 2B 78      [10] 6761 	ld	hl,#___str_56
   77F7 E5            [11] 6762 	push	hl
   77F8 CD E4 3E      [17] 6763 	call	_cpct_drawStringM0
   77FB 21 06 00      [10] 6764 	ld	hl,#6
   77FE 39            [11] 6765 	add	hl,sp
   77FF F9            [ 6] 6766 	ld	sp,hl
                           6767 ;src/main.c:1337: cpct_drawStringM0(CREDITOS, cpct_getScreenPtr(CPCT_VMEM_START, 26, 164), 15, 0);
   7800 21 1A A4      [10] 6768 	ld	hl,#0xA41A
   7803 E5            [11] 6769 	push	hl
   7804 21 00 C0      [10] 6770 	ld	hl,#0xC000
   7807 E5            [11] 6771 	push	hl
   7808 CD 0A 43      [17] 6772 	call	_cpct_getScreenPtr
   780B 4D            [ 4] 6773 	ld	c,l
   780C 44            [ 4] 6774 	ld	b,h
   780D 21 0F 00      [10] 6775 	ld	hl,#0x000F
   7810 E5            [11] 6776 	push	hl
   7811 C5            [11] 6777 	push	bc
   7812 21 33 78      [10] 6778 	ld	hl,#___str_57
   7815 E5            [11] 6779 	push	hl
   7816 CD E4 3E      [17] 6780 	call	_cpct_drawStringM0
   7819 21 06 00      [10] 6781 	ld	hl,#6
   781C 39            [11] 6782 	add	hl,sp
   781D F9            [ 6] 6783 	ld	sp,hl
   781E C9            [10] 6784 	ret
   781F                    6785 ___str_54:
   781F 53 74 61 72 74     6786 	.ascii "Start"
   7824 00                 6787 	.db 0x00
   7825                    6788 ___str_55:
   7825 4D 75 73 69 63     6789 	.ascii "Music"
   782A 00                 6790 	.db 0x00
   782B                    6791 ___str_56:
   782B 43 6F 6E 74 72 6F  6792 	.ascii "Control"
        6C
   7832 00                 6793 	.db 0x00
   7833                    6794 ___str_57:
   7833 43 72 65 64 69 74  6795 	.ascii "Credits"
        73
   783A 00                 6796 	.db 0x00
                           6797 ;src/main.c:1341: void refrescarMenu(){
                           6798 ;	---------------------------------
                           6799 ; Function refrescarMenu
                           6800 ; ---------------------------------
   783B                    6801 _refrescarMenu::
                           6802 ;src/main.c:1343: llenarVmem(16,20,104,172,24);
   783B 21 AC 18      [10] 6803 	ld	hl,#0x18AC
   783E E5            [11] 6804 	push	hl
   783F 21 14 68      [10] 6805 	ld	hl,#0x6814
   7842 E5            [11] 6806 	push	hl
   7843 3E 10         [ 7] 6807 	ld	a,#0x10
   7845 F5            [11] 6808 	push	af
   7846 33            [ 6] 6809 	inc	sp
   7847 CD 53 64      [17] 6810 	call	_llenarVmem
   784A F1            [10] 6811 	pop	af
   784B F1            [10] 6812 	pop	af
   784C 33            [ 6] 6813 	inc	sp
                           6814 ;src/main.c:1345: switch(seleccion){
   784D 3E 03         [ 7] 6815 	ld	a,#0x03
   784F FD 21 AB 4F   [14] 6816 	ld	iy,#_seleccion
   7853 FD 96 00      [19] 6817 	sub	a, 0 (iy)
   7856 38 51         [12] 6818 	jr	C,00105$
   7858 FD 21 AB 4F   [14] 6819 	ld	iy,#_seleccion
   785C FD 5E 00      [19] 6820 	ld	e,0 (iy)
   785F 16 00         [ 7] 6821 	ld	d,#0x00
   7861 21 67 78      [10] 6822 	ld	hl,#00119$
   7864 19            [11] 6823 	add	hl,de
   7865 19            [11] 6824 	add	hl,de
                           6825 ;src/main.c:1346: case 0: dibujarCaritaPersonaje(2, 16, 104); break;
   7866 E9            [ 4] 6826 	jp	(hl)
   7867                    6827 00119$:
   7867 18 06         [12] 6828 	jr	00101$
   7869 18 13         [12] 6829 	jr	00102$
   786B 18 20         [12] 6830 	jr	00103$
   786D 18 2D         [12] 6831 	jr	00104$
   786F                    6832 00101$:
   786F 21 10 68      [10] 6833 	ld	hl,#0x6810
   7872 E5            [11] 6834 	push	hl
   7873 3E 02         [ 7] 6835 	ld	a,#0x02
   7875 F5            [11] 6836 	push	af
   7876 33            [ 6] 6837 	inc	sp
   7877 CD A2 64      [17] 6838 	call	_dibujarCaritaPersonaje
   787A F1            [10] 6839 	pop	af
   787B 33            [ 6] 6840 	inc	sp
   787C 18 2B         [12] 6841 	jr	00105$
                           6842 ;src/main.c:1347: case 1: dibujarCaritaPersonaje(2, 16, 124); break;
   787E                    6843 00102$:
   787E 21 10 7C      [10] 6844 	ld	hl,#0x7C10
   7881 E5            [11] 6845 	push	hl
   7882 3E 02         [ 7] 6846 	ld	a,#0x02
   7884 F5            [11] 6847 	push	af
   7885 33            [ 6] 6848 	inc	sp
   7886 CD A2 64      [17] 6849 	call	_dibujarCaritaPersonaje
   7889 F1            [10] 6850 	pop	af
   788A 33            [ 6] 6851 	inc	sp
   788B 18 1C         [12] 6852 	jr	00105$
                           6853 ;src/main.c:1348: case 2: dibujarCaritaPersonaje(2, 16, 144); break;    
   788D                    6854 00103$:
   788D 21 10 90      [10] 6855 	ld	hl,#0x9010
   7890 E5            [11] 6856 	push	hl
   7891 3E 02         [ 7] 6857 	ld	a,#0x02
   7893 F5            [11] 6858 	push	af
   7894 33            [ 6] 6859 	inc	sp
   7895 CD A2 64      [17] 6860 	call	_dibujarCaritaPersonaje
   7898 F1            [10] 6861 	pop	af
   7899 33            [ 6] 6862 	inc	sp
   789A 18 0D         [12] 6863 	jr	00105$
                           6864 ;src/main.c:1349: case 3: dibujarCaritaPersonaje(2, 16, 164); break;    
   789C                    6865 00104$:
   789C 21 10 A4      [10] 6866 	ld	hl,#0xA410
   789F E5            [11] 6867 	push	hl
   78A0 3E 02         [ 7] 6868 	ld	a,#0x02
   78A2 F5            [11] 6869 	push	af
   78A3 33            [ 6] 6870 	inc	sp
   78A4 CD A2 64      [17] 6871 	call	_dibujarCaritaPersonaje
   78A7 F1            [10] 6872 	pop	af
   78A8 33            [ 6] 6873 	inc	sp
                           6874 ;src/main.c:1350: }
   78A9                    6875 00105$:
                           6876 ;src/main.c:1352: if(seleccionMusica == 1)cpct_drawStringM0("Y", cpct_getScreenPtr(CPCT_VMEM_START, 52, 123), 11, 0);
   78A9 3A AD 4F      [13] 6877 	ld	a,(#_seleccionMusica + 0)
   78AC 3D            [ 4] 6878 	dec	a
   78AD 20 1F         [12] 6879 	jr	NZ,00107$
   78AF 21 34 7B      [10] 6880 	ld	hl,#0x7B34
   78B2 E5            [11] 6881 	push	hl
   78B3 21 00 C0      [10] 6882 	ld	hl,#0xC000
   78B6 E5            [11] 6883 	push	hl
   78B7 CD 0A 43      [17] 6884 	call	_cpct_getScreenPtr
   78BA 4D            [ 4] 6885 	ld	c,l
   78BB 44            [ 4] 6886 	ld	b,h
   78BC 21 0B 00      [10] 6887 	ld	hl,#0x000B
   78BF E5            [11] 6888 	push	hl
   78C0 C5            [11] 6889 	push	bc
   78C1 21 ED 78      [10] 6890 	ld	hl,#___str_58
   78C4 E5            [11] 6891 	push	hl
   78C5 CD E4 3E      [17] 6892 	call	_cpct_drawStringM0
   78C8 21 06 00      [10] 6893 	ld	hl,#6
   78CB 39            [11] 6894 	add	hl,sp
   78CC F9            [ 6] 6895 	ld	sp,hl
   78CD C9            [10] 6896 	ret
   78CE                    6897 00107$:
                           6898 ;src/main.c:1353: else cpct_drawStringM0("N", cpct_getScreenPtr(CPCT_VMEM_START, 52, 123), 4, 0);
   78CE 21 34 7B      [10] 6899 	ld	hl,#0x7B34
   78D1 E5            [11] 6900 	push	hl
   78D2 21 00 C0      [10] 6901 	ld	hl,#0xC000
   78D5 E5            [11] 6902 	push	hl
   78D6 CD 0A 43      [17] 6903 	call	_cpct_getScreenPtr
   78D9 4D            [ 4] 6904 	ld	c,l
   78DA 44            [ 4] 6905 	ld	b,h
   78DB 21 04 00      [10] 6906 	ld	hl,#0x0004
   78DE E5            [11] 6907 	push	hl
   78DF C5            [11] 6908 	push	bc
   78E0 21 EF 78      [10] 6909 	ld	hl,#___str_59
   78E3 E5            [11] 6910 	push	hl
   78E4 CD E4 3E      [17] 6911 	call	_cpct_drawStringM0
   78E7 21 06 00      [10] 6912 	ld	hl,#6
   78EA 39            [11] 6913 	add	hl,sp
   78EB F9            [ 6] 6914 	ld	sp,hl
   78EC C9            [10] 6915 	ret
   78ED                    6916 ___str_58:
   78ED 59                 6917 	.ascii "Y"
   78EE 00                 6918 	.db 0x00
   78EF                    6919 ___str_59:
   78EF 4E                 6920 	.ascii "N"
   78F0 00                 6921 	.db 0x00
                           6922 ;src/main.c:1358: void dibujarProta(){
                           6923 ;	---------------------------------
                           6924 ; Function dibujarProta
                           6925 ; ---------------------------------
   78F1                    6926 _dibujarProta::
                           6927 ;src/main.c:1361: u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, prota.x, prota.y);
   78F1 21 55 4F      [10] 6928 	ld	hl, #_prota + 1
   78F4 56            [ 7] 6929 	ld	d,(hl)
   78F5 21 54 4F      [10] 6930 	ld	hl, #_prota + 0
   78F8 46            [ 7] 6931 	ld	b,(hl)
   78F9 D5            [11] 6932 	push	de
   78FA 33            [ 6] 6933 	inc	sp
   78FB C5            [11] 6934 	push	bc
   78FC 33            [ 6] 6935 	inc	sp
   78FD 21 00 C0      [10] 6936 	ld	hl,#0xC000
   7900 E5            [11] 6937 	push	hl
   7901 CD 0A 43      [17] 6938 	call	_cpct_getScreenPtr
   7904 EB            [ 4] 6939 	ex	de,hl
                           6940 ;src/main.c:1362: cpct_drawSpriteMaskedAlignedTable(prota.frame->sprite, pvmem, PRE_JIMMY_TILESET_00_W, PRE_JIMMY_TILESET_00_H, pre_tablatrans);
   7905 2A 5D 4F      [16] 6941 	ld	hl, (#_prota + 9)
   7908 23            [ 6] 6942 	inc	hl
   7909 4E            [ 7] 6943 	ld	c,(hl)
   790A 23            [ 6] 6944 	inc	hl
   790B 46            [ 7] 6945 	ld	b,(hl)
   790C 21 00 01      [10] 6946 	ld	hl,#_pre_tablatrans
   790F E5            [11] 6947 	push	hl
   7910 21 05 0E      [10] 6948 	ld	hl,#0x0E05
   7913 E5            [11] 6949 	push	hl
   7914 D5            [11] 6950 	push	de
   7915 C5            [11] 6951 	push	bc
   7916 CD 2A 43      [17] 6952 	call	_cpct_drawSpriteMaskedAlignedTable
   7919 C9            [10] 6953 	ret
                           6954 ;src/main.c:1365: void dibujarProtaDos(){
                           6955 ;	---------------------------------
                           6956 ; Function dibujarProtaDos
                           6957 ; ---------------------------------
   791A                    6958 _dibujarProtaDos::
                           6959 ;src/main.c:1368: u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, protaDos.x, protaDos.y);
   791A 21 72 4F      [10] 6960 	ld	hl, #_protaDos + 1
   791D 56            [ 7] 6961 	ld	d,(hl)
   791E 21 71 4F      [10] 6962 	ld	hl, #_protaDos + 0
   7921 46            [ 7] 6963 	ld	b,(hl)
   7922 D5            [11] 6964 	push	de
   7923 33            [ 6] 6965 	inc	sp
   7924 C5            [11] 6966 	push	bc
   7925 33            [ 6] 6967 	inc	sp
   7926 21 00 C0      [10] 6968 	ld	hl,#0xC000
   7929 E5            [11] 6969 	push	hl
   792A CD 0A 43      [17] 6970 	call	_cpct_getScreenPtr
   792D EB            [ 4] 6971 	ex	de,hl
                           6972 ;src/main.c:1369: cpct_drawSpriteMaskedAlignedTable(protaDos.frame->sprite, pvmem, PRE_OBDULIA_TILESET_00_W, PRE_OBDULIA_TILESET_00_H, pre_tablatrans);
   792E 2A 7A 4F      [16] 6973 	ld	hl, (#_protaDos + 9)
   7931 23            [ 6] 6974 	inc	hl
   7932 4E            [ 7] 6975 	ld	c,(hl)
   7933 23            [ 6] 6976 	inc	hl
   7934 46            [ 7] 6977 	ld	b,(hl)
   7935 21 00 01      [10] 6978 	ld	hl,#_pre_tablatrans
   7938 E5            [11] 6979 	push	hl
   7939 21 05 0E      [10] 6980 	ld	hl,#0x0E05
   793C E5            [11] 6981 	push	hl
   793D D5            [11] 6982 	push	de
   793E C5            [11] 6983 	push	bc
   793F CD 2A 43      [17] 6984 	call	_cpct_drawSpriteMaskedAlignedTable
   7942 C9            [10] 6985 	ret
                           6986 ;src/main.c:1373: void borrarProta(){
                           6987 ;	---------------------------------
                           6988 ; Function borrarProta
                           6989 ; ---------------------------------
   7943                    6990 _borrarProta::
                           6991 ;src/main.c:1375: cpct_etm_drawTileBox2x4 (prota.px / 2, (prota.py - (ORIGEN_MAPA_Y)) / 4, 3, 4, pre_terrain_W, ORIGEN_MAPA, mapa);
   7943 ED 4B A3 4F   [20] 6992 	ld	bc,(_mapa)
   7947 21 58 4F      [10] 6993 	ld	hl, #_prota + 4
   794A 5E            [ 7] 6994 	ld	e,(hl)
   794B 16 00         [ 7] 6995 	ld	d,#0x00
   794D 63            [ 4] 6996 	ld	h,e
   794E 6A            [ 4] 6997 	ld	l,d
   794F CB 7A         [ 8] 6998 	bit	7, d
   7951 28 05         [12] 6999 	jr	Z,00103$
   7953 13            [ 6] 7000 	inc	de
   7954 13            [ 6] 7001 	inc	de
   7955 13            [ 6] 7002 	inc	de
   7956 63            [ 4] 7003 	ld	h,e
   7957 6A            [ 4] 7004 	ld	l,d
   7958                    7005 00103$:
   7958 5C            [ 4] 7006 	ld	e, h
   7959 55            [ 4] 7007 	ld	d, l
   795A CB 2A         [ 8] 7008 	sra	d
   795C CB 1B         [ 8] 7009 	rr	e
   795E CB 2A         [ 8] 7010 	sra	d
   7960 CB 1B         [ 8] 7011 	rr	e
   7962 3A 57 4F      [13] 7012 	ld	a, (#_prota + 3)
   7965 CB 3F         [ 8] 7013 	srl	a
   7967 57            [ 4] 7014 	ld	d,a
   7968 C5            [11] 7015 	push	bc
   7969 21 00 C0      [10] 7016 	ld	hl,#0xC000
   796C E5            [11] 7017 	push	hl
   796D 21 04 27      [10] 7018 	ld	hl,#0x2704
   7970 E5            [11] 7019 	push	hl
   7971 3E 03         [ 7] 7020 	ld	a,#0x03
   7973 F5            [11] 7021 	push	af
   7974 33            [ 6] 7022 	inc	sp
   7975 7B            [ 4] 7023 	ld	a,e
   7976 F5            [11] 7024 	push	af
   7977 33            [ 6] 7025 	inc	sp
   7978 D5            [11] 7026 	push	de
   7979 33            [ 6] 7027 	inc	sp
   797A CD AD 3F      [17] 7028 	call	_cpct_etm_drawTileBox2x4
   797D C9            [10] 7029 	ret
                           7030 ;src/main.c:1378: void borrarProtaDos(){
                           7031 ;	---------------------------------
                           7032 ; Function borrarProtaDos
                           7033 ; ---------------------------------
   797E                    7034 _borrarProtaDos::
                           7035 ;src/main.c:1380: cpct_etm_drawTileBox2x4 (protaDos.px / 2, (protaDos.py - (ORIGEN_MAPA_Y)) / 4, 3, 4, pre_terrain_W, ORIGEN_MAPA, mapa);
   797E ED 4B A3 4F   [20] 7036 	ld	bc,(_mapa)
   7982 21 75 4F      [10] 7037 	ld	hl, #_protaDos + 4
   7985 5E            [ 7] 7038 	ld	e,(hl)
   7986 16 00         [ 7] 7039 	ld	d,#0x00
   7988 63            [ 4] 7040 	ld	h,e
   7989 6A            [ 4] 7041 	ld	l,d
   798A CB 7A         [ 8] 7042 	bit	7, d
   798C 28 05         [12] 7043 	jr	Z,00103$
   798E 13            [ 6] 7044 	inc	de
   798F 13            [ 6] 7045 	inc	de
   7990 13            [ 6] 7046 	inc	de
   7991 63            [ 4] 7047 	ld	h,e
   7992 6A            [ 4] 7048 	ld	l,d
   7993                    7049 00103$:
   7993 5C            [ 4] 7050 	ld	e, h
   7994 55            [ 4] 7051 	ld	d, l
   7995 CB 2A         [ 8] 7052 	sra	d
   7997 CB 1B         [ 8] 7053 	rr	e
   7999 CB 2A         [ 8] 7054 	sra	d
   799B CB 1B         [ 8] 7055 	rr	e
   799D 3A 74 4F      [13] 7056 	ld	a, (#_protaDos + 3)
   79A0 CB 3F         [ 8] 7057 	srl	a
   79A2 57            [ 4] 7058 	ld	d,a
   79A3 C5            [11] 7059 	push	bc
   79A4 21 00 C0      [10] 7060 	ld	hl,#0xC000
   79A7 E5            [11] 7061 	push	hl
   79A8 21 04 27      [10] 7062 	ld	hl,#0x2704
   79AB E5            [11] 7063 	push	hl
   79AC 3E 03         [ 7] 7064 	ld	a,#0x03
   79AE F5            [11] 7065 	push	af
   79AF 33            [ 6] 7066 	inc	sp
   79B0 7B            [ 4] 7067 	ld	a,e
   79B1 F5            [11] 7068 	push	af
   79B2 33            [ 6] 7069 	inc	sp
   79B3 D5            [11] 7070 	push	de
   79B4 33            [ 6] 7071 	inc	sp
   79B5 CD AD 3F      [17] 7072 	call	_cpct_etm_drawTileBox2x4
   79B8 C9            [10] 7073 	ret
                           7074 ;src/main.c:1384: void redibujarProta(){
                           7075 ;	---------------------------------
                           7076 ; Function redibujarProta
                           7077 ; ---------------------------------
   79B9                    7078 _redibujarProta::
                           7079 ;src/main.c:1385: borrarProta();
   79B9 CD 43 79      [17] 7080 	call	_borrarProta
                           7081 ;src/main.c:1386: prota.px = prota.x;
   79BC 01 57 4F      [10] 7082 	ld	bc,#_prota + 3
   79BF 3A 54 4F      [13] 7083 	ld	a, (#_prota + 0)
   79C2 02            [ 7] 7084 	ld	(bc),a
                           7085 ;src/main.c:1387: prota.py = prota.y;
   79C3 01 58 4F      [10] 7086 	ld	bc,#_prota + 4
   79C6 3A 55 4F      [13] 7087 	ld	a, (#_prota + 1)
   79C9 02            [ 7] 7088 	ld	(bc),a
                           7089 ;src/main.c:1388: dibujarProta();
   79CA C3 F1 78      [10] 7090 	jp  _dibujarProta
                           7091 ;src/main.c:1390: void redibujarProtaDos(){
                           7092 ;	---------------------------------
                           7093 ; Function redibujarProtaDos
                           7094 ; ---------------------------------
   79CD                    7095 _redibujarProtaDos::
                           7096 ;src/main.c:1391: borrarProtaDos();
   79CD CD 7E 79      [17] 7097 	call	_borrarProtaDos
                           7098 ;src/main.c:1392: protaDos.px = protaDos.x;
   79D0 01 74 4F      [10] 7099 	ld	bc,#_protaDos + 3
   79D3 3A 71 4F      [13] 7100 	ld	a, (#_protaDos + 0)
   79D6 02            [ 7] 7101 	ld	(bc),a
                           7102 ;src/main.c:1393: protaDos.py = protaDos.y;
   79D7 01 75 4F      [10] 7103 	ld	bc,#_protaDos + 4
   79DA 3A 72 4F      [13] 7104 	ld	a, (#_protaDos + 1)
   79DD 02            [ 7] 7105 	ld	(bc),a
                           7106 ;src/main.c:1394: dibujarProtaDos();
   79DE C3 1A 79      [10] 7107 	jp  _dibujarProtaDos
                           7108 ;src/main.c:1402: void comprobarLimites(TProta * pro, Tdisparo * disp){
                           7109 ;	---------------------------------
                           7110 ; Function comprobarLimites
                           7111 ; ---------------------------------
   79E1                    7112 _comprobarLimites::
   79E1 DD E5         [15] 7113 	push	ix
   79E3 DD 21 00 00   [14] 7114 	ld	ix,#0
   79E7 DD 39         [15] 7115 	add	ix,sp
   79E9 21 F8 FF      [10] 7116 	ld	hl,#-8
   79EC 39            [11] 7117 	add	hl,sp
   79ED F9            [ 6] 7118 	ld	sp,hl
                           7119 ;src/main.c:1404: if(pro->miraAtacando==M_abajo){
   79EE DD 5E 04      [19] 7120 	ld	e,4 (ix)
   79F1 DD 56 05      [19] 7121 	ld	d,5 (ix)
   79F4 D5            [11] 7122 	push	de
   79F5 FD E1         [14] 7123 	pop	iy
   79F7 FD 7E 18      [19] 7124 	ld	a,24 (iy)
   79FA DD 77 FB      [19] 7125 	ld	-5 (ix),a
                           7126 ;src/main.c:1405: if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+25 || disp->y < 1) && pro->disparando==SI){
   79FD DD 4E 06      [19] 7127 	ld	c,6 (ix)
   7A00 DD 46 07      [19] 7128 	ld	b,7 (ix)
   7A03 21 15 00      [10] 7129 	ld	hl,#0x0015
   7A06 19            [11] 7130 	add	hl,de
   7A07 DD 75 FE      [19] 7131 	ld	-2 (ix),l
   7A0A DD 74 FF      [19] 7132 	ld	-1 (ix),h
   7A0D 0A            [ 7] 7133 	ld	a,(bc)
   7A0E 6F            [ 4] 7134 	ld	l,a
   7A0F 59            [ 4] 7135 	ld	e, c
   7A10 50            [ 4] 7136 	ld	d, b
   7A11 13            [ 6] 7137 	inc	de
                           7138 ;src/main.c:1408: disp->px=disp->x;
   7A12 79            [ 4] 7139 	ld	a,c
   7A13 C6 02         [ 7] 7140 	add	a, #0x02
   7A15 DD 77 FC      [19] 7141 	ld	-4 (ix),a
   7A18 78            [ 4] 7142 	ld	a,b
   7A19 CE 00         [ 7] 7143 	adc	a, #0x00
   7A1B DD 77 FD      [19] 7144 	ld	-3 (ix),a
                           7145 ;src/main.c:1412: disp->py = 0;
   7A1E 79            [ 4] 7146 	ld	a,c
   7A1F C6 03         [ 7] 7147 	add	a, #0x03
   7A21 DD 77 F9      [19] 7148 	ld	-7 (ix),a
   7A24 78            [ 4] 7149 	ld	a,b
   7A25 CE 00         [ 7] 7150 	adc	a, #0x00
   7A27 DD 77 FA      [19] 7151 	ld	-6 (ix),a
                           7152 ;src/main.c:1405: if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+25 || disp->y < 1) && pro->disparando==SI){
   7A2A 3E 4A         [ 7] 7153 	ld	a,#0x4A
   7A2C 95            [ 4] 7154 	sub	a, l
   7A2D 3E 00         [ 7] 7155 	ld	a,#0x00
   7A2F 17            [ 4] 7156 	rla
   7A30 DD 77 F8      [19] 7157 	ld	-8 (ix),a
   7A33 7D            [ 4] 7158 	ld	a,l
   7A34 D6 01         [ 7] 7159 	sub	a, #0x01
   7A36 3E 00         [ 7] 7160 	ld	a,#0x00
   7A38 17            [ 4] 7161 	rla
   7A39 6F            [ 4] 7162 	ld	l,a
                           7163 ;src/main.c:1404: if(pro->miraAtacando==M_abajo){
   7A3A DD 7E FB      [19] 7164 	ld	a,-5 (ix)
   7A3D D6 02         [ 7] 7165 	sub	a, #0x02
   7A3F 20 59         [12] 7166 	jr	NZ,00114$
                           7167 ;src/main.c:1405: if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+25 || disp->y < 1) && pro->disparando==SI){
   7A41 DD 7E F8      [19] 7168 	ld	a,-8 (ix)
   7A44 B7            [ 4] 7169 	or	a,a
   7A45 20 10         [12] 7170 	jr	NZ,00106$
   7A47 B5            [ 4] 7171 	or	a,l
   7A48 20 0D         [12] 7172 	jr	NZ,00106$
   7A4A 1A            [ 7] 7173 	ld	a,(de)
   7A4B 6F            [ 4] 7174 	ld	l,a
   7A4C 3E BE         [ 7] 7175 	ld	a,#0xBE
   7A4E 95            [ 4] 7176 	sub	a, l
   7A4F 38 06         [12] 7177 	jr	C,00106$
   7A51 7D            [ 4] 7178 	ld	a,l
   7A52 D6 01         [ 7] 7179 	sub	a, #0x01
   7A54 D2 EF 7A      [10] 7180 	jp	NC,00116$
   7A57                    7181 00106$:
   7A57 DD 6E FE      [19] 7182 	ld	l,-2 (ix)
   7A5A DD 66 FF      [19] 7183 	ld	h,-1 (ix)
   7A5D 6E            [ 7] 7184 	ld	l,(hl)
   7A5E 2D            [ 4] 7185 	dec	l
   7A5F C2 EF 7A      [10] 7186 	jp	NZ,00116$
                           7187 ;src/main.c:1406: pro->disparando=NO;
   7A62 DD 6E FE      [19] 7188 	ld	l,-2 (ix)
   7A65 DD 66 FF      [19] 7189 	ld	h,-1 (ix)
   7A68 36 00         [10] 7190 	ld	(hl),#0x00
                           7191 ;src/main.c:1407: borrarDisparoHorizontal(disp);
   7A6A C5            [11] 7192 	push	bc
   7A6B D5            [11] 7193 	push	de
   7A6C C5            [11] 7194 	push	bc
   7A6D CD 16 82      [17] 7195 	call	_borrarDisparoHorizontal
   7A70 F1            [10] 7196 	pop	af
   7A71 D1            [10] 7197 	pop	de
   7A72 C1            [10] 7198 	pop	bc
                           7199 ;src/main.c:1408: disp->px=disp->x;
   7A73 0A            [ 7] 7200 	ld	a,(bc)
   7A74 DD 6E FC      [19] 7201 	ld	l,-4 (ix)
   7A77 DD 66 FD      [19] 7202 	ld	h,-3 (ix)
   7A7A 77            [ 7] 7203 	ld	(hl),a
                           7204 ;src/main.c:1409: borrarDisparoVertical(disp);
   7A7B C5            [11] 7205 	push	bc
   7A7C D5            [11] 7206 	push	de
   7A7D C5            [11] 7207 	push	bc
   7A7E CD 56 82      [17] 7208 	call	_borrarDisparoVertical
   7A81 F1            [10] 7209 	pop	af
   7A82 D1            [10] 7210 	pop	de
   7A83 C1            [10] 7211 	pop	bc
                           7212 ;src/main.c:1410: disp->y = 0;
   7A84 AF            [ 4] 7213 	xor	a, a
   7A85 12            [ 7] 7214 	ld	(de),a
                           7215 ;src/main.c:1411: disp->x = 0;
   7A86 AF            [ 4] 7216 	xor	a, a
   7A87 02            [ 7] 7217 	ld	(bc),a
                           7218 ;src/main.c:1412: disp->py = 0;
   7A88 DD 6E F9      [19] 7219 	ld	l,-7 (ix)
   7A8B DD 66 FA      [19] 7220 	ld	h,-6 (ix)
   7A8E 36 00         [10] 7221 	ld	(hl),#0x00
                           7222 ;src/main.c:1413: disp->px = 0;
   7A90 DD 6E FC      [19] 7223 	ld	l,-4 (ix)
   7A93 DD 66 FD      [19] 7224 	ld	h,-3 (ix)
   7A96 36 00         [10] 7225 	ld	(hl),#0x00
   7A98 18 55         [12] 7226 	jr	00116$
   7A9A                    7227 00114$:
                           7228 ;src/main.c:1418: if((disp->x>(11*6)+8 || disp->x<1 || disp->y > 15*11+26 || disp->y < 1) && pro->disparando==SI){
   7A9A DD 7E F8      [19] 7229 	ld	a,-8 (ix)
   7A9D B7            [ 4] 7230 	or	a,a
   7A9E 20 0F         [12] 7231 	jr	NZ,00112$
   7AA0 B5            [ 4] 7232 	or	a,l
   7AA1 20 0C         [12] 7233 	jr	NZ,00112$
   7AA3 1A            [ 7] 7234 	ld	a,(de)
   7AA4 6F            [ 4] 7235 	ld	l,a
   7AA5 3E BF         [ 7] 7236 	ld	a,#0xBF
   7AA7 95            [ 4] 7237 	sub	a, l
   7AA8 38 05         [12] 7238 	jr	C,00112$
   7AAA 7D            [ 4] 7239 	ld	a,l
   7AAB D6 01         [ 7] 7240 	sub	a, #0x01
   7AAD 30 40         [12] 7241 	jr	NC,00116$
   7AAF                    7242 00112$:
   7AAF DD 6E FE      [19] 7243 	ld	l,-2 (ix)
   7AB2 DD 66 FF      [19] 7244 	ld	h,-1 (ix)
   7AB5 6E            [ 7] 7245 	ld	l,(hl)
   7AB6 2D            [ 4] 7246 	dec	l
   7AB7 20 36         [12] 7247 	jr	NZ,00116$
                           7248 ;src/main.c:1419: pro->disparando=NO;
   7AB9 DD 6E FE      [19] 7249 	ld	l,-2 (ix)
   7ABC DD 66 FF      [19] 7250 	ld	h,-1 (ix)
   7ABF 36 00         [10] 7251 	ld	(hl),#0x00
                           7252 ;src/main.c:1420: borrarDisparoHorizontal(disp);
   7AC1 C5            [11] 7253 	push	bc
   7AC2 D5            [11] 7254 	push	de
   7AC3 C5            [11] 7255 	push	bc
   7AC4 CD 16 82      [17] 7256 	call	_borrarDisparoHorizontal
   7AC7 F1            [10] 7257 	pop	af
   7AC8 D1            [10] 7258 	pop	de
   7AC9 C1            [10] 7259 	pop	bc
                           7260 ;src/main.c:1421: disp->px=disp->x;
   7ACA 0A            [ 7] 7261 	ld	a,(bc)
   7ACB DD 6E FC      [19] 7262 	ld	l,-4 (ix)
   7ACE DD 66 FD      [19] 7263 	ld	h,-3 (ix)
   7AD1 77            [ 7] 7264 	ld	(hl),a
                           7265 ;src/main.c:1422: borrarDisparoVertical(disp);
   7AD2 C5            [11] 7266 	push	bc
   7AD3 D5            [11] 7267 	push	de
   7AD4 C5            [11] 7268 	push	bc
   7AD5 CD 56 82      [17] 7269 	call	_borrarDisparoVertical
   7AD8 F1            [10] 7270 	pop	af
   7AD9 D1            [10] 7271 	pop	de
   7ADA C1            [10] 7272 	pop	bc
                           7273 ;src/main.c:1423: disp->y = 0;
   7ADB AF            [ 4] 7274 	xor	a, a
   7ADC 12            [ 7] 7275 	ld	(de),a
                           7276 ;src/main.c:1424: disp->x = 0;
   7ADD AF            [ 4] 7277 	xor	a, a
   7ADE 02            [ 7] 7278 	ld	(bc),a
                           7279 ;src/main.c:1425: disp->py = 0;
   7ADF DD 6E F9      [19] 7280 	ld	l,-7 (ix)
   7AE2 DD 66 FA      [19] 7281 	ld	h,-6 (ix)
   7AE5 36 00         [10] 7282 	ld	(hl),#0x00
                           7283 ;src/main.c:1426: disp->px = 0;
   7AE7 DD 6E FC      [19] 7284 	ld	l,-4 (ix)
   7AEA DD 66 FD      [19] 7285 	ld	h,-3 (ix)
   7AED 36 00         [10] 7286 	ld	(hl),#0x00
   7AEF                    7287 00116$:
   7AEF DD F9         [10] 7288 	ld	sp, ix
   7AF1 DD E1         [14] 7289 	pop	ix
   7AF3 C9            [10] 7290 	ret
                           7291 ;src/main.c:1433: void compruebaDisparos(){
                           7292 ;	---------------------------------
                           7293 ; Function compruebaDisparos
                           7294 ; ---------------------------------
   7AF4                    7295 _compruebaDisparos::
   7AF4 DD E5         [15] 7296 	push	ix
   7AF6 DD 21 00 00   [14] 7297 	ld	ix,#0
   7AFA DD 39         [15] 7298 	add	ix,sp
   7AFC F5            [11] 7299 	push	af
   7AFD F5            [11] 7300 	push	af
                           7301 ;src/main.c:1434: if(disparo.x<disparoDos.x+6 && disparo.x>disparoDos.x-6 && disparo.y<disparoDos.y+12 && disparo.y>disparoDos.y-10 && disparo.x!=0){
   7AFE 21 8E 4F      [10] 7302 	ld	hl,#_disparo+0
   7B01 5E            [ 7] 7303 	ld	e,(hl)
   7B02 3A 96 4F      [13] 7304 	ld	a, (#_disparoDos + 0)
   7B05 DD 77 FE      [19] 7305 	ld	-2 (ix),a
   7B08 DD 36 FF 00   [19] 7306 	ld	-1 (ix),#0x00
   7B0C DD 7E FE      [19] 7307 	ld	a,-2 (ix)
   7B0F C6 06         [ 7] 7308 	add	a, #0x06
   7B11 4F            [ 4] 7309 	ld	c,a
   7B12 DD 7E FF      [19] 7310 	ld	a,-1 (ix)
   7B15 CE 00         [ 7] 7311 	adc	a, #0x00
   7B17 47            [ 4] 7312 	ld	b,a
   7B18 DD 73 FC      [19] 7313 	ld	-4 (ix),e
   7B1B DD 36 FD 00   [19] 7314 	ld	-3 (ix),#0x00
   7B1F DD 7E FC      [19] 7315 	ld	a,-4 (ix)
   7B22 91            [ 4] 7316 	sub	a, c
   7B23 DD 7E FD      [19] 7317 	ld	a,-3 (ix)
   7B26 98            [ 4] 7318 	sbc	a, b
   7B27 E2 2C 7B      [10] 7319 	jp	PO, 00150$
   7B2A EE 80         [ 7] 7320 	xor	a, #0x80
   7B2C                    7321 00150$:
   7B2C F2 67 7C      [10] 7322 	jp	P,00116$
   7B2F DD 7E FE      [19] 7323 	ld	a,-2 (ix)
   7B32 C6 FA         [ 7] 7324 	add	a,#0xFA
   7B34 4F            [ 4] 7325 	ld	c,a
   7B35 DD 7E FF      [19] 7326 	ld	a,-1 (ix)
   7B38 CE FF         [ 7] 7327 	adc	a,#0xFF
   7B3A 47            [ 4] 7328 	ld	b,a
   7B3B 79            [ 4] 7329 	ld	a,c
   7B3C DD 96 FC      [19] 7330 	sub	a, -4 (ix)
   7B3F 78            [ 4] 7331 	ld	a,b
   7B40 DD 9E FD      [19] 7332 	sbc	a, -3 (ix)
   7B43 E2 48 7B      [10] 7333 	jp	PO, 00151$
   7B46 EE 80         [ 7] 7334 	xor	a, #0x80
   7B48                    7335 00151$:
   7B48 F2 67 7C      [10] 7336 	jp	P,00116$
   7B4B 21 8F 4F      [10] 7337 	ld	hl, #(_disparo + 0x0001) + 0
   7B4E 4E            [ 7] 7338 	ld	c,(hl)
   7B4F 21 97 4F      [10] 7339 	ld	hl, #(_disparoDos + 0x0001) + 0
   7B52 5E            [ 7] 7340 	ld	e,(hl)
   7B53 16 00         [ 7] 7341 	ld	d,#0x00
   7B55 21 0C 00      [10] 7342 	ld	hl,#0x000C
   7B58 19            [11] 7343 	add	hl,de
   7B59 06 00         [ 7] 7344 	ld	b,#0x00
   7B5B 79            [ 4] 7345 	ld	a,c
   7B5C 95            [ 4] 7346 	sub	a, l
   7B5D 78            [ 4] 7347 	ld	a,b
   7B5E 9C            [ 4] 7348 	sbc	a, h
   7B5F E2 64 7B      [10] 7349 	jp	PO, 00152$
   7B62 EE 80         [ 7] 7350 	xor	a, #0x80
   7B64                    7351 00152$:
   7B64 F2 67 7C      [10] 7352 	jp	P,00116$
   7B67 7B            [ 4] 7353 	ld	a,e
   7B68 C6 F6         [ 7] 7354 	add	a,#0xF6
   7B6A 5F            [ 4] 7355 	ld	e,a
   7B6B 7A            [ 4] 7356 	ld	a,d
   7B6C CE FF         [ 7] 7357 	adc	a,#0xFF
   7B6E 57            [ 4] 7358 	ld	d,a
   7B6F 7B            [ 4] 7359 	ld	a,e
   7B70 91            [ 4] 7360 	sub	a, c
   7B71 7A            [ 4] 7361 	ld	a,d
   7B72 98            [ 4] 7362 	sbc	a, b
   7B73 E2 78 7B      [10] 7363 	jp	PO, 00153$
   7B76 EE 80         [ 7] 7364 	xor	a, #0x80
   7B78                    7365 00153$:
   7B78 F2 67 7C      [10] 7366 	jp	P,00116$
   7B7B 3A 8E 4F      [13] 7367 	ld	a, (#_disparo + 0)
   7B7E B7            [ 4] 7368 	or	a, a
   7B7F CA 67 7C      [10] 7369 	jp	Z,00116$
                           7370 ;src/main.c:1435: borrarDisparoHorizontal(&disparoDos);
   7B82 21 96 4F      [10] 7371 	ld	hl,#_disparoDos
   7B85 E5            [11] 7372 	push	hl
   7B86 CD 16 82      [17] 7373 	call	_borrarDisparoHorizontal
                           7374 ;src/main.c:1436: borrarDisparoHorizontal(&disparo);
   7B89 21 8E 4F      [10] 7375 	ld	hl, #_disparo
   7B8C E3            [19] 7376 	ex	(sp),hl
   7B8D CD 16 82      [17] 7377 	call	_borrarDisparoHorizontal
   7B90 F1            [10] 7378 	pop	af
                           7379 ;src/main.c:1437: if(prota.miraAtacando==M_abajo || prota.miraAtacando==M_arriba){
   7B91 3A 6C 4F      [13] 7380 	ld	a,(#(_prota + 0x0018) + 0)
   7B94 DD 77 FC      [19] 7381 	ld	-4 (ix), a
   7B97 D6 02         [ 7] 7382 	sub	a, #0x02
   7B99 28 07         [12] 7383 	jr	Z,00101$
   7B9B DD 7E FC      [19] 7384 	ld	a,-4 (ix)
   7B9E D6 03         [ 7] 7385 	sub	a, #0x03
   7BA0 20 0F         [12] 7386 	jr	NZ,00102$
   7BA2                    7387 00101$:
                           7388 ;src/main.c:1438: borrarDisparoVertical(&disparo);
   7BA2 21 8E 4F      [10] 7389 	ld	hl,#_disparo
   7BA5 E5            [11] 7390 	push	hl
   7BA6 CD 56 82      [17] 7391 	call	_borrarDisparoVertical
                           7392 ;src/main.c:1439: borrarDisparoVertical(&disparoDos);
   7BA9 21 96 4F      [10] 7393 	ld	hl, #_disparoDos
   7BAC E3            [19] 7394 	ex	(sp),hl
   7BAD CD 56 82      [17] 7395 	call	_borrarDisparoVertical
   7BB0 F1            [10] 7396 	pop	af
   7BB1                    7397 00102$:
                           7398 ;src/main.c:1443: if(prota.miraAtacando==M_derecha){
   7BB1 3A 6C 4F      [13] 7399 	ld	a,(#(_prota + 0x0018) + 0)
   7BB4 DD 77 FC      [19] 7400 	ld	-4 (ix),a
                           7401 ;src/main.c:1434: if(disparo.x<disparoDos.x+6 && disparo.x>disparoDos.x-6 && disparo.y<disparoDos.y+12 && disparo.y>disparoDos.y-10 && disparo.x!=0){
   7BB7 3A 8E 4F      [13] 7402 	ld	a,(#_disparo + 0)
   7BBA DD 77 FE      [19] 7403 	ld	-2 (ix),a
                           7404 ;src/main.c:1444: disparo.px=disparo.x+1;
                           7405 ;src/main.c:1443: if(prota.miraAtacando==M_derecha){
   7BBD DD 7E FC      [19] 7406 	ld	a,-4 (ix)
   7BC0 B7            [ 4] 7407 	or	a, a
   7BC1 20 4E         [12] 7408 	jr	NZ,00105$
                           7409 ;src/main.c:1444: disparo.px=disparo.x+1;
   7BC3 DD 7E FE      [19] 7410 	ld	a,-2 (ix)
   7BC6 3C            [ 4] 7411 	inc	a
   7BC7 DD 77 FC      [19] 7412 	ld	-4 (ix),a
   7BCA 21 90 4F      [10] 7413 	ld	hl,#(_disparo + 0x0002)
   7BCD DD 7E FC      [19] 7414 	ld	a,-4 (ix)
   7BD0 77            [ 7] 7415 	ld	(hl),a
                           7416 ;src/main.c:1445: borrarDisparoHorizontal(&disparo);
   7BD1 21 8E 4F      [10] 7417 	ld	hl,#_disparo
   7BD4 E5            [11] 7418 	push	hl
   7BD5 CD 16 82      [17] 7419 	call	_borrarDisparoHorizontal
   7BD8 F1            [10] 7420 	pop	af
                           7421 ;src/main.c:1446: disparo.px=disparo.x-4;
   7BD9 3A 8E 4F      [13] 7422 	ld	a, (#_disparo + 0)
   7BDC C6 FC         [ 7] 7423 	add	a,#0xFC
   7BDE 32 90 4F      [13] 7424 	ld	(#(_disparo + 0x0002)),a
                           7425 ;src/main.c:1447: borrarDisparoHorizontal(&disparo);
   7BE1 21 8E 4F      [10] 7426 	ld	hl,#_disparo
   7BE4 E5            [11] 7427 	push	hl
   7BE5 CD 16 82      [17] 7428 	call	_borrarDisparoHorizontal
   7BE8 F1            [10] 7429 	pop	af
                           7430 ;src/main.c:1448: disparo.px=disparo.x-2;
   7BE9 3A 8E 4F      [13] 7431 	ld	a, (#_disparo + 0)
   7BEC C6 FE         [ 7] 7432 	add	a,#0xFE
   7BEE 32 90 4F      [13] 7433 	ld	(#(_disparo + 0x0002)),a
                           7434 ;src/main.c:1449: borrarDisparoHorizontal(&disparo);
   7BF1 21 8E 4F      [10] 7435 	ld	hl,#_disparo
   7BF4 E5            [11] 7436 	push	hl
   7BF5 CD 16 82      [17] 7437 	call	_borrarDisparoHorizontal
   7BF8 F1            [10] 7438 	pop	af
                           7439 ;src/main.c:1450: disparo.px=disparo.x-6;
   7BF9 3A 8E 4F      [13] 7440 	ld	a, (#_disparo + 0)
   7BFC C6 FA         [ 7] 7441 	add	a,#0xFA
   7BFE 32 90 4F      [13] 7442 	ld	(#(_disparo + 0x0002)),a
                           7443 ;src/main.c:1451: borrarDisparoHorizontal(&disparo);
   7C01 21 8E 4F      [10] 7444 	ld	hl,#_disparo
   7C04 E5            [11] 7445 	push	hl
   7C05 CD 16 82      [17] 7446 	call	_borrarDisparoHorizontal
   7C08 F1            [10] 7447 	pop	af
                           7448 ;src/main.c:1452: disparo.px=disparo.x;
   7C09 3A 8E 4F      [13] 7449 	ld	a, (#_disparo + 0)
   7C0C 32 90 4F      [13] 7450 	ld	(#(_disparo + 0x0002)),a
   7C0F 18 07         [12] 7451 	jr	00106$
   7C11                    7452 00105$:
                           7453 ;src/main.c:1456: disparo.px=disparo.x;
   7C11 21 90 4F      [10] 7454 	ld	hl,#(_disparo + 0x0002)
   7C14 DD 7E FE      [19] 7455 	ld	a,-2 (ix)
   7C17 77            [ 7] 7456 	ld	(hl),a
   7C18                    7457 00106$:
                           7458 ;src/main.c:1458: if(protaDos.miraAtacando==M_derecha){
   7C18 21 89 4F      [10] 7459 	ld	hl, #_protaDos + 24
   7C1B 4E            [ 7] 7460 	ld	c,(hl)
                           7461 ;src/main.c:1459: disparoDos.px=disparoDos.x+1;
   7C1C 11 98 4F      [10] 7462 	ld	de,#_disparoDos + 2
   7C1F 21 96 4F      [10] 7463 	ld	hl, #_disparoDos + 0
   7C22 46            [ 7] 7464 	ld	b,(hl)
                           7465 ;src/main.c:1458: if(protaDos.miraAtacando==M_derecha){
   7C23 79            [ 4] 7466 	ld	a,c
   7C24 B7            [ 4] 7467 	or	a, a
   7C25 20 05         [12] 7468 	jr	NZ,00108$
                           7469 ;src/main.c:1459: disparoDos.px=disparoDos.x+1;
   7C27 78            [ 4] 7470 	ld	a,b
   7C28 3C            [ 4] 7471 	inc	a
   7C29 12            [ 7] 7472 	ld	(de),a
   7C2A 18 02         [12] 7473 	jr	00109$
   7C2C                    7474 00108$:
                           7475 ;src/main.c:1462: disparoDos.px=disparoDos.x;
   7C2C 78            [ 4] 7476 	ld	a,b
   7C2D 12            [ 7] 7477 	ld	(de),a
   7C2E                    7478 00109$:
                           7479 ;src/main.c:1464: disparo.py=disparo.y;
   7C2E 3A 8F 4F      [13] 7480 	ld	a, (#(_disparo + 0x0001) + 0)
   7C31 32 91 4F      [13] 7481 	ld	(#(_disparo + 0x0003)),a
                           7482 ;src/main.c:1465: disparoDos.py=disparoDos.y;
   7C34 3A 97 4F      [13] 7483 	ld	a, (#(_disparoDos + 0x0001) + 0)
   7C37 32 99 4F      [13] 7484 	ld	(#(_disparoDos + 0x0003)),a
                           7485 ;src/main.c:1467: borrarDisparoHorizontal(&disparoDos);
   7C3A 21 96 4F      [10] 7486 	ld	hl,#_disparoDos
   7C3D E5            [11] 7487 	push	hl
   7C3E CD 16 82      [17] 7488 	call	_borrarDisparoHorizontal
                           7489 ;src/main.c:1468: borrarDisparoHorizontal(&disparo);
   7C41 21 8E 4F      [10] 7490 	ld	hl, #_disparo
   7C44 E3            [19] 7491 	ex	(sp),hl
   7C45 CD 16 82      [17] 7492 	call	_borrarDisparoHorizontal
   7C48 F1            [10] 7493 	pop	af
                           7494 ;src/main.c:1469: disparo.x=0;
   7C49 21 8E 4F      [10] 7495 	ld	hl,#_disparo
   7C4C 36 00         [10] 7496 	ld	(hl),#0x00
                           7497 ;src/main.c:1470: disparoDos.x=0;
   7C4E 21 96 4F      [10] 7498 	ld	hl,#_disparoDos
   7C51 36 00         [10] 7499 	ld	(hl),#0x00
                           7500 ;src/main.c:1471: disparo.y=0;
   7C53 21 8F 4F      [10] 7501 	ld	hl,#(_disparo + 0x0001)
   7C56 36 00         [10] 7502 	ld	(hl),#0x00
                           7503 ;src/main.c:1472: disparoDos.y=0;
   7C58 21 97 4F      [10] 7504 	ld	hl,#(_disparoDos + 0x0001)
   7C5B 36 00         [10] 7505 	ld	(hl),#0x00
                           7506 ;src/main.c:1473: prota.disparando=NO;
   7C5D 21 69 4F      [10] 7507 	ld	hl,#(_prota + 0x0015)
   7C60 36 00         [10] 7508 	ld	(hl),#0x00
                           7509 ;src/main.c:1474: protaDos.disparando=NO;
   7C62 21 86 4F      [10] 7510 	ld	hl,#(_protaDos + 0x0015)
   7C65 36 00         [10] 7511 	ld	(hl),#0x00
   7C67                    7512 00116$:
   7C67 DD F9         [10] 7513 	ld	sp, ix
   7C69 DD E1         [14] 7514 	pop	ix
   7C6B C9            [10] 7515 	ret
                           7516 ;src/main.c:1479: void comprobarDisparo(u8 numX, u8 numY, u8 mirada, TProta * pro, Tdisparo * disp){
                           7517 ;	---------------------------------
                           7518 ; Function comprobarDisparo
                           7519 ; ---------------------------------
   7C6C                    7520 _comprobarDisparo::
   7C6C DD E5         [15] 7521 	push	ix
   7C6E DD 21 00 00   [14] 7522 	ld	ix,#0
   7C72 DD 39         [15] 7523 	add	ix,sp
   7C74 21 F8 FF      [10] 7524 	ld	hl,#-8
   7C77 39            [11] 7525 	add	hl,sp
   7C78 F9            [ 6] 7526 	ld	sp,hl
                           7527 ;src/main.c:1481: comprobarLimites(pro, disp);
   7C79 DD 6E 09      [19] 7528 	ld	l,9 (ix)
   7C7C DD 66 0A      [19] 7529 	ld	h,10 (ix)
   7C7F E5            [11] 7530 	push	hl
   7C80 DD 6E 07      [19] 7531 	ld	l,7 (ix)
   7C83 DD 66 08      [19] 7532 	ld	h,8 (ix)
   7C86 E5            [11] 7533 	push	hl
   7C87 CD E1 79      [17] 7534 	call	_comprobarLimites
   7C8A F1            [10] 7535 	pop	af
   7C8B F1            [10] 7536 	pop	af
                           7537 ;src/main.c:1482: if((mirada==M_derecha || mirada==M_izquierda) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY+4), 0) == 48){
   7C8C DD 7E 07      [19] 7538 	ld	a,7 (ix)
   7C8F DD 77 FC      [19] 7539 	ld	-4 (ix),a
   7C92 DD 7E 08      [19] 7540 	ld	a,8 (ix)
   7C95 DD 77 FD      [19] 7541 	ld	-3 (ix),a
                           7542 ;src/main.c:1483: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
   7C98 DD 7E 09      [19] 7543 	ld	a,9 (ix)
   7C9B DD 77 F8      [19] 7544 	ld	-8 (ix),a
   7C9E DD 7E 0A      [19] 7545 	ld	a,10 (ix)
   7CA1 DD 77 F9      [19] 7546 	ld	-7 (ix),a
                           7547 ;src/main.c:1482: if((mirada==M_derecha || mirada==M_izquierda) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY+4), 0) == 48){
   7CA4 DD 7E FC      [19] 7548 	ld	a,-4 (ix)
   7CA7 C6 15         [ 7] 7549 	add	a, #0x15
   7CA9 4F            [ 4] 7550 	ld	c,a
   7CAA DD 7E FD      [19] 7551 	ld	a,-3 (ix)
   7CAD CE 00         [ 7] 7552 	adc	a, #0x00
   7CAF 47            [ 4] 7553 	ld	b,a
                           7554 ;src/main.c:1483: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
   7CB0 DD 7E F8      [19] 7555 	ld	a,-8 (ix)
   7CB3 C6 01         [ 7] 7556 	add	a, #0x01
   7CB5 DD 77 FE      [19] 7557 	ld	-2 (ix),a
   7CB8 DD 7E F9      [19] 7558 	ld	a,-7 (ix)
   7CBB CE 00         [ 7] 7559 	adc	a, #0x00
   7CBD DD 77 FF      [19] 7560 	ld	-1 (ix),a
                           7561 ;src/main.c:1484: cpct_drawSpriteMaskedAlignedTable(disp->sprite, pvmem, PRE_DISPARO_W, PRE_DISPARO_H, pre_tablatrans);
   7CC0 DD 7E F8      [19] 7562 	ld	a,-8 (ix)
   7CC3 C6 05         [ 7] 7563 	add	a, #0x05
   7CC5 DD 77 FA      [19] 7564 	ld	-6 (ix),a
   7CC8 DD 7E F9      [19] 7565 	ld	a,-7 (ix)
   7CCB CE 00         [ 7] 7566 	adc	a, #0x00
   7CCD DD 77 FB      [19] 7567 	ld	-5 (ix),a
                           7568 ;src/main.c:1482: if((mirada==M_derecha || mirada==M_izquierda) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX, numY+4), 0) == 48){
   7CD0 DD 7E 06      [19] 7569 	ld	a,6 (ix)
   7CD3 B7            [ 4] 7570 	or	a, a
   7CD4 28 06         [12] 7571 	jr	Z,00121$
   7CD6 DD 7E 06      [19] 7572 	ld	a,6 (ix)
   7CD9 3D            [ 4] 7573 	dec	a
   7CDA 20 72         [12] 7574 	jr	NZ,00118$
   7CDC                    7575 00121$:
   7CDC 0A            [ 7] 7576 	ld	a,(bc)
   7CDD 3D            [ 4] 7577 	dec	a
   7CDE 20 6E         [12] 7578 	jr	NZ,00118$
   7CE0 C5            [11] 7579 	push	bc
   7CE1 DD 66 05      [19] 7580 	ld	h,5 (ix)
   7CE4 DD 6E 04      [19] 7581 	ld	l,4 (ix)
   7CE7 E5            [11] 7582 	push	hl
   7CE8 21 00 C0      [10] 7583 	ld	hl,#0xC000
   7CEB E5            [11] 7584 	push	hl
   7CEC CD 0A 43      [17] 7585 	call	_cpct_getScreenPtr
   7CEF 11 00 00      [10] 7586 	ld	de,#0x0000
   7CF2 D5            [11] 7587 	push	de
   7CF3 E5            [11] 7588 	push	hl
   7CF4 CD 2A 42      [17] 7589 	call	_cpct_get6Bits
   7CF7 C1            [10] 7590 	pop	bc
   7CF8 7D            [ 4] 7591 	ld	a,l
   7CF9 D6 30         [ 7] 7592 	sub	a, #0x30
   7CFB 20 51         [12] 7593 	jr	NZ,00118$
   7CFD DD 7E 05      [19] 7594 	ld	a,5 (ix)
   7D00 C6 04         [ 7] 7595 	add	a, #0x04
   7D02 C5            [11] 7596 	push	bc
   7D03 F5            [11] 7597 	push	af
   7D04 33            [ 6] 7598 	inc	sp
   7D05 DD 7E 04      [19] 7599 	ld	a,4 (ix)
   7D08 F5            [11] 7600 	push	af
   7D09 33            [ 6] 7601 	inc	sp
   7D0A 21 00 C0      [10] 7602 	ld	hl,#0xC000
   7D0D E5            [11] 7603 	push	hl
   7D0E CD 0A 43      [17] 7604 	call	_cpct_getScreenPtr
   7D11 11 00 00      [10] 7605 	ld	de,#0x0000
   7D14 D5            [11] 7606 	push	de
   7D15 E5            [11] 7607 	push	hl
   7D16 CD 2A 42      [17] 7608 	call	_cpct_get6Bits
   7D19 C1            [10] 7609 	pop	bc
   7D1A 7D            [ 4] 7610 	ld	a,l
   7D1B D6 30         [ 7] 7611 	sub	a, #0x30
   7D1D 20 2F         [12] 7612 	jr	NZ,00118$
                           7613 ;src/main.c:1483: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
   7D1F DD 6E FE      [19] 7614 	ld	l,-2 (ix)
   7D22 DD 66 FF      [19] 7615 	ld	h,-1 (ix)
   7D25 56            [ 7] 7616 	ld	d,(hl)
   7D26 E1            [10] 7617 	pop	hl
   7D27 E5            [11] 7618 	push	hl
   7D28 46            [ 7] 7619 	ld	b,(hl)
   7D29 D5            [11] 7620 	push	de
   7D2A 33            [ 6] 7621 	inc	sp
   7D2B C5            [11] 7622 	push	bc
   7D2C 33            [ 6] 7623 	inc	sp
   7D2D 21 00 C0      [10] 7624 	ld	hl,#0xC000
   7D30 E5            [11] 7625 	push	hl
   7D31 CD 0A 43      [17] 7626 	call	_cpct_getScreenPtr
   7D34 EB            [ 4] 7627 	ex	de,hl
                           7628 ;src/main.c:1484: cpct_drawSpriteMaskedAlignedTable(disp->sprite, pvmem, PRE_DISPARO_W, PRE_DISPARO_H, pre_tablatrans);
   7D35 DD 6E FA      [19] 7629 	ld	l,-6 (ix)
   7D38 DD 66 FB      [19] 7630 	ld	h,-5 (ix)
   7D3B 4E            [ 7] 7631 	ld	c,(hl)
   7D3C 23            [ 6] 7632 	inc	hl
   7D3D 46            [ 7] 7633 	ld	b,(hl)
   7D3E 21 00 01      [10] 7634 	ld	hl,#_pre_tablatrans
   7D41 E5            [11] 7635 	push	hl
   7D42 21 02 05      [10] 7636 	ld	hl,#0x0502
   7D45 E5            [11] 7637 	push	hl
   7D46 D5            [11] 7638 	push	de
   7D47 C5            [11] 7639 	push	bc
   7D48 CD 2A 43      [17] 7640 	call	_cpct_drawSpriteMaskedAlignedTable
   7D4B C3 61 7E      [10] 7641 	jp	00124$
   7D4E                    7642 00118$:
                           7643 ;src/main.c:1486: else if((mirada==M_arriba || mirada==M_abajo) && pro->disparando==SI && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX-1, numY), 0) == 48 && cpct_get6Bits(cpct_getScreenPtr(CPCT_VMEM_START, numX+2, numY), 0) == 48){
   7D4E DD 7E 06      [19] 7644 	ld	a,6 (ix)
   7D51 D6 03         [ 7] 7645 	sub	a, #0x03
   7D53 28 07         [12] 7646 	jr	Z,00114$
   7D55 DD 7E 06      [19] 7647 	ld	a,6 (ix)
   7D58 D6 02         [ 7] 7648 	sub	a, #0x02
   7D5A 20 76         [12] 7649 	jr	NZ,00111$
   7D5C                    7650 00114$:
   7D5C 0A            [ 7] 7651 	ld	a,(bc)
   7D5D 3D            [ 4] 7652 	dec	a
   7D5E 20 72         [12] 7653 	jr	NZ,00111$
   7D60 DD 56 04      [19] 7654 	ld	d,4 (ix)
   7D63 15            [ 4] 7655 	dec	d
   7D64 C5            [11] 7656 	push	bc
   7D65 DD 7E 05      [19] 7657 	ld	a,5 (ix)
   7D68 F5            [11] 7658 	push	af
   7D69 33            [ 6] 7659 	inc	sp
   7D6A D5            [11] 7660 	push	de
   7D6B 33            [ 6] 7661 	inc	sp
   7D6C 21 00 C0      [10] 7662 	ld	hl,#0xC000
   7D6F E5            [11] 7663 	push	hl
   7D70 CD 0A 43      [17] 7664 	call	_cpct_getScreenPtr
   7D73 11 00 00      [10] 7665 	ld	de,#0x0000
   7D76 D5            [11] 7666 	push	de
   7D77 E5            [11] 7667 	push	hl
   7D78 CD 2A 42      [17] 7668 	call	_cpct_get6Bits
   7D7B C1            [10] 7669 	pop	bc
   7D7C 7D            [ 4] 7670 	ld	a,l
   7D7D D6 30         [ 7] 7671 	sub	a, #0x30
   7D7F 20 51         [12] 7672 	jr	NZ,00111$
   7D81 DD 56 04      [19] 7673 	ld	d,4 (ix)
   7D84 14            [ 4] 7674 	inc	d
   7D85 14            [ 4] 7675 	inc	d
   7D86 C5            [11] 7676 	push	bc
   7D87 DD 7E 05      [19] 7677 	ld	a,5 (ix)
   7D8A F5            [11] 7678 	push	af
   7D8B 33            [ 6] 7679 	inc	sp
   7D8C D5            [11] 7680 	push	de
   7D8D 33            [ 6] 7681 	inc	sp
   7D8E 21 00 C0      [10] 7682 	ld	hl,#0xC000
   7D91 E5            [11] 7683 	push	hl
   7D92 CD 0A 43      [17] 7684 	call	_cpct_getScreenPtr
   7D95 11 00 00      [10] 7685 	ld	de,#0x0000
   7D98 D5            [11] 7686 	push	de
   7D99 E5            [11] 7687 	push	hl
   7D9A CD 2A 42      [17] 7688 	call	_cpct_get6Bits
   7D9D C1            [10] 7689 	pop	bc
   7D9E 7D            [ 4] 7690 	ld	a,l
   7D9F D6 30         [ 7] 7691 	sub	a, #0x30
   7DA1 20 2F         [12] 7692 	jr	NZ,00111$
                           7693 ;src/main.c:1487: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, disp->x, disp->y); 
   7DA3 DD 6E FE      [19] 7694 	ld	l,-2 (ix)
   7DA6 DD 66 FF      [19] 7695 	ld	h,-1 (ix)
   7DA9 56            [ 7] 7696 	ld	d,(hl)
   7DAA E1            [10] 7697 	pop	hl
   7DAB E5            [11] 7698 	push	hl
   7DAC 46            [ 7] 7699 	ld	b,(hl)
   7DAD D5            [11] 7700 	push	de
   7DAE 33            [ 6] 7701 	inc	sp
   7DAF C5            [11] 7702 	push	bc
   7DB0 33            [ 6] 7703 	inc	sp
   7DB1 21 00 C0      [10] 7704 	ld	hl,#0xC000
   7DB4 E5            [11] 7705 	push	hl
   7DB5 CD 0A 43      [17] 7706 	call	_cpct_getScreenPtr
   7DB8 EB            [ 4] 7707 	ex	de,hl
                           7708 ;src/main.c:1488: cpct_drawSpriteMaskedAlignedTable(disp->sprite, pvmem, PRE_DISPARO_W, PRE_DISPARO_H, pre_tablatrans);
   7DB9 DD 6E FA      [19] 7709 	ld	l,-6 (ix)
   7DBC DD 66 FB      [19] 7710 	ld	h,-5 (ix)
   7DBF 4E            [ 7] 7711 	ld	c,(hl)
   7DC0 23            [ 6] 7712 	inc	hl
   7DC1 46            [ 7] 7713 	ld	b,(hl)
   7DC2 21 00 01      [10] 7714 	ld	hl,#_pre_tablatrans
   7DC5 E5            [11] 7715 	push	hl
   7DC6 21 02 05      [10] 7716 	ld	hl,#0x0502
   7DC9 E5            [11] 7717 	push	hl
   7DCA D5            [11] 7718 	push	de
   7DCB C5            [11] 7719 	push	bc
   7DCC CD 2A 43      [17] 7720 	call	_cpct_drawSpriteMaskedAlignedTable
   7DCF C3 61 7E      [10] 7721 	jp	00124$
   7DD2                    7722 00111$:
                           7723 ;src/main.c:1492: pro->disparando=NO;
   7DD2 AF            [ 4] 7724 	xor	a, a
   7DD3 02            [ 7] 7725 	ld	(bc),a
                           7726 ;src/main.c:1493: if(pro->soy==1){
   7DD4 DD 6E FC      [19] 7727 	ld	l,-4 (ix)
   7DD7 DD 66 FD      [19] 7728 	ld	h,-3 (ix)
   7DDA 11 1B 00      [10] 7729 	ld	de, #0x001B
   7DDD 19            [11] 7730 	add	hl, de
   7DDE 5E            [ 7] 7731 	ld	e,(hl)
   7DDF 7B            [ 4] 7732 	ld	a,e
   7DE0 3D            [ 4] 7733 	dec	a
   7DE1 20 23         [12] 7734 	jr	NZ,00104$
                           7735 ;src/main.c:1494: TProta * proOp=&protaDos;
                           7736 ;src/main.c:1495: borrarBloques(mirada, proOp, disp, pro);
   7DE3 C5            [11] 7737 	push	bc
   7DE4 DD 6E FC      [19] 7738 	ld	l,-4 (ix)
   7DE7 DD 66 FD      [19] 7739 	ld	h,-3 (ix)
   7DEA E5            [11] 7740 	push	hl
   7DEB DD 6E 09      [19] 7741 	ld	l,9 (ix)
   7DEE DD 66 0A      [19] 7742 	ld	h,10 (ix)
   7DF1 E5            [11] 7743 	push	hl
   7DF2 21 71 4F      [10] 7744 	ld	hl,#_protaDos
   7DF5 E5            [11] 7745 	push	hl
   7DF6 DD 7E 06      [19] 7746 	ld	a,6 (ix)
   7DF9 F5            [11] 7747 	push	af
   7DFA 33            [ 6] 7748 	inc	sp
   7DFB CD 44 86      [17] 7749 	call	_borrarBloques
   7DFE 21 07 00      [10] 7750 	ld	hl,#7
   7E01 39            [11] 7751 	add	hl,sp
   7E02 F9            [ 6] 7752 	ld	sp,hl
   7E03 C1            [10] 7753 	pop	bc
   7E04 18 26         [12] 7754 	jr	00105$
   7E06                    7755 00104$:
                           7756 ;src/main.c:1497: else if(pro->soy==2){
   7E06 7B            [ 4] 7757 	ld	a,e
   7E07 D6 02         [ 7] 7758 	sub	a, #0x02
   7E09 20 21         [12] 7759 	jr	NZ,00105$
                           7760 ;src/main.c:1498: TProta * proOp=&prota;
                           7761 ;src/main.c:1499: borrarBloques(mirada, proOp, disp, pro);
   7E0B C5            [11] 7762 	push	bc
   7E0C DD 6E FC      [19] 7763 	ld	l,-4 (ix)
   7E0F DD 66 FD      [19] 7764 	ld	h,-3 (ix)
   7E12 E5            [11] 7765 	push	hl
   7E13 DD 6E 09      [19] 7766 	ld	l,9 (ix)
   7E16 DD 66 0A      [19] 7767 	ld	h,10 (ix)
   7E19 E5            [11] 7768 	push	hl
   7E1A 21 54 4F      [10] 7769 	ld	hl,#_prota
   7E1D E5            [11] 7770 	push	hl
   7E1E DD 7E 06      [19] 7771 	ld	a,6 (ix)
   7E21 F5            [11] 7772 	push	af
   7E22 33            [ 6] 7773 	inc	sp
   7E23 CD 44 86      [17] 7774 	call	_borrarBloques
   7E26 21 07 00      [10] 7775 	ld	hl,#7
   7E29 39            [11] 7776 	add	hl,sp
   7E2A F9            [ 6] 7777 	ld	sp,hl
   7E2B C1            [10] 7778 	pop	bc
   7E2C                    7779 00105$:
                           7780 ;src/main.c:1502: if(reapareciendo==0 && pro->disparando==SI){
   7E2C 3A B1 4F      [13] 7781 	ld	a,(#_reapareciendo + 0)
   7E2F B7            [ 4] 7782 	or	a, a
   7E30 20 11         [12] 7783 	jr	NZ,00107$
   7E32 0A            [ 7] 7784 	ld	a,(bc)
   7E33 3D            [ 4] 7785 	dec	a
   7E34 20 0D         [12] 7786 	jr	NZ,00107$
                           7787 ;src/main.c:1504: borrarDisparoHorizontal(disp);
   7E36 DD 6E 09      [19] 7788 	ld	l,9 (ix)
   7E39 DD 66 0A      [19] 7789 	ld	h,10 (ix)
   7E3C E5            [11] 7790 	push	hl
   7E3D CD 16 82      [17] 7791 	call	_borrarDisparoHorizontal
   7E40 F1            [10] 7792 	pop	af
   7E41 18 05         [12] 7793 	jr	00108$
   7E43                    7794 00107$:
                           7795 ;src/main.c:1507: reapareciendo=0;
   7E43 21 B1 4F      [10] 7796 	ld	hl,#_reapareciendo + 0
   7E46 36 00         [10] 7797 	ld	(hl), #0x00
   7E48                    7798 00108$:
                           7799 ;src/main.c:1510: disp->y = 0;
   7E48 DD 6E FE      [19] 7800 	ld	l,-2 (ix)
   7E4B DD 66 FF      [19] 7801 	ld	h,-1 (ix)
   7E4E 36 00         [10] 7802 	ld	(hl),#0x00
                           7803 ;src/main.c:1511: disp->x = 0;
   7E50 E1            [10] 7804 	pop	hl
   7E51 E5            [11] 7805 	push	hl
   7E52 36 00         [10] 7806 	ld	(hl),#0x00
                           7807 ;src/main.c:1512: disp->py = 0;
   7E54 C1            [10] 7808 	pop	bc
   7E55 C5            [11] 7809 	push	bc
   7E56 03            [ 6] 7810 	inc	bc
   7E57 03            [ 6] 7811 	inc	bc
   7E58 03            [ 6] 7812 	inc	bc
   7E59 AF            [ 4] 7813 	xor	a, a
   7E5A 02            [ 7] 7814 	ld	(bc),a
                           7815 ;src/main.c:1513: disp->px = 0;
   7E5B C1            [10] 7816 	pop	bc
   7E5C C5            [11] 7817 	push	bc
   7E5D 03            [ 6] 7818 	inc	bc
   7E5E 03            [ 6] 7819 	inc	bc
   7E5F AF            [ 4] 7820 	xor	a, a
   7E60 02            [ 7] 7821 	ld	(bc),a
   7E61                    7822 00124$:
   7E61 DD F9         [10] 7823 	ld	sp, ix
   7E63 DD E1         [14] 7824 	pop	ix
   7E65 C9            [10] 7825 	ret
                           7826 ;src/main.c:1518: void dispararDerecha(TProta * pro, Tdisparo * disp){
                           7827 ;	---------------------------------
                           7828 ; Function dispararDerecha
                           7829 ; ---------------------------------
   7E66                    7830 _dispararDerecha::
   7E66 DD E5         [15] 7831 	push	ix
   7E68 DD 21 00 00   [14] 7832 	ld	ix,#0
   7E6C DD 39         [15] 7833 	add	ix,sp
   7E6E F5            [11] 7834 	push	af
   7E6F F5            [11] 7835 	push	af
   7E70 3B            [ 6] 7836 	dec	sp
                           7837 ;src/main.c:1522: if(disp->x == 0 && disp->y == 0){
   7E71 DD 4E 06      [19] 7838 	ld	c,6 (ix)
   7E74 DD 46 07      [19] 7839 	ld	b,7 (ix)
   7E77 0A            [ 7] 7840 	ld	a,(bc)
   7E78 DD 77 FD      [19] 7841 	ld	-3 (ix),a
   7E7B 21 01 00      [10] 7842 	ld	hl,#0x0001
   7E7E 09            [11] 7843 	add	hl,bc
   7E7F E3            [19] 7844 	ex	(sp), hl
                           7845 ;src/main.c:1526: disp->px = disp->x;
   7E80 59            [ 4] 7846 	ld	e, c
   7E81 50            [ 4] 7847 	ld	d, b
   7E82 13            [ 6] 7848 	inc	de
   7E83 13            [ 6] 7849 	inc	de
                           7850 ;src/main.c:1522: if(disp->x == 0 && disp->y == 0){
   7E84 DD 7E FD      [19] 7851 	ld	a,-3 (ix)
   7E87 B7            [ 4] 7852 	or	a, a
   7E88 20 4F         [12] 7853 	jr	NZ,00102$
   7E8A E1            [10] 7854 	pop	hl
   7E8B E5            [11] 7855 	push	hl
   7E8C 7E            [ 7] 7856 	ld	a,(hl)
   7E8D B7            [ 4] 7857 	or	a, a
   7E8E 20 49         [12] 7858 	jr	NZ,00102$
                           7859 ;src/main.c:1523: disp->x = pro->x + 6;
   7E90 E5            [11] 7860 	push	hl
   7E91 DD 6E 04      [19] 7861 	ld	l,4 (ix)
   7E94 DD 66 05      [19] 7862 	ld	h,5 (ix)
   7E97 E5            [11] 7863 	push	hl
   7E98 FD E1         [14] 7864 	pop	iy
   7E9A E1            [10] 7865 	pop	hl
   7E9B FD 7E 00      [19] 7866 	ld	a, 0 (iy)
   7E9E C6 06         [ 7] 7867 	add	a, #0x06
   7EA0 DD 77 FE      [19] 7868 	ld	-2 (ix), a
   7EA3 02            [ 7] 7869 	ld	(bc),a
                           7870 ;src/main.c:1524: disp->y = pro->y + 7;
   7EA4 FD E5         [15] 7871 	push	iy
   7EA6 E1            [10] 7872 	pop	hl
   7EA7 23            [ 6] 7873 	inc	hl
   7EA8 7E            [ 7] 7874 	ld	a,(hl)
   7EA9 C6 07         [ 7] 7875 	add	a, #0x07
   7EAB DD 77 FF      [19] 7876 	ld	-1 (ix),a
   7EAE E1            [10] 7877 	pop	hl
   7EAF E5            [11] 7878 	push	hl
   7EB0 DD 7E FF      [19] 7879 	ld	a,-1 (ix)
   7EB3 77            [ 7] 7880 	ld	(hl),a
                           7881 ;src/main.c:1525: disp->py = disp->y;
   7EB4 69            [ 4] 7882 	ld	l, c
   7EB5 60            [ 4] 7883 	ld	h, b
   7EB6 23            [ 6] 7884 	inc	hl
   7EB7 23            [ 6] 7885 	inc	hl
   7EB8 23            [ 6] 7886 	inc	hl
   7EB9 DD 7E FF      [19] 7887 	ld	a,-1 (ix)
   7EBC 77            [ 7] 7888 	ld	(hl),a
                           7889 ;src/main.c:1526: disp->px = disp->x;
   7EBD DD 7E FE      [19] 7890 	ld	a,-2 (ix)
   7EC0 12            [ 7] 7891 	ld	(de),a
                           7892 ;src/main.c:1527: decrecerMunicion(pro->soy-1);
   7EC1 FD E5         [15] 7893 	push	iy
   7EC3 E1            [10] 7894 	pop	hl
   7EC4 C5            [11] 7895 	push	bc
   7EC5 01 1B 00      [10] 7896 	ld	bc, #0x001B
   7EC8 09            [11] 7897 	add	hl, bc
   7EC9 C1            [10] 7898 	pop	bc
   7ECA 6E            [ 7] 7899 	ld	l,(hl)
   7ECB 65            [ 4] 7900 	ld	h,l
   7ECC 25            [ 4] 7901 	dec	h
   7ECD C5            [11] 7902 	push	bc
   7ECE D5            [11] 7903 	push	de
   7ECF E5            [11] 7904 	push	hl
   7ED0 33            [ 6] 7905 	inc	sp
   7ED1 CD 24 63      [17] 7906 	call	_decrecerMunicion
   7ED4 33            [ 6] 7907 	inc	sp
   7ED5 D1            [10] 7908 	pop	de
   7ED6 C1            [10] 7909 	pop	bc
   7ED7 18 11         [12] 7910 	jr	00103$
   7ED9                    7911 00102$:
                           7912 ;src/main.c:1530: disp->px=disp->x-2;
   7ED9 DD 7E FD      [19] 7913 	ld	a,-3 (ix)
   7EDC C6 FE         [ 7] 7914 	add	a,#0xFE
   7EDE 12            [ 7] 7915 	ld	(de),a
                           7916 ;src/main.c:1532: borrarDisparoHorizontal(disp);
   7EDF C5            [11] 7917 	push	bc
   7EE0 D5            [11] 7918 	push	de
   7EE1 C5            [11] 7919 	push	bc
   7EE2 CD 16 82      [17] 7920 	call	_borrarDisparoHorizontal
   7EE5 F1            [10] 7921 	pop	af
   7EE6 D1            [10] 7922 	pop	de
   7EE7 C1            [10] 7923 	pop	bc
                           7924 ;src/main.c:1534: disp->px=disp->x;
   7EE8 0A            [ 7] 7925 	ld	a,(bc)
   7EE9 12            [ 7] 7926 	ld	(de),a
   7EEA                    7927 00103$:
                           7928 ;src/main.c:1538: disp->px = disp->x-2;
   7EEA 0A            [ 7] 7929 	ld	a,(bc)
   7EEB C6 FE         [ 7] 7930 	add	a,#0xFE
   7EED 12            [ 7] 7931 	ld	(de),a
                           7932 ;src/main.c:1539: disp->x++;
   7EEE 0A            [ 7] 7933 	ld	a,(bc)
   7EEF 3C            [ 4] 7934 	inc	a
   7EF0 02            [ 7] 7935 	ld	(bc),a
                           7936 ;src/main.c:1542: numX = disp->x+1;
   7EF1 5F            [ 4] 7937 	ld	e,a
   7EF2 1C            [ 4] 7938 	inc	e
                           7939 ;src/main.c:1543: numY = disp->y;
   7EF3 E1            [10] 7940 	pop	hl
   7EF4 E5            [11] 7941 	push	hl
   7EF5 56            [ 7] 7942 	ld	d,(hl)
                           7943 ;src/main.c:1545: comprobarDisparo(numX, numY, mirada, pro, disp);
   7EF6 C5            [11] 7944 	push	bc
   7EF7 DD 6E 04      [19] 7945 	ld	l,4 (ix)
   7EFA DD 66 05      [19] 7946 	ld	h,5 (ix)
   7EFD E5            [11] 7947 	push	hl
   7EFE AF            [ 4] 7948 	xor	a, a
   7EFF F5            [11] 7949 	push	af
   7F00 33            [ 6] 7950 	inc	sp
   7F01 D5            [11] 7951 	push	de
   7F02 CD 6C 7C      [17] 7952 	call	_comprobarDisparo
   7F05 21 07 00      [10] 7953 	ld	hl,#7
   7F08 39            [11] 7954 	add	hl,sp
   7F09 F9            [ 6] 7955 	ld	sp,hl
   7F0A DD F9         [10] 7956 	ld	sp, ix
   7F0C DD E1         [14] 7957 	pop	ix
   7F0E C9            [10] 7958 	ret
                           7959 ;src/main.c:1548: void dispararIzquierda(TProta * pro, Tdisparo * disp){
                           7960 ;	---------------------------------
                           7961 ; Function dispararIzquierda
                           7962 ; ---------------------------------
   7F0F                    7963 _dispararIzquierda::
   7F0F DD E5         [15] 7964 	push	ix
   7F11 DD 21 00 00   [14] 7965 	ld	ix,#0
   7F15 DD 39         [15] 7966 	add	ix,sp
   7F17 21 FA FF      [10] 7967 	ld	hl,#-6
   7F1A 39            [11] 7968 	add	hl,sp
   7F1B F9            [ 6] 7969 	ld	sp,hl
                           7970 ;src/main.c:1550: if(disp->x == 0 && disp->y == 0){
   7F1C DD 4E 06      [19] 7971 	ld	c,6 (ix)
   7F1F DD 46 07      [19] 7972 	ld	b,7 (ix)
   7F22 0A            [ 7] 7973 	ld	a,(bc)
   7F23 5F            [ 4] 7974 	ld	e,a
   7F24 21 01 00      [10] 7975 	ld	hl,#0x0001
   7F27 09            [11] 7976 	add	hl,bc
   7F28 DD 75 FB      [19] 7977 	ld	-5 (ix),l
   7F2B DD 74 FC      [19] 7978 	ld	-4 (ix),h
                           7979 ;src/main.c:1554: disp->px = disp->x;
   7F2E 21 02 00      [10] 7980 	ld	hl,#0x0002
   7F31 09            [11] 7981 	add	hl,bc
   7F32 DD 75 FE      [19] 7982 	ld	-2 (ix),l
   7F35 DD 74 FF      [19] 7983 	ld	-1 (ix),h
                           7984 ;src/main.c:1550: if(disp->x == 0 && disp->y == 0){
   7F38 7B            [ 4] 7985 	ld	a,e
   7F39 B7            [ 4] 7986 	or	a, a
   7F3A 20 4F         [12] 7987 	jr	NZ,00102$
   7F3C DD 6E FB      [19] 7988 	ld	l,-5 (ix)
   7F3F DD 66 FC      [19] 7989 	ld	h,-4 (ix)
   7F42 7E            [ 7] 7990 	ld	a,(hl)
   7F43 B7            [ 4] 7991 	or	a, a
   7F44 20 45         [12] 7992 	jr	NZ,00102$
                           7993 ;src/main.c:1551: disp->x = pro->x-1;
   7F46 DD 5E 04      [19] 7994 	ld	e,4 (ix)
   7F49 DD 56 05      [19] 7995 	ld	d,5 (ix)
   7F4C 1A            [ 7] 7996 	ld	a,(de)
   7F4D C6 FF         [ 7] 7997 	add	a,#0xFF
   7F4F DD 77 FD      [19] 7998 	ld	-3 (ix), a
   7F52 02            [ 7] 7999 	ld	(bc),a
                           8000 ;src/main.c:1552: disp->y = pro->y + 7;
   7F53 6B            [ 4] 8001 	ld	l, e
   7F54 62            [ 4] 8002 	ld	h, d
   7F55 23            [ 6] 8003 	inc	hl
   7F56 7E            [ 7] 8004 	ld	a,(hl)
   7F57 C6 07         [ 7] 8005 	add	a, #0x07
   7F59 DD 77 FA      [19] 8006 	ld	-6 (ix),a
   7F5C DD 6E FB      [19] 8007 	ld	l,-5 (ix)
   7F5F DD 66 FC      [19] 8008 	ld	h,-4 (ix)
   7F62 DD 7E FA      [19] 8009 	ld	a,-6 (ix)
   7F65 77            [ 7] 8010 	ld	(hl),a
                           8011 ;src/main.c:1553: disp->py = disp->y;
   7F66 69            [ 4] 8012 	ld	l, c
   7F67 60            [ 4] 8013 	ld	h, b
   7F68 23            [ 6] 8014 	inc	hl
   7F69 23            [ 6] 8015 	inc	hl
   7F6A 23            [ 6] 8016 	inc	hl
   7F6B DD 7E FA      [19] 8017 	ld	a,-6 (ix)
   7F6E 77            [ 7] 8018 	ld	(hl),a
                           8019 ;src/main.c:1554: disp->px = disp->x;
   7F6F DD 6E FE      [19] 8020 	ld	l,-2 (ix)
   7F72 DD 66 FF      [19] 8021 	ld	h,-1 (ix)
   7F75 DD 7E FD      [19] 8022 	ld	a,-3 (ix)
   7F78 77            [ 7] 8023 	ld	(hl),a
                           8024 ;src/main.c:1555: decrecerMunicion(pro->soy-1);
   7F79 EB            [ 4] 8025 	ex	de,hl
   7F7A 11 1B 00      [10] 8026 	ld	de, #0x001B
   7F7D 19            [11] 8027 	add	hl, de
   7F7E 5E            [ 7] 8028 	ld	e,(hl)
   7F7F 1D            [ 4] 8029 	dec	e
   7F80 C5            [11] 8030 	push	bc
   7F81 7B            [ 4] 8031 	ld	a,e
   7F82 F5            [11] 8032 	push	af
   7F83 33            [ 6] 8033 	inc	sp
   7F84 CD 24 63      [17] 8034 	call	_decrecerMunicion
   7F87 33            [ 6] 8035 	inc	sp
   7F88 C1            [10] 8036 	pop	bc
   7F89 18 07         [12] 8037 	jr	00103$
   7F8B                    8038 00102$:
                           8039 ;src/main.c:1558: borrarDisparoHorizontal(disp);
   7F8B C5            [11] 8040 	push	bc
   7F8C C5            [11] 8041 	push	bc
   7F8D CD 16 82      [17] 8042 	call	_borrarDisparoHorizontal
   7F90 F1            [10] 8043 	pop	af
   7F91 C1            [10] 8044 	pop	bc
   7F92                    8045 00103$:
                           8046 ;src/main.c:1561: disp->px = disp->x+1;
   7F92 0A            [ 7] 8047 	ld	a,(bc)
   7F93 3C            [ 4] 8048 	inc	a
   7F94 DD 6E FE      [19] 8049 	ld	l,-2 (ix)
   7F97 DD 66 FF      [19] 8050 	ld	h,-1 (ix)
   7F9A 77            [ 7] 8051 	ld	(hl),a
                           8052 ;src/main.c:1562: disp->x--;
   7F9B 0A            [ 7] 8053 	ld	a,(bc)
   7F9C 5F            [ 4] 8054 	ld	e,a
   7F9D 1D            [ 4] 8055 	dec	e
   7F9E 7B            [ 4] 8056 	ld	a,e
   7F9F 02            [ 7] 8057 	ld	(bc),a
                           8058 ;src/main.c:1564: numX = disp->x -1;
   7FA0 1D            [ 4] 8059 	dec	e
                           8060 ;src/main.c:1565: numY = disp->y;
   7FA1 DD 6E FB      [19] 8061 	ld	l,-5 (ix)
   7FA4 DD 66 FC      [19] 8062 	ld	h,-4 (ix)
   7FA7 56            [ 7] 8063 	ld	d,(hl)
                           8064 ;src/main.c:1566: comprobarDisparo(numX, numY, mirada, pro, disp);
   7FA8 C5            [11] 8065 	push	bc
   7FA9 DD 6E 04      [19] 8066 	ld	l,4 (ix)
   7FAC DD 66 05      [19] 8067 	ld	h,5 (ix)
   7FAF E5            [11] 8068 	push	hl
   7FB0 3E 01         [ 7] 8069 	ld	a,#0x01
   7FB2 F5            [11] 8070 	push	af
   7FB3 33            [ 6] 8071 	inc	sp
   7FB4 D5            [11] 8072 	push	de
   7FB5 CD 6C 7C      [17] 8073 	call	_comprobarDisparo
   7FB8 21 07 00      [10] 8074 	ld	hl,#7
   7FBB 39            [11] 8075 	add	hl,sp
   7FBC F9            [ 6] 8076 	ld	sp,hl
   7FBD DD F9         [10] 8077 	ld	sp, ix
   7FBF DD E1         [14] 8078 	pop	ix
   7FC1 C9            [10] 8079 	ret
                           8080 ;src/main.c:1570: void dispararAbajo(TProta * pro, Tdisparo * disp){
                           8081 ;	---------------------------------
                           8082 ; Function dispararAbajo
                           8083 ; ---------------------------------
   7FC2                    8084 _dispararAbajo::
   7FC2 DD E5         [15] 8085 	push	ix
   7FC4 DD 21 00 00   [14] 8086 	ld	ix,#0
   7FC8 DD 39         [15] 8087 	add	ix,sp
   7FCA F5            [11] 8088 	push	af
   7FCB 3B            [ 6] 8089 	dec	sp
                           8090 ;src/main.c:1572: pro->miraAtacando=M_abajo;
   7FCC DD 7E 04      [19] 8091 	ld	a,4 (ix)
   7FCF DD 77 FE      [19] 8092 	ld	-2 (ix),a
   7FD2 DD 7E 05      [19] 8093 	ld	a,5 (ix)
   7FD5 DD 77 FF      [19] 8094 	ld	-1 (ix),a
   7FD8 DD 7E FE      [19] 8095 	ld	a,-2 (ix)
   7FDB C6 18         [ 7] 8096 	add	a, #0x18
   7FDD 6F            [ 4] 8097 	ld	l,a
   7FDE DD 7E FF      [19] 8098 	ld	a,-1 (ix)
   7FE1 CE 00         [ 7] 8099 	adc	a, #0x00
   7FE3 67            [ 4] 8100 	ld	h,a
   7FE4 36 02         [10] 8101 	ld	(hl),#0x02
                           8102 ;src/main.c:1573: if(disp->x == 0 && disp->y == 0){
   7FE6 DD 4E 06      [19] 8103 	ld	c,6 (ix)
   7FE9 DD 46 07      [19] 8104 	ld	b,7 (ix)
   7FEC 0A            [ 7] 8105 	ld	a,(bc)
   7FED 6F            [ 4] 8106 	ld	l,a
   7FEE 59            [ 4] 8107 	ld	e, c
   7FEF 50            [ 4] 8108 	ld	d, b
   7FF0 13            [ 6] 8109 	inc	de
   7FF1 7D            [ 4] 8110 	ld	a,l
   7FF2 B7            [ 4] 8111 	or	a, a
   7FF3 20 3F         [12] 8112 	jr	NZ,00102$
   7FF5 1A            [ 7] 8113 	ld	a,(de)
   7FF6 B7            [ 4] 8114 	or	a, a
   7FF7 20 3B         [12] 8115 	jr	NZ,00102$
                           8116 ;src/main.c:1574: disp->x = pro->x+2;
   7FF9 DD 6E FE      [19] 8117 	ld	l,-2 (ix)
   7FFC DD 66 FF      [19] 8118 	ld	h,-1 (ix)
   7FFF 7E            [ 7] 8119 	ld	a,(hl)
   8000 C6 02         [ 7] 8120 	add	a, #0x02
   8002 DD 77 FD      [19] 8121 	ld	-3 (ix), a
   8005 02            [ 7] 8122 	ld	(bc),a
                           8123 ;src/main.c:1575: disp->y = pro->y+14;
   8006 DD 6E FE      [19] 8124 	ld	l,-2 (ix)
   8009 DD 66 FF      [19] 8125 	ld	h,-1 (ix)
   800C 23            [ 6] 8126 	inc	hl
   800D 7E            [ 7] 8127 	ld	a,(hl)
   800E C6 0E         [ 7] 8128 	add	a, #0x0E
   8010 12            [ 7] 8129 	ld	(de),a
                           8130 ;src/main.c:1576: disp->px = disp->x;
   8011 69            [ 4] 8131 	ld	l, c
   8012 60            [ 4] 8132 	ld	h, b
   8013 23            [ 6] 8133 	inc	hl
   8014 23            [ 6] 8134 	inc	hl
   8015 DD 7E FD      [19] 8135 	ld	a,-3 (ix)
   8018 77            [ 7] 8136 	ld	(hl),a
                           8137 ;src/main.c:1577: decrecerMunicion(pro->soy-1);
   8019 DD 6E FE      [19] 8138 	ld	l,-2 (ix)
   801C DD 66 FF      [19] 8139 	ld	h,-1 (ix)
   801F C5            [11] 8140 	push	bc
   8020 01 1B 00      [10] 8141 	ld	bc, #0x001B
   8023 09            [11] 8142 	add	hl, bc
   8024 C1            [10] 8143 	pop	bc
   8025 6E            [ 7] 8144 	ld	l,(hl)
   8026 65            [ 4] 8145 	ld	h,l
   8027 25            [ 4] 8146 	dec	h
   8028 C5            [11] 8147 	push	bc
   8029 D5            [11] 8148 	push	de
   802A E5            [11] 8149 	push	hl
   802B 33            [ 6] 8150 	inc	sp
   802C CD 24 63      [17] 8151 	call	_decrecerMunicion
   802F 33            [ 6] 8152 	inc	sp
   8030 D1            [10] 8153 	pop	de
   8031 C1            [10] 8154 	pop	bc
   8032 18 09         [12] 8155 	jr	00103$
   8034                    8156 00102$:
                           8157 ;src/main.c:1580: borrarDisparoVertical(disp);
   8034 C5            [11] 8158 	push	bc
   8035 D5            [11] 8159 	push	de
   8036 C5            [11] 8160 	push	bc
   8037 CD 56 82      [17] 8161 	call	_borrarDisparoVertical
   803A F1            [10] 8162 	pop	af
   803B D1            [10] 8163 	pop	de
   803C C1            [10] 8164 	pop	bc
   803D                    8165 00103$:
                           8166 ;src/main.c:1583: disp->py = disp->y;
   803D C5            [11] 8167 	push	bc
   803E FD E1         [14] 8168 	pop	iy
   8040 FD 23         [10] 8169 	inc	iy
   8042 FD 23         [10] 8170 	inc	iy
   8044 FD 23         [10] 8171 	inc	iy
   8046 1A            [ 7] 8172 	ld	a,(de)
   8047 FD 77 00      [19] 8173 	ld	0 (iy), a
                           8174 ;src/main.c:1584: disp->y++;
   804A 1A            [ 7] 8175 	ld	a,(de)
   804B 3C            [ 4] 8176 	inc	a
   804C 12            [ 7] 8177 	ld	(de),a
                           8178 ;src/main.c:1586: numX = disp->x;
   804D F5            [11] 8179 	push	af
   804E 0A            [ 7] 8180 	ld	a,(bc)
   804F 5F            [ 4] 8181 	ld	e,a
   8050 F1            [10] 8182 	pop	af
                           8183 ;src/main.c:1587: numY = disp->y+5;
   8051 C6 05         [ 7] 8184 	add	a, #0x05
   8053 57            [ 4] 8185 	ld	d,a
                           8186 ;src/main.c:1588: comprobarDisparo(numX, numY, mirada, pro, disp);
   8054 C5            [11] 8187 	push	bc
   8055 DD 6E FE      [19] 8188 	ld	l,-2 (ix)
   8058 DD 66 FF      [19] 8189 	ld	h,-1 (ix)
   805B E5            [11] 8190 	push	hl
   805C 3E 02         [ 7] 8191 	ld	a,#0x02
   805E F5            [11] 8192 	push	af
   805F 33            [ 6] 8193 	inc	sp
   8060 D5            [11] 8194 	push	de
   8061 CD 6C 7C      [17] 8195 	call	_comprobarDisparo
   8064 21 07 00      [10] 8196 	ld	hl,#7
   8067 39            [11] 8197 	add	hl,sp
   8068 F9            [ 6] 8198 	ld	sp,hl
   8069 DD F9         [10] 8199 	ld	sp, ix
   806B DD E1         [14] 8200 	pop	ix
   806D C9            [10] 8201 	ret
                           8202 ;src/main.c:1591: void dispararArriba(TProta * pro, Tdisparo * disp){//TENGO LO DE ANDREU DE PEGADO
                           8203 ;	---------------------------------
                           8204 ; Function dispararArriba
                           8205 ; ---------------------------------
   806E                    8206 _dispararArriba::
   806E DD E5         [15] 8207 	push	ix
   8070 DD 21 00 00   [14] 8208 	ld	ix,#0
   8074 DD 39         [15] 8209 	add	ix,sp
   8076 F5            [11] 8210 	push	af
   8077 3B            [ 6] 8211 	dec	sp
                           8212 ;src/main.c:1593: if(disp->x == 0 && disp->y == 0){
   8078 DD 4E 06      [19] 8213 	ld	c,6 (ix)
   807B DD 46 07      [19] 8214 	ld	b,7 (ix)
   807E 0A            [ 7] 8215 	ld	a,(bc)
   807F 6F            [ 4] 8216 	ld	l,a
   8080 59            [ 4] 8217 	ld	e, c
   8081 50            [ 4] 8218 	ld	d, b
   8082 13            [ 6] 8219 	inc	de
                           8220 ;src/main.c:1597: disp->pegado=0;
   8083 79            [ 4] 8221 	ld	a,c
   8084 C6 07         [ 7] 8222 	add	a, #0x07
   8086 DD 77 FE      [19] 8223 	ld	-2 (ix),a
   8089 78            [ 4] 8224 	ld	a,b
   808A CE 00         [ 7] 8225 	adc	a, #0x00
   808C DD 77 FF      [19] 8226 	ld	-1 (ix),a
                           8227 ;src/main.c:1593: if(disp->x == 0 && disp->y == 0){
   808F 7D            [ 4] 8228 	ld	a,l
   8090 B7            [ 4] 8229 	or	a, a
   8091 20 40         [12] 8230 	jr	NZ,00102$
   8093 1A            [ 7] 8231 	ld	a,(de)
   8094 B7            [ 4] 8232 	or	a, a
   8095 20 3C         [12] 8233 	jr	NZ,00102$
                           8234 ;src/main.c:1594: disp->x = pro->x+2;
   8097 E5            [11] 8235 	push	hl
   8098 DD 6E 04      [19] 8236 	ld	l,4 (ix)
   809B DD 66 05      [19] 8237 	ld	h,5 (ix)
   809E E5            [11] 8238 	push	hl
   809F FD E1         [14] 8239 	pop	iy
   80A1 E1            [10] 8240 	pop	hl
   80A2 FD 7E 00      [19] 8241 	ld	a, 0 (iy)
   80A5 C6 02         [ 7] 8242 	add	a, #0x02
   80A7 DD 77 FD      [19] 8243 	ld	-3 (ix), a
   80AA 02            [ 7] 8244 	ld	(bc),a
                           8245 ;src/main.c:1595: disp->y = pro->y-4;
   80AB FD E5         [15] 8246 	push	iy
   80AD E1            [10] 8247 	pop	hl
   80AE 23            [ 6] 8248 	inc	hl
   80AF 7E            [ 7] 8249 	ld	a,(hl)
   80B0 C6 FC         [ 7] 8250 	add	a,#0xFC
   80B2 12            [ 7] 8251 	ld	(de),a
                           8252 ;src/main.c:1596: disp->px = disp->x;
   80B3 69            [ 4] 8253 	ld	l, c
   80B4 60            [ 4] 8254 	ld	h, b
   80B5 23            [ 6] 8255 	inc	hl
   80B6 23            [ 6] 8256 	inc	hl
   80B7 DD 7E FD      [19] 8257 	ld	a,-3 (ix)
   80BA 77            [ 7] 8258 	ld	(hl),a
                           8259 ;src/main.c:1597: disp->pegado=0;
   80BB DD 6E FE      [19] 8260 	ld	l,-2 (ix)
   80BE DD 66 FF      [19] 8261 	ld	h,-1 (ix)
   80C1 36 00         [10] 8262 	ld	(hl),#0x00
                           8263 ;src/main.c:1598: decrecerMunicion(pro->soy-1);
   80C3 FD 66 1B      [19] 8264 	ld	h,27 (iy)
   80C6 25            [ 4] 8265 	dec	h
   80C7 C5            [11] 8266 	push	bc
   80C8 D5            [11] 8267 	push	de
   80C9 E5            [11] 8268 	push	hl
   80CA 33            [ 6] 8269 	inc	sp
   80CB CD 24 63      [17] 8270 	call	_decrecerMunicion
   80CE 33            [ 6] 8271 	inc	sp
   80CF D1            [10] 8272 	pop	de
   80D0 C1            [10] 8273 	pop	bc
   80D1 18 11         [12] 8274 	jr	00103$
   80D3                    8275 00102$:
                           8276 ;src/main.c:1601: disp->pegado=1;
   80D3 DD 6E FE      [19] 8277 	ld	l,-2 (ix)
   80D6 DD 66 FF      [19] 8278 	ld	h,-1 (ix)
   80D9 36 01         [10] 8279 	ld	(hl),#0x01
                           8280 ;src/main.c:1602: borrarDisparoVertical(disp);
   80DB C5            [11] 8281 	push	bc
   80DC D5            [11] 8282 	push	de
   80DD C5            [11] 8283 	push	bc
   80DE CD 56 82      [17] 8284 	call	_borrarDisparoVertical
   80E1 F1            [10] 8285 	pop	af
   80E2 D1            [10] 8286 	pop	de
   80E3 C1            [10] 8287 	pop	bc
   80E4                    8288 00103$:
                           8289 ;src/main.c:1605: disp->py = disp->y;
   80E4 C5            [11] 8290 	push	bc
   80E5 FD E1         [14] 8291 	pop	iy
   80E7 FD 23         [10] 8292 	inc	iy
   80E9 FD 23         [10] 8293 	inc	iy
   80EB FD 23         [10] 8294 	inc	iy
   80ED 1A            [ 7] 8295 	ld	a,(de)
   80EE FD 77 00      [19] 8296 	ld	0 (iy), a
                           8297 ;src/main.c:1606: disp->y--;
   80F1 1A            [ 7] 8298 	ld	a,(de)
   80F2 C6 FF         [ 7] 8299 	add	a,#0xFF
   80F4 12            [ 7] 8300 	ld	(de),a
                           8301 ;src/main.c:1608: if(disp->pegado==0){
   80F5 DD 6E FE      [19] 8302 	ld	l,-2 (ix)
   80F8 DD 66 FF      [19] 8303 	ld	h,-1 (ix)
   80FB 7E            [ 7] 8304 	ld	a,(hl)
                           8305 ;src/main.c:1605: disp->py = disp->y;
   80FC F5            [11] 8306 	push	af
   80FD 1A            [ 7] 8307 	ld	a,(de)
   80FE 5F            [ 4] 8308 	ld	e,a
   80FF F1            [10] 8309 	pop	af
                           8310 ;src/main.c:1608: if(disp->pegado==0){
   8100 B7            [ 4] 8311 	or	a, a
   8101 20 01         [12] 8312 	jr	NZ,00106$
                           8313 ;src/main.c:1609: numY = disp->y-1;
   8103 1D            [ 4] 8314 	dec	e
                           8315 ;src/main.c:1612: numY = disp->y;
   8104                    8316 00106$:
                           8317 ;src/main.c:1614: numX = disp->x;
   8104 0A            [ 7] 8318 	ld	a,(bc)
   8105 57            [ 4] 8319 	ld	d,a
                           8320 ;src/main.c:1615: comprobarDisparo(numX, numY, mirada, pro, disp);
   8106 C5            [11] 8321 	push	bc
   8107 DD 6E 04      [19] 8322 	ld	l,4 (ix)
   810A DD 66 05      [19] 8323 	ld	h,5 (ix)
   810D E5            [11] 8324 	push	hl
   810E 3E 03         [ 7] 8325 	ld	a,#0x03
   8110 F5            [11] 8326 	push	af
   8111 33            [ 6] 8327 	inc	sp
   8112 7B            [ 4] 8328 	ld	a,e
   8113 F5            [11] 8329 	push	af
   8114 33            [ 6] 8330 	inc	sp
   8115 D5            [11] 8331 	push	de
   8116 33            [ 6] 8332 	inc	sp
   8117 CD 6C 7C      [17] 8333 	call	_comprobarDisparo
   811A 21 07 00      [10] 8334 	ld	hl,#7
   811D 39            [11] 8335 	add	hl,sp
   811E F9            [ 6] 8336 	ld	sp,hl
   811F DD F9         [10] 8337 	ld	sp, ix
   8121 DD E1         [14] 8338 	pop	ix
   8123 C9            [10] 8339 	ret
                           8340 ;src/main.c:1617: void atacar(u8 soy){
                           8341 ;	---------------------------------
                           8342 ; Function atacar
                           8343 ; ---------------------------------
   8124                    8344 _atacar::
   8124 DD E5         [15] 8345 	push	ix
   8126 DD 21 00 00   [14] 8346 	ld	ix,#0
   812A DD 39         [15] 8347 	add	ix,sp
   812C F5            [11] 8348 	push	af
   812D F5            [11] 8349 	push	af
   812E 3B            [ 6] 8350 	dec	sp
                           8351 ;src/main.c:1618: TProta * pro=&prota;
   812F 01 54 4F      [10] 8352 	ld	bc,#_prota+0
                           8353 ;src/main.c:1619: Tdisparo * disp=&disparo;
   8132 DD 36 FB 8E   [19] 8354 	ld	-5 (ix),#<(_disparo)
   8136 DD 36 FC 4F   [19] 8355 	ld	-4 (ix),#>(_disparo)
                           8356 ;src/main.c:1620: switch(soy){
   813A DD 7E 04      [19] 8357 	ld	a,4 (ix)
   813D 3D            [ 4] 8358 	dec	a
   813E 28 12         [12] 8359 	jr	Z,00103$
   8140 DD 7E 04      [19] 8360 	ld	a,4 (ix)
   8143 D6 02         [ 7] 8361 	sub	a, #0x02
   8145 20 0B         [12] 8362 	jr	NZ,00103$
                           8363 ;src/main.c:1625: pro=&protaDos;
   8147 01 71 4F      [10] 8364 	ld	bc,#_protaDos
                           8365 ;src/main.c:1626: disp=&disparoDos;
   814A DD 36 FB 96   [19] 8366 	ld	-5 (ix),#<(_disparoDos)
   814E DD 36 FC 4F   [19] 8367 	ld	-4 (ix),#>(_disparoDos)
                           8368 ;src/main.c:1628: }
   8152                    8369 00103$:
                           8370 ;src/main.c:1630: switch(pro->miraAtacando){
   8152 C5            [11] 8371 	push	bc
   8153 FD E1         [14] 8372 	pop	iy
   8155 FD 7E 18      [19] 8373 	ld	a,24 (iy)
   8158 DD 77 FF      [19] 8374 	ld	-1 (ix),a
   815B 3E 03         [ 7] 8375 	ld	a,#0x03
   815D DD 96 FF      [19] 8376 	sub	a, -1 (ix)
   8160 DA 11 82      [10] 8377 	jp	C,00130$
                           8378 ;src/main.c:1633: pro->disparando = NO;
   8163 21 15 00      [10] 8379 	ld	hl,#0x0015
   8166 09            [11] 8380 	add	hl,bc
   8167 EB            [ 4] 8381 	ex	de,hl
                           8382 ;src/main.c:1643: if(pro->x<6 && pro->y<35){
   8168 21 01 00      [10] 8383 	ld	hl,#0x0001
   816B 09            [11] 8384 	add	hl,bc
   816C DD 75 FD      [19] 8385 	ld	-3 (ix),l
   816F DD 74 FE      [19] 8386 	ld	-2 (ix),h
                           8387 ;src/main.c:1630: switch(pro->miraAtacando){
   8172 D5            [11] 8388 	push	de
   8173 DD 5E FF      [19] 8389 	ld	e,-1 (ix)
   8176 16 00         [ 7] 8390 	ld	d,#0x00
   8178 21 80 81      [10] 8391 	ld	hl,#00183$
   817B 19            [11] 8392 	add	hl,de
   817C 19            [11] 8393 	add	hl,de
   817D 19            [11] 8394 	add	hl,de
   817E D1            [10] 8395 	pop	de
   817F E9            [ 4] 8396 	jp	(hl)
   8180                    8397 00183$:
   8180 C3 8C 81      [10] 8398 	jp	00104$
   8183 C3 B6 81      [10] 8399 	jp	00110$
   8186 C3 E7 81      [10] 8400 	jp	00121$
   8189 C3 04 82      [10] 8401 	jp	00126$
                           8402 ;src/main.c:1631: case M_derecha: 
   818C                    8403 00104$:
                           8404 ;src/main.c:1632: if(pro->x+5 > 11*6+6){
   818C 0A            [ 7] 8405 	ld	a,(bc)
   818D 6F            [ 4] 8406 	ld	l,a
   818E 26 00         [ 7] 8407 	ld	h,#0x00
   8190 23            [ 6] 8408 	inc	hl
   8191 23            [ 6] 8409 	inc	hl
   8192 23            [ 6] 8410 	inc	hl
   8193 23            [ 6] 8411 	inc	hl
   8194 23            [ 6] 8412 	inc	hl
   8195 3E 48         [ 7] 8413 	ld	a,#0x48
   8197 BD            [ 4] 8414 	cp	a, l
   8198 3E 00         [ 7] 8415 	ld	a,#0x00
   819A 9C            [ 4] 8416 	sbc	a, h
   819B E2 A0 81      [10] 8417 	jp	PO, 00184$
   819E EE 80         [ 7] 8418 	xor	a, #0x80
   81A0                    8419 00184$:
   81A0 F2 A7 81      [10] 8420 	jp	P,00108$
                           8421 ;src/main.c:1633: pro->disparando = NO;
   81A3 AF            [ 4] 8422 	xor	a, a
   81A4 12            [ 7] 8423 	ld	(de),a
   81A5 18 6A         [12] 8424 	jr	00130$
   81A7                    8425 00108$:
                           8426 ;src/main.c:1635: if(pro->disparando==SI)
   81A7 1A            [ 7] 8427 	ld	a,(de)
   81A8 3D            [ 4] 8428 	dec	a
   81A9 20 66         [12] 8429 	jr	NZ,00130$
                           8430 ;src/main.c:1636: dispararDerecha(pro, disp);
   81AB E1            [10] 8431 	pop	hl
   81AC E5            [11] 8432 	push	hl
   81AD E5            [11] 8433 	push	hl
   81AE C5            [11] 8434 	push	bc
   81AF CD 66 7E      [17] 8435 	call	_dispararDerecha
   81B2 F1            [10] 8436 	pop	af
   81B3 F1            [10] 8437 	pop	af
                           8438 ;src/main.c:1638: break;
   81B4 18 5B         [12] 8439 	jr	00130$
                           8440 ;src/main.c:1639: case M_izquierda:
   81B6                    8441 00110$:
                           8442 ;src/main.c:1640: if(pro->x < 1){
   81B6 0A            [ 7] 8443 	ld	a,(bc)
   81B7 6F            [ 4] 8444 	ld	l,a
   81B8 D6 01         [ 7] 8445 	sub	a, #0x01
   81BA 30 04         [12] 8446 	jr	NC,00119$
                           8447 ;src/main.c:1641: pro->disparando = NO;
   81BC AF            [ 4] 8448 	xor	a, a
   81BD 12            [ 7] 8449 	ld	(de),a
   81BE 18 51         [12] 8450 	jr	00130$
   81C0                    8451 00119$:
                           8452 ;src/main.c:1643: if(pro->x<6 && pro->y<35){
   81C0 7D            [ 4] 8453 	ld	a,l
   81C1 D6 06         [ 7] 8454 	sub	a, #0x06
   81C3 30 0F         [12] 8455 	jr	NC,00115$
   81C5 DD 6E FD      [19] 8456 	ld	l,-3 (ix)
   81C8 DD 66 FE      [19] 8457 	ld	h,-2 (ix)
   81CB 7E            [ 7] 8458 	ld	a, (hl)
   81CC D6 23         [ 7] 8459 	sub	a, #0x23
   81CE 30 04         [12] 8460 	jr	NC,00115$
                           8461 ;src/main.c:1644: pro->disparando=NO;
   81D0 AF            [ 4] 8462 	xor	a, a
   81D1 12            [ 7] 8463 	ld	(de),a
   81D2 18 3D         [12] 8464 	jr	00130$
   81D4                    8465 00115$:
                           8466 ;src/main.c:1647: else if(pro->disparando==SI){
   81D4 1A            [ 7] 8467 	ld	a,(de)
   81D5 3D            [ 4] 8468 	dec	a
   81D6 20 0B         [12] 8469 	jr	NZ,00112$
                           8470 ;src/main.c:1648: dispararIzquierda(pro, disp);
   81D8 E1            [10] 8471 	pop	hl
   81D9 E5            [11] 8472 	push	hl
   81DA E5            [11] 8473 	push	hl
   81DB C5            [11] 8474 	push	bc
   81DC CD 0F 7F      [17] 8475 	call	_dispararIzquierda
   81DF F1            [10] 8476 	pop	af
   81E0 F1            [10] 8477 	pop	af
   81E1 18 2E         [12] 8478 	jr	00130$
   81E3                    8479 00112$:
                           8480 ;src/main.c:1652: pro->disparando=NO;
   81E3 AF            [ 4] 8481 	xor	a, a
   81E4 12            [ 7] 8482 	ld	(de),a
                           8483 ;src/main.c:1655: break;
   81E5 18 2A         [12] 8484 	jr	00130$
                           8485 ;src/main.c:1656: case M_abajo:
   81E7                    8486 00121$:
                           8487 ;src/main.c:1657: if(pro->y > 15*11+15){
   81E7 DD 6E FD      [19] 8488 	ld	l,-3 (ix)
   81EA DD 66 FE      [19] 8489 	ld	h,-2 (ix)
   81ED 6E            [ 7] 8490 	ld	l,(hl)
   81EE 3E B4         [ 7] 8491 	ld	a,#0xB4
   81F0 95            [ 4] 8492 	sub	a, l
   81F1 30 02         [12] 8493 	jr	NC,00123$
                           8494 ;src/main.c:1658: pro->disparando = NO;
   81F3 AF            [ 4] 8495 	xor	a, a
   81F4 12            [ 7] 8496 	ld	(de),a
   81F5                    8497 00123$:
                           8498 ;src/main.c:1660: if(pro->disparando==SI)
   81F5 1A            [ 7] 8499 	ld	a,(de)
   81F6 3D            [ 4] 8500 	dec	a
   81F7 20 18         [12] 8501 	jr	NZ,00130$
                           8502 ;src/main.c:1661: dispararAbajo(pro, disp);
   81F9 E1            [10] 8503 	pop	hl
   81FA E5            [11] 8504 	push	hl
   81FB E5            [11] 8505 	push	hl
   81FC C5            [11] 8506 	push	bc
   81FD CD C2 7F      [17] 8507 	call	_dispararAbajo
   8200 F1            [10] 8508 	pop	af
   8201 F1            [10] 8509 	pop	af
                           8510 ;src/main.c:1662: break;
   8202 18 0D         [12] 8511 	jr	00130$
                           8512 ;src/main.c:1663: case M_arriba:
   8204                    8513 00126$:
                           8514 ;src/main.c:1664: if(pro->disparando==SI)
   8204 1A            [ 7] 8515 	ld	a,(de)
   8205 3D            [ 4] 8516 	dec	a
   8206 20 09         [12] 8517 	jr	NZ,00130$
                           8518 ;src/main.c:1665: dispararArriba(pro, disp);
   8208 E1            [10] 8519 	pop	hl
   8209 E5            [11] 8520 	push	hl
   820A E5            [11] 8521 	push	hl
   820B C5            [11] 8522 	push	bc
   820C CD 6E 80      [17] 8523 	call	_dispararArriba
   820F F1            [10] 8524 	pop	af
   8210 F1            [10] 8525 	pop	af
                           8526 ;src/main.c:1667: }
   8211                    8527 00130$:
   8211 DD F9         [10] 8528 	ld	sp, ix
   8213 DD E1         [14] 8529 	pop	ix
   8215 C9            [10] 8530 	ret
                           8531 ;src/main.c:1670: void borrarDisparoHorizontal(Tdisparo * disp){
                           8532 ;	---------------------------------
                           8533 ; Function borrarDisparoHorizontal
                           8534 ; ---------------------------------
   8216                    8535 _borrarDisparoHorizontal::
   8216 DD E5         [15] 8536 	push	ix
   8218 DD 21 00 00   [14] 8537 	ld	ix,#0
   821C DD 39         [15] 8538 	add	ix,sp
                           8539 ;src/main.c:1672: cpct_etm_drawTileBox2x4 ((disp->px) / 2, (disp->py) / 4, 1, 2, pre_terrain_W, ORIGEN_MAPA, mapa);  
   821E ED 4B A3 4F   [20] 8540 	ld	bc,(_mapa)
   8222 DD 5E 04      [19] 8541 	ld	e,4 (ix)
   8225 DD 56 05      [19] 8542 	ld	d,5 (ix)
   8228 D5            [11] 8543 	push	de
   8229 FD E1         [14] 8544 	pop	iy
   822B FD E5         [15] 8545 	push	iy
   822D E1            [10] 8546 	pop	hl
   822E 23            [ 6] 8547 	inc	hl
   822F 23            [ 6] 8548 	inc	hl
   8230 23            [ 6] 8549 	inc	hl
   8231 5E            [ 7] 8550 	ld	e,(hl)
   8232 CB 3B         [ 8] 8551 	srl	e
   8234 CB 3B         [ 8] 8552 	srl	e
   8236 FD E5         [15] 8553 	push	iy
   8238 E1            [10] 8554 	pop	hl
   8239 23            [ 6] 8555 	inc	hl
   823A 23            [ 6] 8556 	inc	hl
   823B 56            [ 7] 8557 	ld	d, (hl)
   823C CB 3A         [ 8] 8558 	srl	d
   823E C5            [11] 8559 	push	bc
   823F 21 00 C0      [10] 8560 	ld	hl,#0xC000
   8242 E5            [11] 8561 	push	hl
   8243 21 02 27      [10] 8562 	ld	hl,#0x2702
   8246 E5            [11] 8563 	push	hl
   8247 3E 01         [ 7] 8564 	ld	a,#0x01
   8249 F5            [11] 8565 	push	af
   824A 33            [ 6] 8566 	inc	sp
   824B 7B            [ 4] 8567 	ld	a,e
   824C F5            [11] 8568 	push	af
   824D 33            [ 6] 8569 	inc	sp
   824E D5            [11] 8570 	push	de
   824F 33            [ 6] 8571 	inc	sp
   8250 CD AD 3F      [17] 8572 	call	_cpct_etm_drawTileBox2x4
   8253 DD E1         [14] 8573 	pop	ix
   8255 C9            [10] 8574 	ret
                           8575 ;src/main.c:1676: void borrarDisparoVertical(Tdisparo * disp){
                           8576 ;	---------------------------------
                           8577 ; Function borrarDisparoVertical
                           8578 ; ---------------------------------
   8256                    8579 _borrarDisparoVertical::
   8256 DD E5         [15] 8580 	push	ix
   8258 DD 21 00 00   [14] 8581 	ld	ix,#0
   825C DD 39         [15] 8582 	add	ix,sp
   825E F5            [11] 8583 	push	af
   825F 3B            [ 6] 8584 	dec	sp
                           8585 ;src/main.c:1677: cpct_etm_drawTileBox2x4 ((disp->px-1) / 2, (disp->py) / 4, 2, 2, pre_terrain_W, ORIGEN_MAPA, mapa);
   8260 2A A3 4F      [16] 8586 	ld	hl,(_mapa)
   8263 DD 75 FE      [19] 8587 	ld	-2 (ix),l
   8266 DD 74 FF      [19] 8588 	ld	-1 (ix),h
   8269 DD 4E 04      [19] 8589 	ld	c,4 (ix)
   826C DD 46 05      [19] 8590 	ld	b,5 (ix)
   826F 69            [ 4] 8591 	ld	l, c
   8270 60            [ 4] 8592 	ld	h, b
   8271 23            [ 6] 8593 	inc	hl
   8272 23            [ 6] 8594 	inc	hl
   8273 23            [ 6] 8595 	inc	hl
   8274 7E            [ 7] 8596 	ld	a,(hl)
   8275 0F            [ 4] 8597 	rrca
   8276 0F            [ 4] 8598 	rrca
   8277 E6 3F         [ 7] 8599 	and	a,#0x3F
   8279 DD 77 FD      [19] 8600 	ld	-3 (ix),a
   827C 69            [ 4] 8601 	ld	l, c
   827D 60            [ 4] 8602 	ld	h, b
   827E 23            [ 6] 8603 	inc	hl
   827F 23            [ 6] 8604 	inc	hl
   8280 4E            [ 7] 8605 	ld	c,(hl)
   8281 06 00         [ 7] 8606 	ld	b,#0x00
   8283 69            [ 4] 8607 	ld	l,c
   8284 60            [ 4] 8608 	ld	h,b
   8285 2B            [ 6] 8609 	dec	hl
   8286 5D            [ 4] 8610 	ld	e, l
   8287 54            [ 4] 8611 	ld	d, h
   8288 CB 7C         [ 8] 8612 	bit	7, h
   828A 28 02         [12] 8613 	jr	Z,00103$
   828C 59            [ 4] 8614 	ld	e, c
   828D 50            [ 4] 8615 	ld	d, b
   828E                    8616 00103$:
   828E CB 2A         [ 8] 8617 	sra	d
   8290 CB 1B         [ 8] 8618 	rr	e
   8292 DD 6E FE      [19] 8619 	ld	l,-2 (ix)
   8295 DD 66 FF      [19] 8620 	ld	h,-1 (ix)
   8298 E5            [11] 8621 	push	hl
   8299 21 00 C0      [10] 8622 	ld	hl,#0xC000
   829C E5            [11] 8623 	push	hl
   829D 21 02 27      [10] 8624 	ld	hl,#0x2702
   82A0 E5            [11] 8625 	push	hl
   82A1 3E 02         [ 7] 8626 	ld	a,#0x02
   82A3 F5            [11] 8627 	push	af
   82A4 33            [ 6] 8628 	inc	sp
   82A5 DD 56 FD      [19] 8629 	ld	d, -3 (ix)
   82A8 D5            [11] 8630 	push	de
   82A9 CD AD 3F      [17] 8631 	call	_cpct_etm_drawTileBox2x4
   82AC DD F9         [10] 8632 	ld	sp, ix
   82AE DD E1         [14] 8633 	pop	ix
   82B0 C9            [10] 8634 	ret
                           8635 ;src/main.c:1680: void comprobacionesBloques(u8 c, u8 f){
                           8636 ;	---------------------------------
                           8637 ; Function comprobacionesBloques
                           8638 ; ---------------------------------
   82B1                    8639 _comprobacionesBloques::
   82B1 DD E5         [15] 8640 	push	ix
   82B3 DD 21 00 00   [14] 8641 	ld	ix,#0
   82B7 DD 39         [15] 8642 	add	ix,sp
   82B9 F5            [11] 8643 	push	af
   82BA 3B            [ 6] 8644 	dec	sp
                           8645 ;src/main.c:1681: if((f == 1 && c== 2) || (matriz[f][c] == 2)  || (f == 9 && c== 10) || (f == 0 && c== 0) || (f == 10 && c== 12) || (f == 9 && c== 12) || (f == 1 && c== 0)){
   82BB DD 7E 05      [19] 8646 	ld	a,5 (ix)
   82BE 3D            [ 4] 8647 	dec	a
   82BF 20 04         [12] 8648 	jr	NZ,00156$
   82C1 3E 01         [ 7] 8649 	ld	a,#0x01
   82C3 18 01         [12] 8650 	jr	00157$
   82C5                    8651 00156$:
   82C5 AF            [ 4] 8652 	xor	a,a
   82C6                    8653 00157$:
   82C6 4F            [ 4] 8654 	ld	c,a
   82C7 B7            [ 4] 8655 	or	a, a
   82C8 28 08         [12] 8656 	jr	Z,00105$
   82CA DD 7E 04      [19] 8657 	ld	a,4 (ix)
   82CD D6 02         [ 7] 8658 	sub	a, #0x02
   82CF CA 94 83      [10] 8659 	jp	Z,00116$
   82D2                    8660 00105$:
   82D2 DD 5E 05      [19] 8661 	ld	e,5 (ix)
   82D5 16 00         [ 7] 8662 	ld	d,#0x00
   82D7 6B            [ 4] 8663 	ld	l, e
   82D8 62            [ 4] 8664 	ld	h, d
   82D9 29            [11] 8665 	add	hl, hl
   82DA 19            [11] 8666 	add	hl, de
   82DB 29            [11] 8667 	add	hl, hl
   82DC 29            [11] 8668 	add	hl, hl
   82DD 19            [11] 8669 	add	hl, de
   82DE 11 2C 35      [10] 8670 	ld	de,#_matriz
   82E1 19            [11] 8671 	add	hl,de
   82E2 DD 7E 04      [19] 8672 	ld	a,4 (ix)
   82E5 DD 77 FF      [19] 8673 	ld	-1 (ix), a
   82E8 5F            [ 4] 8674 	ld	e, a
   82E9 16 00         [ 7] 8675 	ld	d,#0x00
   82EB 19            [11] 8676 	add	hl,de
   82EC 7E            [ 7] 8677 	ld	a,(hl)
   82ED D6 02         [ 7] 8678 	sub	a, #0x02
   82EF CA 94 83      [10] 8679 	jp	Z,00116$
   82F2 DD 7E 05      [19] 8680 	ld	a,5 (ix)
   82F5 D6 09         [ 7] 8681 	sub	a, #0x09
   82F7 20 04         [12] 8682 	jr	NZ,00160$
   82F9 3E 01         [ 7] 8683 	ld	a,#0x01
   82FB 18 01         [12] 8684 	jr	00161$
   82FD                    8685 00160$:
   82FD AF            [ 4] 8686 	xor	a,a
   82FE                    8687 00161$:
   82FE 5F            [ 4] 8688 	ld	e,a
   82FF B7            [ 4] 8689 	or	a, a
   8300 28 08         [12] 8690 	jr	Z,00109$
   8302 DD 7E FF      [19] 8691 	ld	a,-1 (ix)
   8305 D6 0A         [ 7] 8692 	sub	a, #0x0A
   8307 CA 94 83      [10] 8693 	jp	Z,00116$
   830A                    8694 00109$:
   830A DD 7E 05      [19] 8695 	ld	a,5 (ix)
   830D B7            [ 4] 8696 	or	a, a
   830E 20 07         [12] 8697 	jr	NZ,00111$
   8310 DD 7E FF      [19] 8698 	ld	a,-1 (ix)
   8313 B7            [ 4] 8699 	or	a, a
   8314 CA 94 83      [10] 8700 	jp	Z,00116$
   8317                    8701 00111$:
   8317 DD 7E FF      [19] 8702 	ld	a,-1 (ix)
   831A D6 0C         [ 7] 8703 	sub	a, #0x0C
   831C 20 04         [12] 8704 	jr	NZ,00163$
   831E 3E 01         [ 7] 8705 	ld	a,#0x01
   8320 18 01         [12] 8706 	jr	00164$
   8322                    8707 00163$:
   8322 AF            [ 4] 8708 	xor	a,a
   8323                    8709 00164$:
   8323 47            [ 4] 8710 	ld	b,a
   8324 DD 7E 05      [19] 8711 	ld	a,5 (ix)
   8327 D6 0A         [ 7] 8712 	sub	a,#0x0A
   8329 20 03         [12] 8713 	jr	NZ,00113$
   832B B0            [ 4] 8714 	or	a,b
   832C 20 66         [12] 8715 	jr	NZ,00116$
   832E                    8716 00113$:
   832E 7B            [ 4] 8717 	ld	a,e
   832F B7            [ 4] 8718 	or	a, a
   8330 28 04         [12] 8719 	jr	Z,00115$
   8332 78            [ 4] 8720 	ld	a,b
   8333 B7            [ 4] 8721 	or	a, a
   8334 20 5E         [12] 8722 	jr	NZ,00116$
   8336                    8723 00115$:
   8336 79            [ 4] 8724 	ld	a,c
   8337 B7            [ 4] 8725 	or	a, a
   8338 28 06         [12] 8726 	jr	Z,00102$
   833A DD 7E FF      [19] 8727 	ld	a,-1 (ix)
   833D B7            [ 4] 8728 	or	a, a
   833E 28 54         [12] 8729 	jr	Z,00116$
   8340                    8730 00102$:
                           8731 ;src/main.c:1686: cpct_etm_drawTileBox2x4 (((c*6)/2), (24+(f*16))/4, 3.5, 4, pre_terrain_W, ORIGEN_MAPA, mapa);  
   8340 2A A3 4F      [16] 8732 	ld	hl,(_mapa)
   8343 E3            [19] 8733 	ex	(sp), hl
   8344 DD 6E 05      [19] 8734 	ld	l,5 (ix)
   8347 26 00         [ 7] 8735 	ld	h,#0x00
   8349 29            [11] 8736 	add	hl, hl
   834A 29            [11] 8737 	add	hl, hl
   834B 29            [11] 8738 	add	hl, hl
   834C 29            [11] 8739 	add	hl, hl
   834D 4D            [ 4] 8740 	ld	c, l
   834E 44            [ 4] 8741 	ld	b, h
   834F 21 18 00      [10] 8742 	ld	hl,#0x0018
   8352 09            [11] 8743 	add	hl,bc
   8353 5D            [ 4] 8744 	ld	e, l
   8354 54            [ 4] 8745 	ld	d, h
   8355 CB 7C         [ 8] 8746 	bit	7, h
   8357 28 05         [12] 8747 	jr	Z,00118$
   8359 21 1B 00      [10] 8748 	ld	hl,#0x001B
   835C 09            [11] 8749 	add	hl,bc
   835D EB            [ 4] 8750 	ex	de,hl
   835E                    8751 00118$:
   835E CB 2A         [ 8] 8752 	sra	d
   8360 CB 1B         [ 8] 8753 	rr	e
   8362 CB 2A         [ 8] 8754 	sra	d
   8364 CB 1B         [ 8] 8755 	rr	e
   8366 43            [ 4] 8756 	ld	b,e
   8367 DD 5E FF      [19] 8757 	ld	e,-1 (ix)
   836A 16 00         [ 7] 8758 	ld	d,#0x00
   836C 6B            [ 4] 8759 	ld	l, e
   836D 62            [ 4] 8760 	ld	h, d
   836E 29            [11] 8761 	add	hl, hl
   836F 19            [11] 8762 	add	hl, de
   8370 29            [11] 8763 	add	hl, hl
   8371 5D            [ 4] 8764 	ld	e,l
   8372 4C            [ 4] 8765 	ld	c,h
   8373 CB 7C         [ 8] 8766 	bit	7, h
   8375 28 03         [12] 8767 	jr	Z,00119$
   8377 23            [ 6] 8768 	inc	hl
   8378 5D            [ 4] 8769 	ld	e,l
   8379 4C            [ 4] 8770 	ld	c,h
   837A                    8771 00119$:
   837A 51            [ 4] 8772 	ld	d, c
   837B CB 2A         [ 8] 8773 	sra	d
   837D CB 1B         [ 8] 8774 	rr	e
   837F 53            [ 4] 8775 	ld	d,e
   8380 E1            [10] 8776 	pop	hl
   8381 E5            [11] 8777 	push	hl
   8382 E5            [11] 8778 	push	hl
   8383 21 00 C0      [10] 8779 	ld	hl,#0xC000
   8386 E5            [11] 8780 	push	hl
   8387 21 04 27      [10] 8781 	ld	hl,#0x2704
   838A E5            [11] 8782 	push	hl
   838B 3E 03         [ 7] 8783 	ld	a,#0x03
   838D F5            [11] 8784 	push	af
   838E 33            [ 6] 8785 	inc	sp
   838F 4A            [ 4] 8786 	ld	c, d
   8390 C5            [11] 8787 	push	bc
   8391 CD AD 3F      [17] 8788 	call	_cpct_etm_drawTileBox2x4
   8394                    8789 00116$:
   8394 DD F9         [10] 8790 	ld	sp, ix
   8396 DD E1         [14] 8791 	pop	ix
   8398 C9            [10] 8792 	ret
                           8793 ;src/main.c:1690: void comprobacionesBloquesH(u8 c, u8 f, u8 f2, u8 mirar, Tdisparo * disp){
                           8794 ;	---------------------------------
                           8795 ; Function comprobacionesBloquesH
                           8796 ; ---------------------------------
   8399                    8797 _comprobacionesBloquesH::
   8399 DD E5         [15] 8798 	push	ix
   839B DD 21 00 00   [14] 8799 	ld	ix,#0
   839F DD 39         [15] 8800 	add	ix,sp
   83A1 21 F8 FF      [10] 8801 	ld	hl,#-8
   83A4 39            [11] 8802 	add	hl,sp
   83A5 F9            [ 6] 8803 	ld	sp,hl
                           8804 ;src/main.c:1691: if((f == 1 && c== 0) || (f == 9 && c== 12) || (f == 1 && c== 2)  || (f == 9 && c== 10)){
   83A6 DD 7E 05      [19] 8805 	ld	a,5 (ix)
   83A9 3D            [ 4] 8806 	dec	a
   83AA 20 04         [12] 8807 	jr	NZ,00217$
   83AC 3E 01         [ 7] 8808 	ld	a,#0x01
   83AE 18 01         [12] 8809 	jr	00218$
   83B0                    8810 00217$:
   83B0 AF            [ 4] 8811 	xor	a,a
   83B1                    8812 00218$:
   83B1 4F            [ 4] 8813 	ld	c,a
   83B2 B7            [ 4] 8814 	or	a, a
   83B3 28 07         [12] 8815 	jr	Z,00136$
   83B5 DD 7E 04      [19] 8816 	ld	a,4 (ix)
   83B8 B7            [ 4] 8817 	or	a, a
   83B9 CA 79 85      [10] 8818 	jp	Z,00141$
   83BC                    8819 00136$:
   83BC DD 7E 05      [19] 8820 	ld	a,5 (ix)
   83BF D6 09         [ 7] 8821 	sub	a, #0x09
   83C1 20 04         [12] 8822 	jr	NZ,00219$
   83C3 3E 01         [ 7] 8823 	ld	a,#0x01
   83C5 18 01         [12] 8824 	jr	00220$
   83C7                    8825 00219$:
   83C7 AF            [ 4] 8826 	xor	a,a
   83C8                    8827 00220$:
   83C8 47            [ 4] 8828 	ld	b,a
   83C9 DD 7E 04      [19] 8829 	ld	a,4 (ix)
   83CC D6 0C         [ 7] 8830 	sub	a, #0x0C
   83CE 20 04         [12] 8831 	jr	NZ,00221$
   83D0 3E 01         [ 7] 8832 	ld	a,#0x01
   83D2 18 01         [12] 8833 	jr	00222$
   83D4                    8834 00221$:
   83D4 AF            [ 4] 8835 	xor	a,a
   83D5                    8836 00222$:
   83D5 6F            [ 4] 8837 	ld	l,a
   83D6 78            [ 4] 8838 	ld	a,b
   83D7 B7            [ 4] 8839 	or	a, a
   83D8 28 05         [12] 8840 	jr	Z,00138$
   83DA 7D            [ 4] 8841 	ld	a,l
   83DB B7            [ 4] 8842 	or	a, a
   83DC C2 79 85      [10] 8843 	jp	NZ,00141$
   83DF                    8844 00138$:
   83DF 79            [ 4] 8845 	ld	a,c
   83E0 B7            [ 4] 8846 	or	a, a
   83E1 28 08         [12] 8847 	jr	Z,00140$
   83E3 DD 7E 04      [19] 8848 	ld	a,4 (ix)
   83E6 D6 02         [ 7] 8849 	sub	a, #0x02
   83E8 CA 79 85      [10] 8850 	jp	Z,00141$
   83EB                    8851 00140$:
   83EB 78            [ 4] 8852 	ld	a,b
   83EC B7            [ 4] 8853 	or	a, a
   83ED 28 08         [12] 8854 	jr	Z,00132$
   83EF DD 7E 04      [19] 8855 	ld	a,4 (ix)
   83F2 D6 0A         [ 7] 8856 	sub	a, #0x0A
   83F4 CA 79 85      [10] 8857 	jp	Z,00141$
   83F7                    8858 00132$:
                           8859 ;src/main.c:1695: if(mirar==M_izquierda){
   83F7 DD 7E 07      [19] 8860 	ld	a,7 (ix)
   83FA 3D            [ 4] 8861 	dec	a
   83FB 20 04         [12] 8862 	jr	NZ,00225$
   83FD 3E 01         [ 7] 8863 	ld	a,#0x01
   83FF 18 01         [12] 8864 	jr	00226$
   8401                    8865 00225$:
   8401 AF            [ 4] 8866 	xor	a,a
   8402                    8867 00226$:
   8402 DD 77 F8      [19] 8868 	ld	-8 (ix),a
                           8869 ;src/main.c:1696: disp->px=disp->x;
   8405 DD 5E 08      [19] 8870 	ld	e,8 (ix)
   8408 DD 56 09      [19] 8871 	ld	d,9 (ix)
   840B 4B            [ 4] 8872 	ld	c, e
   840C 42            [ 4] 8873 	ld	b, d
   840D 03            [ 6] 8874 	inc	bc
   840E 03            [ 6] 8875 	inc	bc
                           8876 ;src/main.c:1694: else if((f == 10 && c== 12) || (f == 0 && c== 0)){
   840F DD 7E 05      [19] 8877 	ld	a,5 (ix)
   8412 D6 0A         [ 7] 8878 	sub	a,#0x0A
   8414 20 03         [12] 8879 	jr	NZ,00130$
   8416 B5            [ 4] 8880 	or	a,l
   8417 20 0C         [12] 8881 	jr	NZ,00125$
   8419                    8882 00130$:
   8419 DD 7E 05      [19] 8883 	ld	a,5 (ix)
   841C B7            [ 4] 8884 	or	a, a
   841D 20 41         [12] 8885 	jr	NZ,00126$
   841F DD 7E 04      [19] 8886 	ld	a,4 (ix)
   8422 B7            [ 4] 8887 	or	a, a
   8423 20 3B         [12] 8888 	jr	NZ,00126$
   8425                    8889 00125$:
                           8890 ;src/main.c:1695: if(mirar==M_izquierda){
   8425 DD 7E F8      [19] 8891 	ld	a,-8 (ix)
   8428 B7            [ 4] 8892 	or	a, a
   8429 28 04         [12] 8893 	jr	Z,00104$
                           8894 ;src/main.c:1696: disp->px=disp->x;
   842B 1A            [ 7] 8895 	ld	a,(de)
   842C 02            [ 7] 8896 	ld	(bc),a
   842D 18 08         [12] 8897 	jr	00105$
   842F                    8898 00104$:
                           8899 ;src/main.c:1698: else if(mirar==M_derecha){
   842F DD 7E 07      [19] 8900 	ld	a,7 (ix)
   8432 B7            [ 4] 8901 	or	a, a
   8433 20 02         [12] 8902 	jr	NZ,00105$
                           8903 ;src/main.c:1699: disp->px=disp->x;
   8435 1A            [ 7] 8904 	ld	a,(de)
   8436 02            [ 7] 8905 	ld	(bc),a
   8437                    8906 00105$:
                           8907 ;src/main.c:1701: borrarDisparoHorizontal(disp);
   8437 C5            [11] 8908 	push	bc
   8438 D5            [11] 8909 	push	de
   8439 DD 6E 08      [19] 8910 	ld	l,8 (ix)
   843C DD 66 09      [19] 8911 	ld	h,9 (ix)
   843F E5            [11] 8912 	push	hl
   8440 CD 16 82      [17] 8913 	call	_borrarDisparoHorizontal
   8443 F1            [10] 8914 	pop	af
   8444 D1            [10] 8915 	pop	de
   8445 C1            [10] 8916 	pop	bc
                           8917 ;src/main.c:1703: if(mirar==M_izquierda){
   8446 DD 7E F8      [19] 8918 	ld	a,-8 (ix)
   8449 B7            [ 4] 8919 	or	a, a
   844A 28 06         [12] 8920 	jr	Z,00109$
                           8921 ;src/main.c:1704: disp->px=disp->x+1;
   844C 1A            [ 7] 8922 	ld	a,(de)
   844D 3C            [ 4] 8923 	inc	a
   844E 02            [ 7] 8924 	ld	(bc),a
   844F C3 79 85      [10] 8925 	jp	00141$
   8452                    8926 00109$:
                           8927 ;src/main.c:1706: else if(mirar==M_derecha){
   8452 DD 7E 07      [19] 8928 	ld	a,7 (ix)
   8455 B7            [ 4] 8929 	or	a, a
   8456 C2 79 85      [10] 8930 	jp	NZ,00141$
                           8931 ;src/main.c:1707: disp->px=disp->x-2;
   8459 1A            [ 7] 8932 	ld	a,(de)
   845A C6 FE         [ 7] 8933 	add	a,#0xFE
   845C 02            [ 7] 8934 	ld	(bc),a
   845D C3 79 85      [10] 8935 	jp	00141$
   8460                    8936 00126$:
                           8937 ;src/main.c:1710: else if(matriz[f2][c]==2 || (matriz[f][c] == 2)){
   8460 D5            [11] 8938 	push	de
   8461 DD 5E 06      [19] 8939 	ld	e,6 (ix)
   8464 16 00         [ 7] 8940 	ld	d,#0x00
   8466 6B            [ 4] 8941 	ld	l, e
   8467 62            [ 4] 8942 	ld	h, d
   8468 29            [11] 8943 	add	hl, hl
   8469 19            [11] 8944 	add	hl, de
   846A 29            [11] 8945 	add	hl, hl
   846B 29            [11] 8946 	add	hl, hl
   846C 19            [11] 8947 	add	hl, de
   846D D1            [10] 8948 	pop	de
   846E 3E 2C         [ 7] 8949 	ld	a,#<(_matriz)
   8470 85            [ 4] 8950 	add	a, l
   8471 6F            [ 4] 8951 	ld	l,a
   8472 3E 35         [ 7] 8952 	ld	a,#>(_matriz)
   8474 8C            [ 4] 8953 	adc	a, h
   8475 67            [ 4] 8954 	ld	h,a
   8476 DD 7E 04      [19] 8955 	ld	a,4 (ix)
   8479 DD 77 F9      [19] 8956 	ld	-7 (ix), a
   847C 85            [ 4] 8957 	add	a, l
   847D 6F            [ 4] 8958 	ld	l,a
   847E 3E 00         [ 7] 8959 	ld	a,#0x00
   8480 8C            [ 4] 8960 	adc	a, h
   8481 67            [ 4] 8961 	ld	h,a
   8482 7E            [ 7] 8962 	ld	a,(hl)
   8483 D6 02         [ 7] 8963 	sub	a, #0x02
   8485 CA 79 85      [10] 8964 	jp	Z,00141$
   8488 D5            [11] 8965 	push	de
   8489 DD 5E 05      [19] 8966 	ld	e,5 (ix)
   848C 16 00         [ 7] 8967 	ld	d,#0x00
   848E 6B            [ 4] 8968 	ld	l, e
   848F 62            [ 4] 8969 	ld	h, d
   8490 29            [11] 8970 	add	hl, hl
   8491 19            [11] 8971 	add	hl, de
   8492 29            [11] 8972 	add	hl, hl
   8493 29            [11] 8973 	add	hl, hl
   8494 19            [11] 8974 	add	hl, de
   8495 D1            [10] 8975 	pop	de
   8496 3E 2C         [ 7] 8976 	ld	a,#<(_matriz)
   8498 85            [ 4] 8977 	add	a, l
   8499 6F            [ 4] 8978 	ld	l,a
   849A 3E 35         [ 7] 8979 	ld	a,#>(_matriz)
   849C 8C            [ 4] 8980 	adc	a, h
   849D 67            [ 4] 8981 	ld	h,a
   849E DD 7E F9      [19] 8982 	ld	a,-7 (ix)
   84A1 85            [ 4] 8983 	add	a, l
   84A2 6F            [ 4] 8984 	ld	l,a
   84A3 3E 00         [ 7] 8985 	ld	a,#0x00
   84A5 8C            [ 4] 8986 	adc	a, h
   84A6 67            [ 4] 8987 	ld	h,a
   84A7 7E            [ 7] 8988 	ld	a,(hl)
   84A8 D6 02         [ 7] 8989 	sub	a, #0x02
   84AA CA 79 85      [10] 8990 	jp	Z,00141$
                           8991 ;src/main.c:1715: cpct_etm_drawTileBox2x4 (((c*6)/2), (24+(f*16))/4, 3.5, 4, pre_terrain_W, ORIGEN_MAPA, mapa);
   84AD 2A A3 4F      [16] 8992 	ld	hl,(_mapa)
   84B0 DD 75 FA      [19] 8993 	ld	-6 (ix),l
   84B3 DD 74 FB      [19] 8994 	ld	-5 (ix),h
   84B6 DD 6E 05      [19] 8995 	ld	l,5 (ix)
   84B9 26 00         [ 7] 8996 	ld	h,#0x00
   84BB 29            [11] 8997 	add	hl, hl
   84BC 29            [11] 8998 	add	hl, hl
   84BD 29            [11] 8999 	add	hl, hl
   84BE 29            [11] 9000 	add	hl, hl
   84BF DD 75 FE      [19] 9001 	ld	-2 (ix),l
   84C2 DD 74 FF      [19] 9002 	ld	-1 (ix),h
   84C5 DD 7E FE      [19] 9003 	ld	a,-2 (ix)
   84C8 C6 18         [ 7] 9004 	add	a, #0x18
   84CA DD 77 FC      [19] 9005 	ld	-4 (ix),a
   84CD DD 7E FF      [19] 9006 	ld	a,-1 (ix)
   84D0 CE 00         [ 7] 9007 	adc	a, #0x00
   84D2 DD 77 FD      [19] 9008 	ld	-3 (ix),a
   84D5 DD 6E FC      [19] 9009 	ld	l,-4 (ix)
   84D8 DD 66 FD      [19] 9010 	ld	h,-3 (ix)
   84DB DD CB FD 7E   [20] 9011 	bit	7, -3 (ix)
   84DF 28 0C         [12] 9012 	jr	Z,00143$
   84E1 DD 7E FE      [19] 9013 	ld	a,-2 (ix)
   84E4 C6 1B         [ 7] 9014 	add	a, #0x1B
   84E6 6F            [ 4] 9015 	ld	l,a
   84E7 DD 7E FF      [19] 9016 	ld	a,-1 (ix)
   84EA CE 00         [ 7] 9017 	adc	a, #0x00
   84EC 67            [ 4] 9018 	ld	h,a
   84ED                    9019 00143$:
   84ED CB 2C         [ 8] 9020 	sra	h
   84EF CB 1D         [ 8] 9021 	rr	l
   84F1 CB 2C         [ 8] 9022 	sra	h
   84F3 CB 1D         [ 8] 9023 	rr	l
   84F5 DD 75 FC      [19] 9024 	ld	-4 (ix),l
   84F8 D5            [11] 9025 	push	de
   84F9 DD 5E F9      [19] 9026 	ld	e,-7 (ix)
   84FC 16 00         [ 7] 9027 	ld	d,#0x00
   84FE 6B            [ 4] 9028 	ld	l, e
   84FF 62            [ 4] 9029 	ld	h, d
   8500 29            [11] 9030 	add	hl, hl
   8501 19            [11] 9031 	add	hl, de
   8502 29            [11] 9032 	add	hl, hl
   8503 D1            [10] 9033 	pop	de
   8504 DD 75 FE      [19] 9034 	ld	-2 (ix),l
   8507 DD 74 FF      [19] 9035 	ld	-1 (ix),h
   850A CB 7C         [ 8] 9036 	bit	7, h
   850C 28 07         [12] 9037 	jr	Z,00144$
   850E 23            [ 6] 9038 	inc	hl
   850F DD 75 FE      [19] 9039 	ld	-2 (ix),l
   8512 DD 74 FF      [19] 9040 	ld	-1 (ix),h
   8515                    9041 00144$:
   8515 DD 6E FE      [19] 9042 	ld	l,-2 (ix)
   8518 DD 66 FF      [19] 9043 	ld	h,-1 (ix)
   851B CB 2C         [ 8] 9044 	sra	h
   851D CB 1D         [ 8] 9045 	rr	l
   851F DD 75 FE      [19] 9046 	ld	-2 (ix),l
   8522 C5            [11] 9047 	push	bc
   8523 D5            [11] 9048 	push	de
   8524 DD 6E FA      [19] 9049 	ld	l,-6 (ix)
   8527 DD 66 FB      [19] 9050 	ld	h,-5 (ix)
   852A E5            [11] 9051 	push	hl
   852B 21 00 C0      [10] 9052 	ld	hl,#0xC000
   852E E5            [11] 9053 	push	hl
   852F 21 04 27      [10] 9054 	ld	hl,#0x2704
   8532 E5            [11] 9055 	push	hl
   8533 3E 03         [ 7] 9056 	ld	a,#0x03
   8535 F5            [11] 9057 	push	af
   8536 33            [ 6] 9058 	inc	sp
   8537 DD 66 FC      [19] 9059 	ld	h,-4 (ix)
   853A DD 6E FE      [19] 9060 	ld	l,-2 (ix)
   853D E5            [11] 9061 	push	hl
   853E CD AD 3F      [17] 9062 	call	_cpct_etm_drawTileBox2x4
   8541 D1            [10] 9063 	pop	de
   8542 C1            [10] 9064 	pop	bc
                           9065 ;src/main.c:1716: if(mirar==M_izquierda){
   8543 DD 7E F8      [19] 9066 	ld	a,-8 (ix)
   8546 B7            [ 4] 9067 	or	a, a
   8547 28 04         [12] 9068 	jr	Z,00114$
                           9069 ;src/main.c:1717: disp->px=disp->x;
   8549 1A            [ 7] 9070 	ld	a,(de)
   854A 02            [ 7] 9071 	ld	(bc),a
   854B 18 08         [12] 9072 	jr	00115$
   854D                    9073 00114$:
                           9074 ;src/main.c:1719: else if(mirar==M_derecha){
   854D DD 7E 07      [19] 9075 	ld	a,7 (ix)
   8550 B7            [ 4] 9076 	or	a, a
   8551 20 02         [12] 9077 	jr	NZ,00115$
                           9078 ;src/main.c:1720: disp->px=disp->x;
   8553 1A            [ 7] 9079 	ld	a,(de)
   8554 02            [ 7] 9080 	ld	(bc),a
   8555                    9081 00115$:
                           9082 ;src/main.c:1722: borrarDisparoHorizontal(disp);
   8555 C5            [11] 9083 	push	bc
   8556 D5            [11] 9084 	push	de
   8557 DD 6E 08      [19] 9085 	ld	l,8 (ix)
   855A DD 66 09      [19] 9086 	ld	h,9 (ix)
   855D E5            [11] 9087 	push	hl
   855E CD 16 82      [17] 9088 	call	_borrarDisparoHorizontal
   8561 F1            [10] 9089 	pop	af
   8562 D1            [10] 9090 	pop	de
   8563 C1            [10] 9091 	pop	bc
                           9092 ;src/main.c:1724: if(mirar==M_izquierda){
   8564 DD 7E F8      [19] 9093 	ld	a,-8 (ix)
   8567 B7            [ 4] 9094 	or	a, a
   8568 28 05         [12] 9095 	jr	Z,00119$
                           9096 ;src/main.c:1725: disp->px=disp->x+1;
   856A 1A            [ 7] 9097 	ld	a,(de)
   856B 3C            [ 4] 9098 	inc	a
   856C 02            [ 7] 9099 	ld	(bc),a
   856D 18 0A         [12] 9100 	jr	00141$
   856F                    9101 00119$:
                           9102 ;src/main.c:1727: else if(mirar==M_derecha){
   856F DD 7E 07      [19] 9103 	ld	a,7 (ix)
   8572 B7            [ 4] 9104 	or	a, a
   8573 20 04         [12] 9105 	jr	NZ,00141$
                           9106 ;src/main.c:1728: disp->px=disp->x-2;
   8575 1A            [ 7] 9107 	ld	a,(de)
   8576 C6 FE         [ 7] 9108 	add	a,#0xFE
   8578 02            [ 7] 9109 	ld	(bc),a
   8579                    9110 00141$:
   8579 DD F9         [10] 9111 	ld	sp, ix
   857B DD E1         [14] 9112 	pop	ix
   857D C9            [10] 9113 	ret
                           9114 ;src/main.c:1736: void compruebaPersonaje(u8 disx, u8 disy, u8 prox, u8 proy, TProta * pro, Tdisparo * disp){
                           9115 ;	---------------------------------
                           9116 ; Function compruebaPersonaje
                           9117 ; ---------------------------------
   857E                    9118 _compruebaPersonaje::
   857E DD E5         [15] 9119 	push	ix
   8580 DD 21 00 00   [14] 9120 	ld	ix,#0
   8584 DD 39         [15] 9121 	add	ix,sp
   8586 F5            [11] 9122 	push	af
   8587 F5            [11] 9123 	push	af
                           9124 ;src/main.c:1737: if(disx>prox-2 && disx<prox+7 && disy>proy-2 && disy<proy+15){
   8588 DD 7E 06      [19] 9125 	ld	a,6 (ix)
   858B DD 77 FC      [19] 9126 	ld	-4 (ix),a
   858E DD 36 FD 00   [19] 9127 	ld	-3 (ix),#0x00
   8592 DD 4E FC      [19] 9128 	ld	c,-4 (ix)
   8595 DD 46 FD      [19] 9129 	ld	b,-3 (ix)
   8598 0B            [ 6] 9130 	dec	bc
   8599 0B            [ 6] 9131 	dec	bc
   859A DD 7E 04      [19] 9132 	ld	a,4 (ix)
   859D DD 77 FE      [19] 9133 	ld	-2 (ix),a
   85A0 DD 36 FF 00   [19] 9134 	ld	-1 (ix),#0x00
   85A4 79            [ 4] 9135 	ld	a,c
   85A5 DD 96 FE      [19] 9136 	sub	a, -2 (ix)
   85A8 78            [ 4] 9137 	ld	a,b
   85A9 DD 9E FF      [19] 9138 	sbc	a, -1 (ix)
   85AC E2 B1 85      [10] 9139 	jp	PO, 00136$
   85AF EE 80         [ 7] 9140 	xor	a, #0x80
   85B1                    9141 00136$:
   85B1 F2 3F 86      [10] 9142 	jp	P,00110$
   85B4 DD 7E FC      [19] 9143 	ld	a,-4 (ix)
   85B7 C6 07         [ 7] 9144 	add	a, #0x07
   85B9 4F            [ 4] 9145 	ld	c,a
   85BA DD 7E FD      [19] 9146 	ld	a,-3 (ix)
   85BD CE 00         [ 7] 9147 	adc	a, #0x00
   85BF 47            [ 4] 9148 	ld	b,a
   85C0 DD 7E FE      [19] 9149 	ld	a,-2 (ix)
   85C3 91            [ 4] 9150 	sub	a, c
   85C4 DD 7E FF      [19] 9151 	ld	a,-1 (ix)
   85C7 98            [ 4] 9152 	sbc	a, b
   85C8 E2 CD 85      [10] 9153 	jp	PO, 00137$
   85CB EE 80         [ 7] 9154 	xor	a, #0x80
   85CD                    9155 00137$:
   85CD F2 3F 86      [10] 9156 	jp	P,00110$
   85D0 DD 5E 07      [19] 9157 	ld	e,7 (ix)
   85D3 16 00         [ 7] 9158 	ld	d,#0x00
   85D5 6B            [ 4] 9159 	ld	l,e
   85D6 62            [ 4] 9160 	ld	h,d
   85D7 2B            [ 6] 9161 	dec	hl
   85D8 2B            [ 6] 9162 	dec	hl
   85D9 DD 4E 05      [19] 9163 	ld	c,5 (ix)
   85DC 06 00         [ 7] 9164 	ld	b,#0x00
   85DE 7D            [ 4] 9165 	ld	a,l
   85DF 91            [ 4] 9166 	sub	a, c
   85E0 7C            [ 4] 9167 	ld	a,h
   85E1 98            [ 4] 9168 	sbc	a, b
   85E2 E2 E7 85      [10] 9169 	jp	PO, 00138$
   85E5 EE 80         [ 7] 9170 	xor	a, #0x80
   85E7                    9171 00138$:
   85E7 F2 3F 86      [10] 9172 	jp	P,00110$
   85EA 21 0F 00      [10] 9173 	ld	hl,#0x000F
   85ED 19            [11] 9174 	add	hl,de
   85EE 79            [ 4] 9175 	ld	a,c
   85EF 95            [ 4] 9176 	sub	a, l
   85F0 78            [ 4] 9177 	ld	a,b
   85F1 9C            [ 4] 9178 	sbc	a, h
   85F2 E2 F7 85      [10] 9179 	jp	PO, 00139$
   85F5 EE 80         [ 7] 9180 	xor	a, #0x80
   85F7                    9181 00139$:
   85F7 F2 3F 86      [10] 9182 	jp	P,00110$
                           9183 ;src/main.c:1738: sumaMarcador(pro->soy, ++pro->marcador);
   85FA DD 4E 08      [19] 9184 	ld	c,8 (ix)
   85FD DD 46 09      [19] 9185 	ld	b,9 (ix)
   8600 21 1C 00      [10] 9186 	ld	hl,#0x001C
   8603 09            [11] 9187 	add	hl,bc
   8604 56            [ 7] 9188 	ld	d,(hl)
   8605 14            [ 4] 9189 	inc	d
   8606 72            [ 7] 9190 	ld	(hl),d
   8607 C5            [11] 9191 	push	bc
   8608 FD E1         [14] 9192 	pop	iy
   860A FD 7E 1B      [19] 9193 	ld	a,27 (iy)
   860D C5            [11] 9194 	push	bc
   860E D5            [11] 9195 	push	de
   860F 33            [ 6] 9196 	inc	sp
   8610 F5            [11] 9197 	push	af
   8611 33            [ 6] 9198 	inc	sp
   8612 CD 5C 5A      [17] 9199 	call	_sumaMarcador
   8615 F1            [10] 9200 	pop	af
   8616 C1            [10] 9201 	pop	bc
                           9202 ;src/main.c:1739: if(pro->identidad == 0)lastWinner = 1;
   8617 03            [ 6] 9203 	inc	bc
   8618 03            [ 6] 9204 	inc	bc
   8619 60            [ 4] 9205 	ld	h,b
   861A 69            [ 4] 9206 	ld	l, c
   861B 4E            [ 7] 9207 	ld	c,(hl)
   861C 79            [ 4] 9208 	ld	a,c
   861D B7            [ 4] 9209 	or	a, a
   861E 20 05         [12] 9210 	jr	NZ,00102$
   8620 21 A8 4F      [10] 9211 	ld	hl,#_lastWinner + 0
   8623 36 01         [10] 9212 	ld	(hl), #0x01
   8625                    9213 00102$:
                           9214 ;src/main.c:1740: if(pro->identidad == 1)lastWinner = 2;
   8625 0D            [ 4] 9215 	dec	c
   8626 20 05         [12] 9216 	jr	NZ,00104$
   8628 21 A8 4F      [10] 9217 	ld	hl,#_lastWinner + 0
   862B 36 02         [10] 9218 	ld	(hl), #0x02
   862D                    9219 00104$:
                           9220 ;src/main.c:1741: ronda++;
   862D 21 B0 4F      [10] 9221 	ld	hl, #_ronda+0
   8630 34            [11] 9222 	inc	(hl)
                           9223 ;src/main.c:1742: borrarDisparoHorizontal(disp);
   8631 DD 6E 0A      [19] 9224 	ld	l,10 (ix)
   8634 DD 66 0B      [19] 9225 	ld	h,11 (ix)
   8637 E5            [11] 9226 	push	hl
   8638 CD 16 82      [17] 9227 	call	_borrarDisparoHorizontal
   863B F1            [10] 9228 	pop	af
                           9229 ;src/main.c:1743: reaparecer();
   863C CD 39 77      [17] 9230 	call	_reaparecer
   863F                    9231 00110$:
   863F DD F9         [10] 9232 	ld	sp, ix
   8641 DD E1         [14] 9233 	pop	ix
   8643 C9            [10] 9234 	ret
                           9235 ;src/main.c:1747: void borrarBloques(u8 mirar, TProta * proOpuesto, Tdisparo * disp, TProta * pro){
                           9236 ;	---------------------------------
                           9237 ; Function borrarBloques
                           9238 ; ---------------------------------
   8644                    9239 _borrarBloques::
   8644 DD E5         [15] 9240 	push	ix
   8646 DD 21 00 00   [14] 9241 	ld	ix,#0
   864A DD 39         [15] 9242 	add	ix,sp
   864C 21 EB FF      [10] 9243 	ld	hl,#-21
   864F 39            [11] 9244 	add	hl,sp
   8650 F9            [ 6] 9245 	ld	sp,hl
                           9246 ;src/main.c:1750: u8 c = (disp->x+2)/6;
   8651 DD 7E 07      [19] 9247 	ld	a,7 (ix)
   8654 DD 77 F3      [19] 9248 	ld	-13 (ix),a
   8657 DD 7E 08      [19] 9249 	ld	a,8 (ix)
   865A DD 77 F4      [19] 9250 	ld	-12 (ix),a
   865D DD 6E F3      [19] 9251 	ld	l,-13 (ix)
   8660 DD 66 F4      [19] 9252 	ld	h,-12 (ix)
   8663 7E            [ 7] 9253 	ld	a,(hl)
   8664 DD 77 FB      [19] 9254 	ld	-5 (ix), a
   8667 DD 77 F9      [19] 9255 	ld	-7 (ix),a
   866A DD 36 FA 00   [19] 9256 	ld	-6 (ix),#0x00
   866E DD 4E F9      [19] 9257 	ld	c,-7 (ix)
   8671 DD 46 FA      [19] 9258 	ld	b,-6 (ix)
   8674 03            [ 6] 9259 	inc	bc
   8675 03            [ 6] 9260 	inc	bc
   8676 21 06 00      [10] 9261 	ld	hl,#0x0006
   8679 E5            [11] 9262 	push	hl
   867A C5            [11] 9263 	push	bc
   867B CD BE 43      [17] 9264 	call	__divsint
   867E F1            [10] 9265 	pop	af
   867F F1            [10] 9266 	pop	af
   8680 DD 75 F0      [19] 9267 	ld	-16 (ix),l
                           9268 ;src/main.c:1751: u8 f = (disp->y-24)/16;
   8683 DD 7E F3      [19] 9269 	ld	a,-13 (ix)
   8686 C6 01         [ 7] 9270 	add	a, #0x01
   8688 DD 77 EC      [19] 9271 	ld	-20 (ix),a
   868B DD 7E F4      [19] 9272 	ld	a,-12 (ix)
   868E CE 00         [ 7] 9273 	adc	a, #0x00
   8690 DD 77 ED      [19] 9274 	ld	-19 (ix),a
   8693 DD 6E EC      [19] 9275 	ld	l,-20 (ix)
   8696 DD 66 ED      [19] 9276 	ld	h,-19 (ix)
   8699 4E            [ 7] 9277 	ld	c,(hl)
   869A DD 71 FE      [19] 9278 	ld	-2 (ix),c
   869D DD 36 FF 00   [19] 9279 	ld	-1 (ix),#0x00
   86A1 DD 7E FE      [19] 9280 	ld	a,-2 (ix)
   86A4 C6 E8         [ 7] 9281 	add	a,#0xE8
   86A6 DD 77 EE      [19] 9282 	ld	-18 (ix),a
   86A9 DD 7E FF      [19] 9283 	ld	a,-1 (ix)
   86AC CE FF         [ 7] 9284 	adc	a,#0xFF
   86AE DD 77 EF      [19] 9285 	ld	-17 (ix),a
   86B1 DD 4E EE      [19] 9286 	ld	c,-18 (ix)
   86B4 DD 46 EF      [19] 9287 	ld	b,-17 (ix)
   86B7 DD 7E EF      [19] 9288 	ld	a,-17 (ix)
   86BA 07            [ 4] 9289 	rlca
   86BB E6 01         [ 7] 9290 	and	a,#0x01
   86BD DD 77 F8      [19] 9291 	ld	-8 (ix),a
   86C0 DD 7E FE      [19] 9292 	ld	a,-2 (ix)
   86C3 C6 F7         [ 7] 9293 	add	a, #0xF7
   86C5 DD 77 F1      [19] 9294 	ld	-15 (ix),a
   86C8 DD 7E FF      [19] 9295 	ld	a,-1 (ix)
   86CB CE FF         [ 7] 9296 	adc	a, #0xFF
   86CD DD 77 F2      [19] 9297 	ld	-14 (ix),a
   86D0 DD 7E F8      [19] 9298 	ld	a,-8 (ix)
   86D3 B7            [ 4] 9299 	or	a, a
   86D4 28 06         [12] 9300 	jr	Z,00108$
   86D6 DD 4E F1      [19] 9301 	ld	c,-15 (ix)
   86D9 DD 46 F2      [19] 9302 	ld	b,-14 (ix)
   86DC                    9303 00108$:
   86DC CB 28         [ 8] 9304 	sra	b
   86DE CB 19         [ 8] 9305 	rr	c
   86E0 CB 28         [ 8] 9306 	sra	b
   86E2 CB 19         [ 8] 9307 	rr	c
   86E4 CB 28         [ 8] 9308 	sra	b
   86E6 CB 19         [ 8] 9309 	rr	c
   86E8 CB 28         [ 8] 9310 	sra	b
   86EA CB 19         [ 8] 9311 	rr	c
   86EC DD 71 F5      [19] 9312 	ld	-11 (ix),c
                           9313 ;src/main.c:1752: u8 f2 = (disp->y-24+4)/16;
   86EF DD 7E FE      [19] 9314 	ld	a,-2 (ix)
   86F2 C6 EC         [ 7] 9315 	add	a, #0xEC
   86F4 4F            [ 4] 9316 	ld	c, a
   86F5 DD 7E FF      [19] 9317 	ld	a, -1 (ix)
   86F8 CE FF         [ 7] 9318 	adc	a, #0xFF
   86FA 57            [ 4] 9319 	ld	d, a
   86FB 42            [ 4] 9320 	ld	b, d
   86FC CB 7A         [ 8] 9321 	bit	7, d
   86FE 28 0C         [12] 9322 	jr	Z,00109$
   8700 DD 7E FE      [19] 9323 	ld	a,-2 (ix)
   8703 C6 FB         [ 7] 9324 	add	a, #0xFB
   8705 4F            [ 4] 9325 	ld	c,a
   8706 DD 7E FF      [19] 9326 	ld	a,-1 (ix)
   8709 CE FF         [ 7] 9327 	adc	a, #0xFF
   870B 47            [ 4] 9328 	ld	b,a
   870C                    9329 00109$:
   870C CB 28         [ 8] 9330 	sra	b
   870E CB 19         [ 8] 9331 	rr	c
   8710 CB 28         [ 8] 9332 	sra	b
   8712 CB 19         [ 8] 9333 	rr	c
   8714 CB 28         [ 8] 9334 	sra	b
   8716 CB 19         [ 8] 9335 	rr	c
   8718 CB 28         [ 8] 9336 	sra	b
   871A CB 19         [ 8] 9337 	rr	c
   871C DD 71 EB      [19] 9338 	ld	-21 (ix),c
                           9339 ;src/main.c:1753: switch(mirar){
   871F 3E 03         [ 7] 9340 	ld	a,#0x03
   8721 DD 96 04      [19] 9341 	sub	a, 4 (ix)
   8724 DA 43 89      [10] 9342 	jp	C,00106$
                           9343 ;src/main.c:1757: compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
   8727 DD 7E 05      [19] 9344 	ld	a,5 (ix)
   872A DD 77 FC      [19] 9345 	ld	-4 (ix),a
   872D DD 7E 06      [19] 9346 	ld	a,6 (ix)
   8730 DD 77 FD      [19] 9347 	ld	-3 (ix),a
                           9348 ;src/main.c:1768: c = (disp->x)/6;
   8733 3E 06         [ 7] 9349 	ld	a,#0x06
   8735 F5            [11] 9350 	push	af
   8736 33            [ 6] 9351 	inc	sp
   8737 DD 7E FB      [19] 9352 	ld	a,-5 (ix)
   873A F5            [11] 9353 	push	af
   873B 33            [ 6] 9354 	inc	sp
                           9355 ;src/main.c:1757: compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
   873C CD D5 40      [17] 9356 	call	__divuchar
   873F F1            [10] 9357 	pop	af
   8740 DD 75 FB      [19] 9358 	ld	-5 (ix),l
   8743 DD 7E FC      [19] 9359 	ld	a,-4 (ix)
   8746 C6 01         [ 7] 9360 	add	a, #0x01
   8748 DD 77 F6      [19] 9361 	ld	-10 (ix),a
   874B DD 7E FD      [19] 9362 	ld	a,-3 (ix)
   874E CE 00         [ 7] 9363 	adc	a, #0x00
   8750 DD 77 F7      [19] 9364 	ld	-9 (ix),a
                           9365 ;src/main.c:1753: switch(mirar){
   8753 DD 5E 04      [19] 9366 	ld	e,4 (ix)
   8756 16 00         [ 7] 9367 	ld	d,#0x00
   8758 21 5F 87      [10] 9368 	ld	hl,#00137$
   875B 19            [11] 9369 	add	hl,de
   875C 19            [11] 9370 	add	hl,de
   875D 19            [11] 9371 	add	hl,de
   875E E9            [ 4] 9372 	jp	(hl)
   875F                    9373 00137$:
   875F C3 6B 87      [10] 9374 	jp	00101$
   8762 C3 C5 87      [10] 9375 	jp	00102$
   8765 C3 6C 88      [10] 9376 	jp	00103$
   8768 C3 DD 88      [10] 9377 	jp	00104$
                           9378 ;src/main.c:1754: case M_derecha: 
   876B                    9379 00101$:
                           9380 ;src/main.c:1756: comprobacionesBloquesH(c, f, f2, mirar, disp);
   876B DD 6E F3      [19] 9381 	ld	l,-13 (ix)
   876E DD 66 F4      [19] 9382 	ld	h,-12 (ix)
   8771 E5            [11] 9383 	push	hl
   8772 DD 66 04      [19] 9384 	ld	h,4 (ix)
   8775 DD 6E EB      [19] 9385 	ld	l,-21 (ix)
   8778 E5            [11] 9386 	push	hl
   8779 DD 66 F5      [19] 9387 	ld	h,-11 (ix)
   877C DD 6E F0      [19] 9388 	ld	l,-16 (ix)
   877F E5            [11] 9389 	push	hl
   8780 CD 99 83      [17] 9390 	call	_comprobacionesBloquesH
   8783 21 06 00      [10] 9391 	ld	hl,#6
   8786 39            [11] 9392 	add	hl,sp
   8787 F9            [ 6] 9393 	ld	sp,hl
                           9394 ;src/main.c:1757: compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
   8788 DD 6E F6      [19] 9395 	ld	l,-10 (ix)
   878B DD 66 F7      [19] 9396 	ld	h,-9 (ix)
   878E 56            [ 7] 9397 	ld	d,(hl)
   878F DD 6E FC      [19] 9398 	ld	l,-4 (ix)
   8792 DD 66 FD      [19] 9399 	ld	h,-3 (ix)
   8795 5E            [ 7] 9400 	ld	e,(hl)
   8796 DD 6E EC      [19] 9401 	ld	l,-20 (ix)
   8799 DD 66 ED      [19] 9402 	ld	h,-19 (ix)
   879C 4E            [ 7] 9403 	ld	c,(hl)
   879D DD 6E F3      [19] 9404 	ld	l,-13 (ix)
   87A0 DD 66 F4      [19] 9405 	ld	h,-12 (ix)
   87A3 46            [ 7] 9406 	ld	b, (hl)
   87A4 04            [ 4] 9407 	inc	b
   87A5 04            [ 4] 9408 	inc	b
   87A6 DD 6E F3      [19] 9409 	ld	l,-13 (ix)
   87A9 DD 66 F4      [19] 9410 	ld	h,-12 (ix)
   87AC E5            [11] 9411 	push	hl
   87AD DD 6E 09      [19] 9412 	ld	l,9 (ix)
   87B0 DD 66 0A      [19] 9413 	ld	h,10 (ix)
   87B3 E5            [11] 9414 	push	hl
   87B4 D5            [11] 9415 	push	de
   87B5 79            [ 4] 9416 	ld	a,c
   87B6 F5            [11] 9417 	push	af
   87B7 33            [ 6] 9418 	inc	sp
   87B8 C5            [11] 9419 	push	bc
   87B9 33            [ 6] 9420 	inc	sp
   87BA CD 7E 85      [17] 9421 	call	_compruebaPersonaje
   87BD 21 08 00      [10] 9422 	ld	hl,#8
   87C0 39            [11] 9423 	add	hl,sp
   87C1 F9            [ 6] 9424 	ld	sp,hl
                           9425 ;src/main.c:1758: break;
   87C2 C3 43 89      [10] 9426 	jp	00106$
                           9427 ;src/main.c:1759: case M_izquierda:
   87C5                    9428 00102$:
                           9429 ;src/main.c:1761: c = (disp->x-4)/6;
   87C5 DD 7E F9      [19] 9430 	ld	a,-7 (ix)
   87C8 C6 FC         [ 7] 9431 	add	a,#0xFC
   87CA 4F            [ 4] 9432 	ld	c,a
   87CB DD 7E FA      [19] 9433 	ld	a,-6 (ix)
   87CE CE FF         [ 7] 9434 	adc	a,#0xFF
   87D0 47            [ 4] 9435 	ld	b,a
   87D1 21 06 00      [10] 9436 	ld	hl,#0x0006
   87D4 E5            [11] 9437 	push	hl
   87D5 C5            [11] 9438 	push	bc
   87D6 CD BE 43      [17] 9439 	call	__divsint
   87D9 F1            [10] 9440 	pop	af
   87DA F1            [10] 9441 	pop	af
   87DB DD 75 F5      [19] 9442 	ld	-11 (ix),l
                           9443 ;src/main.c:1762: f = (disp->y-24)/16;
   87DE DD 7E EE      [19] 9444 	ld	a,-18 (ix)
   87E1 DD 77 F9      [19] 9445 	ld	-7 (ix),a
   87E4 DD 7E EF      [19] 9446 	ld	a,-17 (ix)
   87E7 DD 77 FA      [19] 9447 	ld	-6 (ix),a
   87EA DD 7E F8      [19] 9448 	ld	a,-8 (ix)
   87ED B7            [ 4] 9449 	or	a, a
   87EE 28 0C         [12] 9450 	jr	Z,00110$
   87F0 DD 7E F1      [19] 9451 	ld	a,-15 (ix)
   87F3 DD 77 F9      [19] 9452 	ld	-7 (ix),a
   87F6 DD 7E F2      [19] 9453 	ld	a,-14 (ix)
   87F9 DD 77 FA      [19] 9454 	ld	-6 (ix),a
   87FC                    9455 00110$:
   87FC DD 46 F9      [19] 9456 	ld	b,-7 (ix)
   87FF DD 4E FA      [19] 9457 	ld	c,-6 (ix)
   8802 CB 29         [ 8] 9458 	sra	c
   8804 CB 18         [ 8] 9459 	rr	b
   8806 CB 29         [ 8] 9460 	sra	c
   8808 CB 18         [ 8] 9461 	rr	b
   880A CB 29         [ 8] 9462 	sra	c
   880C CB 18         [ 8] 9463 	rr	b
   880E CB 29         [ 8] 9464 	sra	c
   8810 CB 18         [ 8] 9465 	rr	b
                           9466 ;src/main.c:1763: comprobacionesBloquesH(c, f, f2, mirar, disp);
   8812 DD 6E F3      [19] 9467 	ld	l,-13 (ix)
   8815 DD 66 F4      [19] 9468 	ld	h,-12 (ix)
   8818 E5            [11] 9469 	push	hl
   8819 DD 66 04      [19] 9470 	ld	h,4 (ix)
   881C DD 6E EB      [19] 9471 	ld	l,-21 (ix)
   881F E5            [11] 9472 	push	hl
   8820 C5            [11] 9473 	push	bc
   8821 33            [ 6] 9474 	inc	sp
   8822 DD 7E F5      [19] 9475 	ld	a,-11 (ix)
   8825 F5            [11] 9476 	push	af
   8826 33            [ 6] 9477 	inc	sp
   8827 CD 99 83      [17] 9478 	call	_comprobacionesBloquesH
   882A 21 06 00      [10] 9479 	ld	hl,#6
   882D 39            [11] 9480 	add	hl,sp
   882E F9            [ 6] 9481 	ld	sp,hl
                           9482 ;src/main.c:1764: compruebaPersonaje(disp->x+2, disp->y, proOpuesto->x, proOpuesto->y, pro, disp);
   882F DD 6E F6      [19] 9483 	ld	l,-10 (ix)
   8832 DD 66 F7      [19] 9484 	ld	h,-9 (ix)
   8835 56            [ 7] 9485 	ld	d,(hl)
   8836 DD 6E FC      [19] 9486 	ld	l,-4 (ix)
   8839 DD 66 FD      [19] 9487 	ld	h,-3 (ix)
   883C 5E            [ 7] 9488 	ld	e,(hl)
   883D DD 6E EC      [19] 9489 	ld	l,-20 (ix)
   8840 DD 66 ED      [19] 9490 	ld	h,-19 (ix)
   8843 4E            [ 7] 9491 	ld	c,(hl)
   8844 DD 6E F3      [19] 9492 	ld	l,-13 (ix)
   8847 DD 66 F4      [19] 9493 	ld	h,-12 (ix)
   884A 46            [ 7] 9494 	ld	b, (hl)
   884B 04            [ 4] 9495 	inc	b
   884C 04            [ 4] 9496 	inc	b
   884D DD 6E F3      [19] 9497 	ld	l,-13 (ix)
   8850 DD 66 F4      [19] 9498 	ld	h,-12 (ix)
   8853 E5            [11] 9499 	push	hl
   8854 DD 6E 09      [19] 9500 	ld	l,9 (ix)
   8857 DD 66 0A      [19] 9501 	ld	h,10 (ix)
   885A E5            [11] 9502 	push	hl
   885B D5            [11] 9503 	push	de
   885C 79            [ 4] 9504 	ld	a,c
   885D F5            [11] 9505 	push	af
   885E 33            [ 6] 9506 	inc	sp
   885F C5            [11] 9507 	push	bc
   8860 33            [ 6] 9508 	inc	sp
   8861 CD 7E 85      [17] 9509 	call	_compruebaPersonaje
   8864 21 08 00      [10] 9510 	ld	hl,#8
   8867 39            [11] 9511 	add	hl,sp
   8868 F9            [ 6] 9512 	ld	sp,hl
                           9513 ;src/main.c:1765: break;
   8869 C3 43 89      [10] 9514 	jp	00106$
                           9515 ;src/main.c:1767: case M_abajo:
   886C                    9516 00103$:
                           9517 ;src/main.c:1768: c = (disp->x)/6;
   886C DD 4E FB      [19] 9518 	ld	c,-5 (ix)
                           9519 ;src/main.c:1769: f = (disp->y-12)/16;
   886F DD 7E FE      [19] 9520 	ld	a,-2 (ix)
   8872 C6 F4         [ 7] 9521 	add	a,#0xF4
   8874 5F            [ 4] 9522 	ld	e, a
   8875 DD 7E FF      [19] 9523 	ld	a, -1 (ix)
   8878 CE FF         [ 7] 9524 	adc	a, #0xFF
   887A 6F            [ 4] 9525 	ld	l, a
   887B 55            [ 4] 9526 	ld	d, l
   887C CB 7D         [ 8] 9527 	bit	7, l
   887E 28 09         [12] 9528 	jr	Z,00111$
   8880 DD 5E FE      [19] 9529 	ld	e,-2 (ix)
   8883 DD 56 FF      [19] 9530 	ld	d,-1 (ix)
   8886 13            [ 6] 9531 	inc	de
   8887 13            [ 6] 9532 	inc	de
   8888 13            [ 6] 9533 	inc	de
   8889                    9534 00111$:
   8889 43            [ 4] 9535 	ld	b,e
   888A CB 2A         [ 8] 9536 	sra	d
   888C CB 18         [ 8] 9537 	rr	b
   888E CB 2A         [ 8] 9538 	sra	d
   8890 CB 18         [ 8] 9539 	rr	b
   8892 CB 2A         [ 8] 9540 	sra	d
   8894 CB 18         [ 8] 9541 	rr	b
   8896 CB 2A         [ 8] 9542 	sra	d
   8898 CB 18         [ 8] 9543 	rr	b
                           9544 ;src/main.c:1770: comprobacionesBloques(c, f);
   889A C5            [11] 9545 	push	bc
   889B CD B1 82      [17] 9546 	call	_comprobacionesBloques
   889E F1            [10] 9547 	pop	af
                           9548 ;src/main.c:1771: compruebaPersonaje(disp->x, disp->y+4, proOpuesto->x, proOpuesto->y, pro, disp);
   889F DD 6E F6      [19] 9549 	ld	l,-10 (ix)
   88A2 DD 66 F7      [19] 9550 	ld	h,-9 (ix)
   88A5 56            [ 7] 9551 	ld	d,(hl)
   88A6 DD 6E FC      [19] 9552 	ld	l,-4 (ix)
   88A9 DD 66 FD      [19] 9553 	ld	h,-3 (ix)
   88AC 5E            [ 7] 9554 	ld	e,(hl)
   88AD DD 6E EC      [19] 9555 	ld	l,-20 (ix)
   88B0 DD 66 ED      [19] 9556 	ld	h,-19 (ix)
   88B3 4E            [ 7] 9557 	ld	c,(hl)
   88B4 0C            [ 4] 9558 	inc	c
   88B5 0C            [ 4] 9559 	inc	c
   88B6 0C            [ 4] 9560 	inc	c
   88B7 0C            [ 4] 9561 	inc	c
   88B8 DD 6E F3      [19] 9562 	ld	l,-13 (ix)
   88BB DD 66 F4      [19] 9563 	ld	h,-12 (ix)
   88BE 46            [ 7] 9564 	ld	b,(hl)
   88BF DD 6E F3      [19] 9565 	ld	l,-13 (ix)
   88C2 DD 66 F4      [19] 9566 	ld	h,-12 (ix)
   88C5 E5            [11] 9567 	push	hl
   88C6 DD 6E 09      [19] 9568 	ld	l,9 (ix)
   88C9 DD 66 0A      [19] 9569 	ld	h,10 (ix)
   88CC E5            [11] 9570 	push	hl
   88CD D5            [11] 9571 	push	de
   88CE 79            [ 4] 9572 	ld	a,c
   88CF F5            [11] 9573 	push	af
   88D0 33            [ 6] 9574 	inc	sp
   88D1 C5            [11] 9575 	push	bc
   88D2 33            [ 6] 9576 	inc	sp
   88D3 CD 7E 85      [17] 9577 	call	_compruebaPersonaje
   88D6 21 08 00      [10] 9578 	ld	hl,#8
   88D9 39            [11] 9579 	add	hl,sp
   88DA F9            [ 6] 9580 	ld	sp,hl
                           9581 ;src/main.c:1772: break;
   88DB 18 66         [12] 9582 	jr	00106$
                           9583 ;src/main.c:1774: case M_arriba:
   88DD                    9584 00104$:
                           9585 ;src/main.c:1775: c = (disp->x)/6;
   88DD DD 56 FB      [19] 9586 	ld	d,-5 (ix)
                           9587 ;src/main.c:1776: f = (disp->y-24)/16;
   88E0 DD 46 EE      [19] 9588 	ld	b,-18 (ix)
   88E3 DD 5E EF      [19] 9589 	ld	e,-17 (ix)
   88E6 DD 7E F8      [19] 9590 	ld	a,-8 (ix)
   88E9 B7            [ 4] 9591 	or	a, a
   88EA 28 06         [12] 9592 	jr	Z,00112$
   88EC DD 46 F1      [19] 9593 	ld	b,-15 (ix)
   88EF DD 5E F2      [19] 9594 	ld	e,-14 (ix)
   88F2                    9595 00112$:
   88F2 CB 2B         [ 8] 9596 	sra	e
   88F4 CB 18         [ 8] 9597 	rr	b
   88F6 CB 2B         [ 8] 9598 	sra	e
   88F8 CB 18         [ 8] 9599 	rr	b
   88FA CB 2B         [ 8] 9600 	sra	e
   88FC CB 18         [ 8] 9601 	rr	b
   88FE CB 2B         [ 8] 9602 	sra	e
   8900 CB 18         [ 8] 9603 	rr	b
                           9604 ;src/main.c:1777: comprobacionesBloques(c, f);
   8902 4A            [ 4] 9605 	ld	c, d
   8903 C5            [11] 9606 	push	bc
   8904 CD B1 82      [17] 9607 	call	_comprobacionesBloques
   8907 F1            [10] 9608 	pop	af
                           9609 ;src/main.c:1778: compruebaPersonaje(disp->x, disp->y-4, proOpuesto->x, proOpuesto->y, pro, disp);
   8908 DD 6E F6      [19] 9610 	ld	l,-10 (ix)
   890B DD 66 F7      [19] 9611 	ld	h,-9 (ix)
   890E 56            [ 7] 9612 	ld	d,(hl)
   890F DD 6E FC      [19] 9613 	ld	l,-4 (ix)
   8912 DD 66 FD      [19] 9614 	ld	h,-3 (ix)
   8915 5E            [ 7] 9615 	ld	e,(hl)
   8916 DD 6E EC      [19] 9616 	ld	l,-20 (ix)
   8919 DD 66 ED      [19] 9617 	ld	h,-19 (ix)
   891C 7E            [ 7] 9618 	ld	a,(hl)
   891D C6 FC         [ 7] 9619 	add	a,#0xFC
   891F 4F            [ 4] 9620 	ld	c,a
   8920 DD 6E F3      [19] 9621 	ld	l,-13 (ix)
   8923 DD 66 F4      [19] 9622 	ld	h,-12 (ix)
   8926 46            [ 7] 9623 	ld	b,(hl)
   8927 DD 6E F3      [19] 9624 	ld	l,-13 (ix)
   892A DD 66 F4      [19] 9625 	ld	h,-12 (ix)
   892D E5            [11] 9626 	push	hl
   892E DD 6E 09      [19] 9627 	ld	l,9 (ix)
   8931 DD 66 0A      [19] 9628 	ld	h,10 (ix)
   8934 E5            [11] 9629 	push	hl
   8935 D5            [11] 9630 	push	de
   8936 79            [ 4] 9631 	ld	a,c
   8937 F5            [11] 9632 	push	af
   8938 33            [ 6] 9633 	inc	sp
   8939 C5            [11] 9634 	push	bc
   893A 33            [ 6] 9635 	inc	sp
   893B CD 7E 85      [17] 9636 	call	_compruebaPersonaje
   893E 21 08 00      [10] 9637 	ld	hl,#8
   8941 39            [11] 9638 	add	hl,sp
   8942 F9            [ 6] 9639 	ld	sp,hl
                           9640 ;src/main.c:1780: }
   8943                    9641 00106$:
   8943 DD F9         [10] 9642 	ld	sp, ix
   8945 DD E1         [14] 9643 	pop	ix
   8947 C9            [10] 9644 	ret
                           9645 ;src/main.c:1784: void comprobarTeclado() {
                           9646 ;	---------------------------------
                           9647 ; Function comprobarTeclado
                           9648 ; ---------------------------------
   8948                    9649 _comprobarTeclado::
   8948 DD E5         [15] 9650 	push	ix
   894A DD 21 00 00   [14] 9651 	ld	ix,#0
   894E DD 39         [15] 9652 	add	ix,sp
   8950 F5            [11] 9653 	push	af
   8951 F5            [11] 9654 	push	af
   8952 3B            [ 6] 9655 	dec	sp
                           9656 ;src/main.c:1793: cpct_scanKeyboard();
   8953 CD 65 43      [17] 9657 	call	_cpct_scanKeyboard
                           9658 ;src/main.c:1798: if(estado == 3){
   8956 3A AA 4F      [13] 9659 	ld	a,(#_estado + 0)
   8959 D6 03         [ 7] 9660 	sub	a, #0x03
   895B 20 4E         [12] 9661 	jr	NZ,00110$
                           9662 ;src/main.c:1806: timer = 0;  
   895D 11 00 00      [10] 9663 	ld	de,#0x0000
                           9664 ;src/main.c:1808: while(timer2<7){
   8960 0E 00         [ 7] 9665 	ld	c,#0x00
   8962                    9666 00106$:
                           9667 ;src/main.c:1809: while(timer<30000){
   8962 79            [ 4] 9668 	ld	a,c
   8963 FE 07         [ 7] 9669 	cp	a,#0x07
   8965 30 29         [12] 9670 	jr	NC,00108$
   8967 D6 03         [ 7] 9671 	sub	a, #0x03
   8969 20 04         [12] 9672 	jr	NZ,00407$
   896B 3E 01         [ 7] 9673 	ld	a,#0x01
   896D 18 01         [12] 9674 	jr	00408$
   896F                    9675 00407$:
   896F AF            [ 4] 9676 	xor	a,a
   8970                    9677 00408$:
   8970 47            [ 4] 9678 	ld	b,a
   8971                    9679 00103$:
   8971 7B            [ 4] 9680 	ld	a,e
   8972 D6 30         [ 7] 9681 	sub	a, #0x30
   8974 7A            [ 4] 9682 	ld	a,d
   8975 DE 75         [ 7] 9683 	sbc	a, #0x75
   8977 30 11         [12] 9684 	jr	NC,00105$
                           9685 ;src/main.c:1810: timer++;
   8979 13            [ 6] 9686 	inc	de
                           9687 ;src/main.c:1811: if(timer2 == 3){musica = 1;seleccionMusica = 1;}
   897A 78            [ 4] 9688 	ld	a,b
   897B B7            [ 4] 9689 	or	a, a
   897C 28 F3         [12] 9690 	jr	Z,00103$
   897E 21 AE 4F      [10] 9691 	ld	hl,#_musica + 0
   8981 36 01         [10] 9692 	ld	(hl), #0x01
   8983 21 AD 4F      [10] 9693 	ld	hl,#_seleccionMusica + 0
   8986 36 01         [10] 9694 	ld	(hl), #0x01
   8988 18 E7         [12] 9695 	jr	00103$
   898A                    9696 00105$:
                           9697 ;src/main.c:1813: timer2++;
   898A 0C            [ 4] 9698 	inc	c
                           9699 ;src/main.c:1814: timer = 0;
   898B 11 00 00      [10] 9700 	ld	de,#0x0000
   898E 18 D2         [12] 9701 	jr	00106$
   8990                    9702 00108$:
                           9703 ;src/main.c:1818: estado = 0;
   8990 21 AA 4F      [10] 9704 	ld	hl,#_estado + 0
   8993 36 00         [10] 9705 	ld	(hl), #0x00
                           9706 ;src/main.c:1819: cpct_clearScreen(0);
   8995 21 00 40      [10] 9707 	ld	hl,#0x4000
   8998 E5            [11] 9708 	push	hl
   8999 AF            [ 4] 9709 	xor	a, a
   899A F5            [11] 9710 	push	af
   899B 33            [ 6] 9711 	inc	sp
   899C 26 C0         [ 7] 9712 	ld	h, #0xC0
   899E E5            [11] 9713 	push	hl
   899F CD A5 42      [17] 9714 	call	_cpct_memset
                           9715 ;src/main.c:1820: dibujarPantallaPrincipal();
   89A2 CD D4 75      [17] 9716 	call	_dibujarPantallaPrincipal
                           9717 ;src/main.c:1821: mostrarMenu();
   89A5 CD A6 77      [17] 9718 	call	_mostrarMenu
                           9719 ;src/main.c:1822: refrescarMenu();
   89A8 CD 3B 78      [17] 9720 	call	_refrescarMenu
   89AB                    9721 00110$:
                           9722 ;src/main.c:1828: if(cpct_isAnyKeyPressed()){
   89AB CD C3 41      [17] 9723 	call	_cpct_isAnyKeyPressed
   89AE 7D            [ 4] 9724 	ld	a,l
   89AF B7            [ 4] 9725 	or	a, a
   89B0 CA 50 8D      [10] 9726 	jp	Z,00198$
                           9727 ;src/main.c:1831: if(estado == 5 || estado == 6){
   89B3 3A AA 4F      [13] 9728 	ld	a,(#_estado + 0)
   89B6 FE 05         [ 7] 9729 	cp	a,#0x05
   89B8 28 04         [12] 9730 	jr	Z,00111$
   89BA D6 06         [ 7] 9731 	sub	a, #0x06
   89BC 20 08         [12] 9732 	jr	NZ,00112$
   89BE                    9733 00111$:
                           9734 ;src/main.c:1833: estado = 1; //con presionar una tecla vuelve al juego,
   89BE 21 AA 4F      [10] 9735 	ld	hl,#_estado + 0
   89C1 36 01         [10] 9736 	ld	(hl), #0x01
                           9737 ;src/main.c:1834: inicializarPartida();
   89C3 CD AE A2      [17] 9738 	call	_inicializarPartida
   89C6                    9739 00112$:
                           9740 ;src/main.c:1857: if(estado == 0 && keyCounter > 9){
   89C6 3A AA 4F      [13] 9741 	ld	a,(#_estado + 0)
   89C9 B7            [ 4] 9742 	or	a, a
   89CA C2 A0 8A      [10] 9743 	jp	NZ,00134$
   89CD 3E 09         [ 7] 9744 	ld	a,#0x09
   89CF FD 21 AF 4F   [14] 9745 	ld	iy,#_keyCounter
   89D3 FD 96 00      [19] 9746 	sub	a, 0 (iy)
   89D6 D2 A0 8A      [10] 9747 	jp	NC,00134$
                           9748 ;src/main.c:1859: if(cpct_isKeyPressed(Key_CursorUp) && seleccion >0){
   89D9 21 00 01      [10] 9749 	ld	hl,#0x0100
   89DC CD A3 36      [17] 9750 	call	_cpct_isKeyPressed
   89DF 7D            [ 4] 9751 	ld	a,l
   89E0 B7            [ 4] 9752 	or	a, a
   89E1 28 10         [12] 9753 	jr	Z,00130$
   89E3 3A AB 4F      [13] 9754 	ld	a,(#_seleccion + 0)
   89E6 B7            [ 4] 9755 	or	a, a
   89E7 28 0A         [12] 9756 	jr	Z,00130$
                           9757 ;src/main.c:1860: seleccion--;
   89E9 21 AB 4F      [10] 9758 	ld	hl, #_seleccion+0
   89EC 35            [11] 9759 	dec	(hl)
                           9760 ;src/main.c:1861: refrescarMenu();
   89ED CD 3B 78      [17] 9761 	call	_refrescarMenu
   89F0 C3 9B 8A      [10] 9762 	jp	00131$
   89F3                    9763 00130$:
                           9764 ;src/main.c:1863: else if(cpct_isKeyPressed(Key_CursorDown) && seleccion <3){
   89F3 21 00 04      [10] 9765 	ld	hl,#0x0400
   89F6 CD A3 36      [17] 9766 	call	_cpct_isKeyPressed
   89F9 7D            [ 4] 9767 	ld	a,l
   89FA B7            [ 4] 9768 	or	a, a
   89FB 28 11         [12] 9769 	jr	Z,00126$
   89FD 3A AB 4F      [13] 9770 	ld	a,(#_seleccion + 0)
   8A00 D6 03         [ 7] 9771 	sub	a, #0x03
   8A02 30 0A         [12] 9772 	jr	NC,00126$
                           9773 ;src/main.c:1864: seleccion++;
   8A04 21 AB 4F      [10] 9774 	ld	hl, #_seleccion+0
   8A07 34            [11] 9775 	inc	(hl)
                           9776 ;src/main.c:1865: refrescarMenu();
   8A08 CD 3B 78      [17] 9777 	call	_refrescarMenu
   8A0B C3 9B 8A      [10] 9778 	jp	00131$
   8A0E                    9779 00126$:
                           9780 ;src/main.c:1867: else if(cpct_isKeyPressed(Key_Enter) || cpct_isKeyPressed(Key_Return))
   8A0E 21 00 40      [10] 9781 	ld	hl,#0x4000
   8A11 CD A3 36      [17] 9782 	call	_cpct_isKeyPressed
   8A14 7D            [ 4] 9783 	ld	a,l
   8A15 B7            [ 4] 9784 	or	a, a
   8A16 20 0A         [12] 9785 	jr	NZ,00122$
   8A18 21 02 04      [10] 9786 	ld	hl,#0x0402
   8A1B CD A3 36      [17] 9787 	call	_cpct_isKeyPressed
   8A1E 7D            [ 4] 9788 	ld	a,l
   8A1F B7            [ 4] 9789 	or	a, a
   8A20 28 79         [12] 9790 	jr	Z,00131$
   8A22                    9791 00122$:
                           9792 ;src/main.c:1868: switch(seleccion){
   8A22 3E 03         [ 7] 9793 	ld	a,#0x03
   8A24 FD 21 AB 4F   [14] 9794 	ld	iy,#_seleccion
   8A28 FD 96 00      [19] 9795 	sub	a, 0 (iy)
   8A2B 38 6E         [12] 9796 	jr	C,00131$
   8A2D FD 21 AB 4F   [14] 9797 	ld	iy,#_seleccion
   8A31 FD 5E 00      [19] 9798 	ld	e,0 (iy)
   8A34 16 00         [ 7] 9799 	ld	d,#0x00
   8A36 21 3C 8A      [10] 9800 	ld	hl,#00412$
   8A39 19            [11] 9801 	add	hl,de
   8A3A 19            [11] 9802 	add	hl,de
                           9803 ;src/main.c:1870: case 0: cpct_clearScreen(0); inicializarPartida(); break; // Inicia el estado del juego
   8A3B E9            [ 4] 9804 	jp	(hl)
   8A3C                    9805 00412$:
   8A3C 18 06         [12] 9806 	jr	00114$
   8A3E 18 16         [12] 9807 	jr	00115$
   8A40 18 43         [12] 9808 	jr	00119$
   8A42 18 4F         [12] 9809 	jr	00120$
   8A44                    9810 00114$:
   8A44 21 00 40      [10] 9811 	ld	hl,#0x4000
   8A47 E5            [11] 9812 	push	hl
   8A48 AF            [ 4] 9813 	xor	a, a
   8A49 F5            [11] 9814 	push	af
   8A4A 33            [ 6] 9815 	inc	sp
   8A4B 26 C0         [ 7] 9816 	ld	h, #0xC0
   8A4D E5            [11] 9817 	push	hl
   8A4E CD A5 42      [17] 9818 	call	_cpct_memset
   8A51 CD AE A2      [17] 9819 	call	_inicializarPartida
   8A54 18 45         [12] 9820 	jr	00131$
                           9821 ;src/main.c:1871: case 1: if(seleccionMusica){ musica = 0; seleccionMusica = 0; cpct_akp_stop(); cpct_akp_musicInit(pre_music_presentation); refrescarMenu();} else {seleccionMusica = 1; musica = 1; refrescarMenu();}break; //Activa y desactiva la musica
   8A56                    9822 00115$:
   8A56 3A AD 4F      [13] 9823 	ld	a,(#_seleccionMusica + 0)
   8A59 B7            [ 4] 9824 	or	a, a
   8A5A 28 1A         [12] 9825 	jr	Z,00117$
   8A5C 21 AE 4F      [10] 9826 	ld	hl,#_musica + 0
   8A5F 36 00         [10] 9827 	ld	(hl), #0x00
   8A61 21 AD 4F      [10] 9828 	ld	hl,#_seleccionMusica + 0
   8A64 36 00         [10] 9829 	ld	(hl), #0x00
   8A66 CD 20 3E      [17] 9830 	call	_cpct_akp_stop
   8A69 21 00 02      [10] 9831 	ld	hl,#_pre_music_presentation
   8A6C E5            [11] 9832 	push	hl
   8A6D CD C0 3D      [17] 9833 	call	_cpct_akp_musicInit
   8A70 F1            [10] 9834 	pop	af
   8A71 CD 3B 78      [17] 9835 	call	_refrescarMenu
   8A74 18 25         [12] 9836 	jr	00131$
   8A76                    9837 00117$:
   8A76 21 AD 4F      [10] 9838 	ld	hl,#_seleccionMusica + 0
   8A79 36 01         [10] 9839 	ld	(hl), #0x01
   8A7B 21 AE 4F      [10] 9840 	ld	hl,#_musica + 0
   8A7E 36 01         [10] 9841 	ld	(hl), #0x01
   8A80 CD 3B 78      [17] 9842 	call	_refrescarMenu
   8A83 18 16         [12] 9843 	jr	00131$
                           9844 ;src/main.c:1872: case 2: estado = 4; dibujarConfiguracionControles(0);break;
   8A85                    9845 00119$:
   8A85 21 AA 4F      [10] 9846 	ld	hl,#_estado + 0
   8A88 36 04         [10] 9847 	ld	(hl), #0x04
   8A8A AF            [ 4] 9848 	xor	a, a
   8A8B F5            [11] 9849 	push	af
   8A8C 33            [ 6] 9850 	inc	sp
   8A8D CD 36 73      [17] 9851 	call	_dibujarConfiguracionControles
   8A90 33            [ 6] 9852 	inc	sp
   8A91 18 08         [12] 9853 	jr	00131$
                           9854 ;src/main.c:1873: case 3: estado = 2; dibujarCreditos(); break;
   8A93                    9855 00120$:
   8A93 21 AA 4F      [10] 9856 	ld	hl,#_estado + 0
   8A96 36 02         [10] 9857 	ld	(hl), #0x02
   8A98 CD BC 70      [17] 9858 	call	_dibujarCreditos
                           9859 ;src/main.c:1874: }      
   8A9B                    9860 00131$:
                           9861 ;src/main.c:1877: keyCounter = 0;
   8A9B 21 AF 4F      [10] 9862 	ld	hl,#_keyCounter + 0
   8A9E 36 00         [10] 9863 	ld	(hl), #0x00
   8AA0                    9864 00134$:
                           9865 ;src/main.c:1881: if(estado == 2){
   8AA0 3A AA 4F      [13] 9866 	ld	a,(#_estado + 0)
   8AA3 D6 02         [ 7] 9867 	sub	a, #0x02
   8AA5 20 18         [12] 9868 	jr	NZ,00139$
                           9869 ;src/main.c:1882: if(cpct_isKeyPressed(Key_Esc)){
   8AA7 21 08 04      [10] 9870 	ld	hl,#0x0408
   8AAA CD A3 36      [17] 9871 	call	_cpct_isKeyPressed
   8AAD 7D            [ 4] 9872 	ld	a,l
   8AAE B7            [ 4] 9873 	or	a, a
   8AAF 28 0E         [12] 9874 	jr	Z,00139$
                           9875 ;src/main.c:1884: estado = 0;
   8AB1 21 AA 4F      [10] 9876 	ld	hl,#_estado + 0
   8AB4 36 00         [10] 9877 	ld	(hl), #0x00
                           9878 ;src/main.c:1885: dibujarPantallaPrincipal();
   8AB6 CD D4 75      [17] 9879 	call	_dibujarPantallaPrincipal
                           9880 ;src/main.c:1886: mostrarMenu();
   8AB9 CD A6 77      [17] 9881 	call	_mostrarMenu
                           9882 ;src/main.c:1887: refrescarMenu();
   8ABC CD 3B 78      [17] 9883 	call	_refrescarMenu
   8ABF                    9884 00139$:
                           9885 ;src/main.c:1893: if(estado == 4){
   8ABF 3A AA 4F      [13] 9886 	ld	a,(#_estado + 0)
   8AC2 D6 04         [ 7] 9887 	sub	a, #0x04
   8AC4 C2 50 8D      [10] 9888 	jp	NZ,00198$
                           9889 ;src/main.c:1895: if(cpct_isKeyPressed(Key_CursorDown) && seleccionControles == 0){
   8AC7 21 00 04      [10] 9890 	ld	hl,#0x0400
   8ACA CD A3 36      [17] 9891 	call	_cpct_isKeyPressed
   8ACD 7D            [ 4] 9892 	ld	a,l
   8ACE B7            [ 4] 9893 	or	a, a
   8ACF 28 15         [12] 9894 	jr	Z,00144$
   8AD1 3A AC 4F      [13] 9895 	ld	a,(#_seleccionControles + 0)
   8AD4 B7            [ 4] 9896 	or	a, a
   8AD5 20 0F         [12] 9897 	jr	NZ,00144$
                           9898 ;src/main.c:1896: seleccionControles = 1;
   8AD7 21 AC 4F      [10] 9899 	ld	hl,#_seleccionControles + 0
   8ADA 36 01         [10] 9900 	ld	(hl), #0x01
                           9901 ;src/main.c:1897: dibujarConfiguracionControles(1);
   8ADC 3E 01         [ 7] 9902 	ld	a,#0x01
   8ADE F5            [11] 9903 	push	af
   8ADF 33            [ 6] 9904 	inc	sp
   8AE0 CD 36 73      [17] 9905 	call	_dibujarConfiguracionControles
   8AE3 33            [ 6] 9906 	inc	sp
   8AE4 18 1D         [12] 9907 	jr	00145$
   8AE6                    9908 00144$:
                           9909 ;src/main.c:1899: else if(cpct_isKeyPressed(Key_CursorUp) && seleccionControles == 1){
   8AE6 21 00 01      [10] 9910 	ld	hl,#0x0100
   8AE9 CD A3 36      [17] 9911 	call	_cpct_isKeyPressed
   8AEC 7D            [ 4] 9912 	ld	a,l
   8AED B7            [ 4] 9913 	or	a, a
   8AEE 28 13         [12] 9914 	jr	Z,00145$
   8AF0 3A AC 4F      [13] 9915 	ld	a,(#_seleccionControles + 0)
   8AF3 3D            [ 4] 9916 	dec	a
   8AF4 20 0D         [12] 9917 	jr	NZ,00145$
                           9918 ;src/main.c:1900: seleccionControles = 0;
   8AF6 21 AC 4F      [10] 9919 	ld	hl,#_seleccionControles + 0
   8AF9 36 00         [10] 9920 	ld	(hl), #0x00
                           9921 ;src/main.c:1901: dibujarConfiguracionControles(1);
   8AFB 3E 01         [ 7] 9922 	ld	a,#0x01
   8AFD F5            [11] 9923 	push	af
   8AFE 33            [ 6] 9924 	inc	sp
   8AFF CD 36 73      [17] 9925 	call	_dibujarConfiguracionControles
   8B02 33            [ 6] 9926 	inc	sp
   8B03                    9927 00145$:
                           9928 ;src/main.c:1904: switch(seleccionControles){
   8B03 3A AC 4F      [13] 9929 	ld	a,(#_seleccionControles + 0)
   8B06 B7            [ 4] 9930 	or	a, a
   8B07 28 0A         [12] 9931 	jr	Z,00147$
   8B09 3A AC 4F      [13] 9932 	ld	a,(#_seleccionControles + 0)
   8B0C 3D            [ 4] 9933 	dec	a
   8B0D CA 26 8C      [10] 9934 	jp	Z,00169$
   8B10 C3 29 8D      [10] 9935 	jp	00191$
                           9936 ;src/main.c:1906: case 0:
   8B13                    9937 00147$:
                           9938 ;src/main.c:1907: if(cpct_isKeyPressed(Key_CursorRight) && prota.controles <2  && keyCounter > 9){
   8B13 21 00 02      [10] 9939 	ld	hl,#0x0200
   8B16 CD A3 36      [17] 9940 	call	_cpct_isKeyPressed
   8B19 7D            [ 4] 9941 	ld	a,l
   8B1A B7            [ 4] 9942 	or	a, a
   8B1B CA A4 8B      [10] 9943 	jp	Z,00165$
   8B1E 01 6E 4F      [10] 9944 	ld	bc,#_prota+26
   8B21 0A            [ 7] 9945 	ld	a,(bc)
   8B22 DD 77 FD      [19] 9946 	ld	-3 (ix), a
   8B25 D6 02         [ 7] 9947 	sub	a, #0x02
   8B27 30 7B         [12] 9948 	jr	NC,00165$
   8B29 3E 09         [ 7] 9949 	ld	a,#0x09
   8B2B FD 21 AF 4F   [14] 9950 	ld	iy,#_keyCounter
   8B2F FD 96 00      [19] 9951 	sub	a, 0 (iy)
   8B32 30 70         [12] 9952 	jr	NC,00165$
                           9953 ;src/main.c:1908: if(protaDos.controles == prota.controles+1 && (prota.controles + 2) <=2 ){
   8B34 21 8B 4F      [10] 9954 	ld	hl,#_protaDos+26
   8B37 6E            [ 7] 9955 	ld	l,(hl)
   8B38 DD 7E FD      [19] 9956 	ld	a,-3 (ix)
   8B3B DD 77 FE      [19] 9957 	ld	-2 (ix),a
   8B3E DD 36 FF 00   [19] 9958 	ld	-1 (ix),#0x00
   8B42 DD 5E FE      [19] 9959 	ld	e,-2 (ix)
   8B45 DD 56 FF      [19] 9960 	ld	d,-1 (ix)
   8B48 13            [ 6] 9961 	inc	de
   8B49 DD 75 FB      [19] 9962 	ld	-5 (ix),l
   8B4C DD 36 FC 00   [19] 9963 	ld	-4 (ix),#0x00
   8B50 7B            [ 4] 9964 	ld	a,e
   8B51 DD 96 FB      [19] 9965 	sub	a, -5 (ix)
   8B54 20 0A         [12] 9966 	jr	NZ,00421$
   8B56 7A            [ 4] 9967 	ld	a,d
   8B57 DD 96 FC      [19] 9968 	sub	a, -4 (ix)
   8B5A 20 04         [12] 9969 	jr	NZ,00421$
   8B5C 3E 01         [ 7] 9970 	ld	a,#0x01
   8B5E 18 01         [12] 9971 	jr	00422$
   8B60                    9972 00421$:
   8B60 AF            [ 4] 9973 	xor	a,a
   8B61                    9974 00422$:
   8B61 5F            [ 4] 9975 	ld	e,a
   8B62 B7            [ 4] 9976 	or	a, a
   8B63 28 26         [12] 9977 	jr	Z,00151$
   8B65 DD 6E FE      [19] 9978 	ld	l,-2 (ix)
   8B68 DD 66 FF      [19] 9979 	ld	h,-1 (ix)
   8B6B 23            [ 6] 9980 	inc	hl
   8B6C 23            [ 6] 9981 	inc	hl
   8B6D 3E 02         [ 7] 9982 	ld	a,#0x02
   8B6F BD            [ 4] 9983 	cp	a, l
   8B70 3E 00         [ 7] 9984 	ld	a,#0x00
   8B72 9C            [ 4] 9985 	sbc	a, h
   8B73 E2 78 8B      [10] 9986 	jp	PO, 00423$
   8B76 EE 80         [ 7] 9987 	xor	a, #0x80
   8B78                    9988 00423$:
   8B78 FA 8B 8B      [10] 9989 	jp	M,00151$
                           9990 ;src/main.c:1909: prota.controles = prota.controles+2; 
   8B7B DD 7E FD      [19] 9991 	ld	a,-3 (ix)
   8B7E C6 02         [ 7] 9992 	add	a, #0x02
   8B80 02            [ 7] 9993 	ld	(bc),a
                           9994 ;src/main.c:1910: dibujarConfiguracionControles(1);
   8B81 3E 01         [ 7] 9995 	ld	a,#0x01
   8B83 F5            [11] 9996 	push	af
   8B84 33            [ 6] 9997 	inc	sp
   8B85 CD 36 73      [17] 9998 	call	_dibujarConfiguracionControles
   8B88 33            [ 6] 9999 	inc	sp
   8B89 18 11         [12]10000 	jr	00152$
   8B8B                   10001 00151$:
                          10002 ;src/main.c:1912: else if(prota.controles+1!=protaDos.controles){
   8B8B 7B            [ 4]10003 	ld	a,e
   8B8C B7            [ 4]10004 	or	a, a
   8B8D 20 0D         [12]10005 	jr	NZ,00152$
                          10006 ;src/main.c:1913: prota.controles++; 
   8B8F DD 7E FD      [19]10007 	ld	a,-3 (ix)
   8B92 3C            [ 4]10008 	inc	a
   8B93 02            [ 7]10009 	ld	(bc),a
                          10010 ;src/main.c:1914: dibujarConfiguracionControles(1);
   8B94 3E 01         [ 7]10011 	ld	a,#0x01
   8B96 F5            [11]10012 	push	af
   8B97 33            [ 6]10013 	inc	sp
   8B98 CD 36 73      [17]10014 	call	_dibujarConfiguracionControles
   8B9B 33            [ 6]10015 	inc	sp
   8B9C                   10016 00152$:
                          10017 ;src/main.c:1916: keyCounter = 0;
   8B9C 21 AF 4F      [10]10018 	ld	hl,#_keyCounter + 0
   8B9F 36 00         [10]10019 	ld	(hl), #0x00
   8BA1 C3 29 8D      [10]10020 	jp	00191$
   8BA4                   10021 00165$:
                          10022 ;src/main.c:1920: else if(cpct_isKeyPressed(Key_CursorLeft) && prota.controles >0  && keyCounter > 9){
   8BA4 21 01 01      [10]10023 	ld	hl,#0x0101
   8BA7 CD A3 36      [17]10024 	call	_cpct_isKeyPressed
   8BAA 7D            [ 4]10025 	ld	a,l
   8BAB B7            [ 4]10026 	or	a, a
   8BAC CA 29 8D      [10]10027 	jp	Z,00191$
   8BAF 21 6E 4F      [10]10028 	ld	hl, #(_prota + 0x001a) + 0
   8BB2 56            [ 7]10029 	ld	d,(hl)
   8BB3 7A            [ 4]10030 	ld	a,d
   8BB4 B7            [ 4]10031 	or	a, a
   8BB5 CA 29 8D      [10]10032 	jp	Z,00191$
   8BB8 3E 09         [ 7]10033 	ld	a,#0x09
   8BBA FD 21 AF 4F   [14]10034 	ld	iy,#_keyCounter
   8BBE FD 96 00      [19]10035 	sub	a, 0 (iy)
   8BC1 D2 29 8D      [10]10036 	jp	NC,00191$
                          10037 ;src/main.c:1921: if(protaDos.controles == prota.controles-1 && (prota.controles - 2) >=0 ){
   8BC4 21 8B 4F      [10]10038 	ld	hl,#_protaDos+26
   8BC7 5E            [ 7]10039 	ld	e,(hl)
   8BC8 4A            [ 4]10040 	ld	c,d
   8BC9 06 00         [ 7]10041 	ld	b,#0x00
   8BCB 79            [ 4]10042 	ld	a,c
   8BCC C6 FF         [ 7]10043 	add	a,#0xFF
   8BCE DD 77 FB      [19]10044 	ld	-5 (ix),a
   8BD1 78            [ 4]10045 	ld	a,b
   8BD2 CE FF         [ 7]10046 	adc	a,#0xFF
   8BD4 DD 77 FC      [19]10047 	ld	-4 (ix),a
   8BD7 DD 73 FE      [19]10048 	ld	-2 (ix),e
   8BDA DD 36 FF 00   [19]10049 	ld	-1 (ix),#0x00
   8BDE DD 7E FE      [19]10050 	ld	a,-2 (ix)
   8BE1 DD 96 FB      [19]10051 	sub	a, -5 (ix)
   8BE4 20 0C         [12]10052 	jr	NZ,00424$
   8BE6 DD 7E FF      [19]10053 	ld	a,-1 (ix)
   8BE9 DD 96 FC      [19]10054 	sub	a, -4 (ix)
   8BEC 20 04         [12]10055 	jr	NZ,00424$
   8BEE 3E 01         [ 7]10056 	ld	a,#0x01
   8BF0 18 01         [12]10057 	jr	00425$
   8BF2                   10058 00424$:
   8BF2 AF            [ 4]10059 	xor	a,a
   8BF3                   10060 00425$:
   8BF3 5F            [ 4]10061 	ld	e,a
   8BF4 B7            [ 4]10062 	or	a, a
   8BF5 28 16         [12]10063 	jr	Z,00157$
   8BF7 0B            [ 6]10064 	dec	bc
   8BF8 0B            [ 6]10065 	dec	bc
   8BF9 CB 78         [ 8]10066 	bit	7, b
   8BFB 20 10         [12]10067 	jr	NZ,00157$
                          10068 ;src/main.c:1922: prota.controles = prota.controles - 2;
   8BFD 15            [ 4]10069 	dec	d
   8BFE 15            [ 4]10070 	dec	d
   8BFF 21 6E 4F      [10]10071 	ld	hl,#(_prota + 0x001a)
   8C02 72            [ 7]10072 	ld	(hl),d
                          10073 ;src/main.c:1923: dibujarConfiguracionControles(1);
   8C03 3E 01         [ 7]10074 	ld	a,#0x01
   8C05 F5            [11]10075 	push	af
   8C06 33            [ 6]10076 	inc	sp
   8C07 CD 36 73      [17]10077 	call	_dibujarConfiguracionControles
   8C0A 33            [ 6]10078 	inc	sp
   8C0B 18 11         [12]10079 	jr	00158$
   8C0D                   10080 00157$:
                          10081 ;src/main.c:1925: else if(prota.controles-1!=protaDos.controles){
   8C0D 7B            [ 4]10082 	ld	a,e
   8C0E B7            [ 4]10083 	or	a, a
   8C0F 20 0D         [12]10084 	jr	NZ,00158$
                          10085 ;src/main.c:1926: prota.controles--; 
   8C11 15            [ 4]10086 	dec	d
   8C12 21 6E 4F      [10]10087 	ld	hl,#(_prota + 0x001a)
   8C15 72            [ 7]10088 	ld	(hl),d
                          10089 ;src/main.c:1927: dibujarConfiguracionControles(1);
   8C16 3E 01         [ 7]10090 	ld	a,#0x01
   8C18 F5            [11]10091 	push	af
   8C19 33            [ 6]10092 	inc	sp
   8C1A CD 36 73      [17]10093 	call	_dibujarConfiguracionControles
   8C1D 33            [ 6]10094 	inc	sp
   8C1E                   10095 00158$:
                          10096 ;src/main.c:1929: keyCounter = 0;
   8C1E 21 AF 4F      [10]10097 	ld	hl,#_keyCounter + 0
   8C21 36 00         [10]10098 	ld	(hl), #0x00
                          10099 ;src/main.c:1931: break;
   8C23 C3 29 8D      [10]10100 	jp	00191$
                          10101 ;src/main.c:1932: case 1:
   8C26                   10102 00169$:
                          10103 ;src/main.c:1933: if(cpct_isKeyPressed(Key_CursorRight) && protaDos.controles <2  && keyCounter > 9){
   8C26 21 00 02      [10]10104 	ld	hl,#0x0200
   8C29 CD A3 36      [17]10105 	call	_cpct_isKeyPressed
   8C2C 7D            [ 4]10106 	ld	a,l
   8C2D B7            [ 4]10107 	or	a, a
   8C2E CA AB 8C      [10]10108 	jp	Z,00187$
   8C31 21 8B 4F      [10]10109 	ld	hl, #(_protaDos + 0x001a) + 0
   8C34 56            [ 7]10110 	ld	d,(hl)
   8C35 7A            [ 4]10111 	ld	a,d
   8C36 D6 02         [ 7]10112 	sub	a, #0x02
   8C38 30 71         [12]10113 	jr	NC,00187$
   8C3A 3E 09         [ 7]10114 	ld	a,#0x09
   8C3C FD 21 AF 4F   [14]10115 	ld	iy,#_keyCounter
   8C40 FD 96 00      [19]10116 	sub	a, 0 (iy)
   8C43 30 66         [12]10117 	jr	NC,00187$
                          10118 ;src/main.c:1934: if(prota.controles == protaDos.controles+1 && (protaDos.controles + 2) <=2 ){
   8C45 21 6E 4F      [10]10119 	ld	hl,#_prota+26
   8C48 5E            [ 7]10120 	ld	e,(hl)
   8C49 4A            [ 4]10121 	ld	c,d
   8C4A 06 00         [ 7]10122 	ld	b,#0x00
   8C4C 21 01 00      [10]10123 	ld	hl,#0x0001
   8C4F 09            [11]10124 	add	hl,bc
   8C50 E3            [19]10125 	ex	(sp), hl
   8C51 DD 73 FE      [19]10126 	ld	-2 (ix),e
   8C54 DD 36 FF 00   [19]10127 	ld	-1 (ix),#0x00
   8C58 DD 7E FE      [19]10128 	ld	a,-2 (ix)
   8C5B DD 96 FB      [19]10129 	sub	a, -5 (ix)
   8C5E 20 0C         [12]10130 	jr	NZ,00426$
   8C60 DD 7E FF      [19]10131 	ld	a,-1 (ix)
   8C63 DD 96 FC      [19]10132 	sub	a, -4 (ix)
   8C66 20 04         [12]10133 	jr	NZ,00426$
   8C68 3E 01         [ 7]10134 	ld	a,#0x01
   8C6A 18 01         [12]10135 	jr	00427$
   8C6C                   10136 00426$:
   8C6C AF            [ 4]10137 	xor	a,a
   8C6D                   10138 00427$:
   8C6D 5F            [ 4]10139 	ld	e,a
   8C6E B7            [ 4]10140 	or	a, a
   8C6F 28 21         [12]10141 	jr	Z,00173$
   8C71 03            [ 6]10142 	inc	bc
   8C72 03            [ 6]10143 	inc	bc
   8C73 68            [ 4]10144 	ld	l,b
   8C74 3E 02         [ 7]10145 	ld	a,#0x02
   8C76 B9            [ 4]10146 	cp	a, c
   8C77 3E 00         [ 7]10147 	ld	a,#0x00
   8C79 9D            [ 4]10148 	sbc	a, l
   8C7A E2 7F 8C      [10]10149 	jp	PO, 00428$
   8C7D EE 80         [ 7]10150 	xor	a, #0x80
   8C7F                   10151 00428$:
   8C7F FA 92 8C      [10]10152 	jp	M,00173$
                          10153 ;src/main.c:1935: protaDos.controles = protaDos.controles + 2;
   8C82 14            [ 4]10154 	inc	d
   8C83 14            [ 4]10155 	inc	d
   8C84 21 8B 4F      [10]10156 	ld	hl,#(_protaDos + 0x001a)
   8C87 72            [ 7]10157 	ld	(hl),d
                          10158 ;src/main.c:1936: dibujarConfiguracionControles(1);
   8C88 3E 01         [ 7]10159 	ld	a,#0x01
   8C8A F5            [11]10160 	push	af
   8C8B 33            [ 6]10161 	inc	sp
   8C8C CD 36 73      [17]10162 	call	_dibujarConfiguracionControles
   8C8F 33            [ 6]10163 	inc	sp
   8C90 18 11         [12]10164 	jr	00174$
   8C92                   10165 00173$:
                          10166 ;src/main.c:1938: else if(protaDos.controles+1!=prota.controles){
   8C92 7B            [ 4]10167 	ld	a,e
   8C93 B7            [ 4]10168 	or	a, a
   8C94 20 0D         [12]10169 	jr	NZ,00174$
                          10170 ;src/main.c:1939: protaDos.controles++; 
   8C96 14            [ 4]10171 	inc	d
   8C97 21 8B 4F      [10]10172 	ld	hl,#(_protaDos + 0x001a)
   8C9A 72            [ 7]10173 	ld	(hl),d
                          10174 ;src/main.c:1940: dibujarConfiguracionControles(1);
   8C9B 3E 01         [ 7]10175 	ld	a,#0x01
   8C9D F5            [11]10176 	push	af
   8C9E 33            [ 6]10177 	inc	sp
   8C9F CD 36 73      [17]10178 	call	_dibujarConfiguracionControles
   8CA2 33            [ 6]10179 	inc	sp
   8CA3                   10180 00174$:
                          10181 ;src/main.c:1942: keyCounter = 0;
   8CA3 21 AF 4F      [10]10182 	ld	hl,#_keyCounter + 0
   8CA6 36 00         [10]10183 	ld	(hl), #0x00
   8CA8 C3 29 8D      [10]10184 	jp	00191$
   8CAB                   10185 00187$:
                          10186 ;src/main.c:1945: else if(cpct_isKeyPressed(Key_CursorLeft) && protaDos.controles >0  && keyCounter > 9){
   8CAB 21 01 01      [10]10187 	ld	hl,#0x0101
   8CAE CD A3 36      [17]10188 	call	_cpct_isKeyPressed
   8CB1 7D            [ 4]10189 	ld	a,l
   8CB2 B7            [ 4]10190 	or	a, a
   8CB3 28 74         [12]10191 	jr	Z,00191$
   8CB5 3A 8B 4F      [13]10192 	ld	a,(#(_protaDos + 0x001a) + 0)
   8CB8 DD 77 FB      [19]10193 	ld	-5 (ix), a
   8CBB B7            [ 4]10194 	or	a, a
   8CBC 28 6B         [12]10195 	jr	Z,00191$
   8CBE 3E 09         [ 7]10196 	ld	a,#0x09
   8CC0 FD 21 AF 4F   [14]10197 	ld	iy,#_keyCounter
   8CC4 FD 96 00      [19]10198 	sub	a, 0 (iy)
   8CC7 30 60         [12]10199 	jr	NC,00191$
                          10200 ;src/main.c:1946: if(prota.controles == protaDos.controles-1 && (protaDos.controles - 2) >=0 ){
   8CC9 21 6E 4F      [10]10201 	ld	hl,#_prota+26
   8CCC 5E            [ 7]10202 	ld	e,(hl)
   8CCD DD 7E FB      [19]10203 	ld	a,-5 (ix)
   8CD0 DD 77 FE      [19]10204 	ld	-2 (ix),a
   8CD3 DD 36 FF 00   [19]10205 	ld	-1 (ix),#0x00
   8CD7 DD 4E FE      [19]10206 	ld	c,-2 (ix)
   8CDA DD 46 FF      [19]10207 	ld	b,-1 (ix)
   8CDD 0B            [ 6]10208 	dec	bc
   8CDE 16 00         [ 7]10209 	ld	d,#0x00
   8CE0 79            [ 4]10210 	ld	a,c
   8CE1 93            [ 4]10211 	sub	a, e
   8CE2 20 08         [12]10212 	jr	NZ,00429$
   8CE4 78            [ 4]10213 	ld	a,b
   8CE5 92            [ 4]10214 	sub	a, d
   8CE6 20 04         [12]10215 	jr	NZ,00429$
   8CE8 3E 01         [ 7]10216 	ld	a,#0x01
   8CEA 18 01         [12]10217 	jr	00430$
   8CEC                   10218 00429$:
   8CEC AF            [ 4]10219 	xor	a,a
   8CED                   10220 00430$:
   8CED 4F            [ 4]10221 	ld	c,a
   8CEE B7            [ 4]10222 	or	a, a
   8CEF 28 1F         [12]10223 	jr	Z,00179$
   8CF1 DD 5E FE      [19]10224 	ld	e,-2 (ix)
   8CF4 DD 56 FF      [19]10225 	ld	d,-1 (ix)
   8CF7 1B            [ 6]10226 	dec	de
   8CF8 1B            [ 6]10227 	dec	de
   8CF9 CB 7A         [ 8]10228 	bit	7, d
   8CFB 20 13         [12]10229 	jr	NZ,00179$
                          10230 ;src/main.c:1947: protaDos.controles = protaDos.controles-2; 
   8CFD DD 4E FB      [19]10231 	ld	c,-5 (ix)
   8D00 0D            [ 4]10232 	dec	c
   8D01 0D            [ 4]10233 	dec	c
   8D02 21 8B 4F      [10]10234 	ld	hl,#(_protaDos + 0x001a)
   8D05 71            [ 7]10235 	ld	(hl),c
                          10236 ;src/main.c:1948: dibujarConfiguracionControles(1);            
   8D06 3E 01         [ 7]10237 	ld	a,#0x01
   8D08 F5            [11]10238 	push	af
   8D09 33            [ 6]10239 	inc	sp
   8D0A CD 36 73      [17]10240 	call	_dibujarConfiguracionControles
   8D0D 33            [ 6]10241 	inc	sp
   8D0E 18 14         [12]10242 	jr	00180$
   8D10                   10243 00179$:
                          10244 ;src/main.c:1950: else if(protaDos.controles-1!=prota.controles){
   8D10 79            [ 4]10245 	ld	a,c
   8D11 B7            [ 4]10246 	or	a, a
   8D12 20 10         [12]10247 	jr	NZ,00180$
                          10248 ;src/main.c:1951: protaDos.controles--; 
   8D14 DD 4E FB      [19]10249 	ld	c,-5 (ix)
   8D17 0D            [ 4]10250 	dec	c
   8D18 21 8B 4F      [10]10251 	ld	hl,#(_protaDos + 0x001a)
   8D1B 71            [ 7]10252 	ld	(hl),c
                          10253 ;src/main.c:1952: dibujarConfiguracionControles(1);                 
   8D1C 3E 01         [ 7]10254 	ld	a,#0x01
   8D1E F5            [11]10255 	push	af
   8D1F 33            [ 6]10256 	inc	sp
   8D20 CD 36 73      [17]10257 	call	_dibujarConfiguracionControles
   8D23 33            [ 6]10258 	inc	sp
   8D24                   10259 00180$:
                          10260 ;src/main.c:1954: keyCounter = 0;
   8D24 21 AF 4F      [10]10261 	ld	hl,#_keyCounter + 0
   8D27 36 00         [10]10262 	ld	(hl), #0x00
                          10263 ;src/main.c:1957: }
   8D29                   10264 00191$:
                          10265 ;src/main.c:1960: if(cpct_isKeyPressed(Key_Esc)){
   8D29 21 08 04      [10]10266 	ld	hl,#0x0408
   8D2C CD A3 36      [17]10267 	call	_cpct_isKeyPressed
   8D2F 7D            [ 4]10268 	ld	a,l
   8D30 B7            [ 4]10269 	or	a, a
   8D31 28 1D         [12]10270 	jr	Z,00198$
                          10271 ;src/main.c:1962: estado = 0;
   8D33 21 AA 4F      [10]10272 	ld	hl,#_estado + 0
   8D36 36 00         [10]10273 	ld	(hl), #0x00
                          10274 ;src/main.c:1963: llenarVmem(10,68,92,176,24);
   8D38 21 B0 18      [10]10275 	ld	hl,#0x18B0
   8D3B E5            [11]10276 	push	hl
   8D3C 21 44 5C      [10]10277 	ld	hl,#0x5C44
   8D3F E5            [11]10278 	push	hl
   8D40 3E 0A         [ 7]10279 	ld	a,#0x0A
   8D42 F5            [11]10280 	push	af
   8D43 33            [ 6]10281 	inc	sp
   8D44 CD 53 64      [17]10282 	call	_llenarVmem
   8D47 F1            [10]10283 	pop	af
   8D48 F1            [10]10284 	pop	af
   8D49 33            [ 6]10285 	inc	sp
                          10286 ;src/main.c:1964: mostrarMenu();
   8D4A CD A6 77      [17]10287 	call	_mostrarMenu
                          10288 ;src/main.c:1965: refrescarMenu();
   8D4D CD 3B 78      [17]10289 	call	_refrescarMenu
   8D50                   10290 00198$:
   8D50 DD F9         [10]10291 	ld	sp, ix
   8D52 DD E1         [14]10292 	pop	ix
   8D54 C9            [10]10293 	ret
                          10294 ;src/main.c:1984: u8 compruebaTeclas(const cpct_keyID* k, u8 numk, TProta * pro) {
                          10295 ;	---------------------------------
                          10296 ; Function compruebaTeclas
                          10297 ; ---------------------------------
   8D55                   10298 _compruebaTeclas::
   8D55 DD E5         [15]10299 	push	ix
   8D57 DD 21 00 00   [14]10300 	ld	ix,#0
   8D5B DD 39         [15]10301 	add	ix,sp
   8D5D 21 F0 FF      [10]10302 	ld	hl,#-16
   8D60 39            [11]10303 	add	hl,sp
   8D61 F9            [ 6]10304 	ld	sp,hl
                          10305 ;src/main.c:1985: u8 i, j=0, uno=0, dos=0, tres=0, cuatro=0, cinco=0;
   8D62 DD 36 F5 00   [19]10306 	ld	-11 (ix),#0x00
   8D66 DD 36 F2 00   [19]10307 	ld	-14 (ix),#0x00
   8D6A DD 36 F4 00   [19]10308 	ld	-12 (ix),#0x00
   8D6E DD 36 F0 00   [19]10309 	ld	-16 (ix),#0x00
   8D72 DD 36 F1 00   [19]10310 	ld	-15 (ix),#0x00
                          10311 ;src/main.c:1987: if (cpct_isAnyKeyPressed()) {
   8D76 CD C3 41      [17]10312 	call	_cpct_isAnyKeyPressed
   8D79 DD 75 FD      [19]10313 	ld	-3 (ix), l
   8D7C 7D            [ 4]10314 	ld	a, l
   8D7D B7            [ 4]10315 	or	a, a
   8D7E CA 5F 97      [10]10316 	jp	Z,00273$
                          10317 ;src/main.c:1988: for(i=1; i <= numk; i++, k++) {
   8D81 DD 36 F3 00   [19]10318 	ld	-13 (ix),#0x00
   8D85 DD 36 FD 01   [19]10319 	ld	-3 (ix),#0x01
   8D89 DD 7E 04      [19]10320 	ld	a,4 (ix)
   8D8C DD 77 FB      [19]10321 	ld	-5 (ix),a
   8D8F DD 7E 05      [19]10322 	ld	a,5 (ix)
   8D92 DD 77 FC      [19]10323 	ld	-4 (ix),a
   8D95                   10324 00275$:
   8D95 DD 7E 06      [19]10325 	ld	a,6 (ix)
   8D98 DD 96 FD      [19]10326 	sub	a, -3 (ix)
   8D9B 38 6D         [12]10327 	jr	C,00117$
                          10328 ;src/main.c:1990: if (cpct_isKeyPressed(*k)){
   8D9D DD 6E FB      [19]10329 	ld	l,-5 (ix)
   8DA0 DD 66 FC      [19]10330 	ld	h,-4 (ix)
   8DA3 4E            [ 7]10331 	ld	c,(hl)
   8DA4 23            [ 6]10332 	inc	hl
   8DA5 66            [ 7]10333 	ld	h,(hl)
   8DA6 69            [ 4]10334 	ld	l, c
   8DA7 CD A3 36      [17]10335 	call	_cpct_isKeyPressed
   8DAA 7D            [ 4]10336 	ld	a,l
   8DAB B7            [ 4]10337 	or	a, a
   8DAC 28 47         [12]10338 	jr	Z,00276$
                          10339 ;src/main.c:1992: if(uno==0){uno=i;}
   8DAE DD 7E F5      [19]10340 	ld	a,-11 (ix)
   8DB1 B7            [ 4]10341 	or	a, a
   8DB2 20 08         [12]10342 	jr	NZ,00113$
   8DB4 DD 7E FD      [19]10343 	ld	a,-3 (ix)
   8DB7 DD 77 F5      [19]10344 	ld	-11 (ix),a
   8DBA 18 36         [12]10345 	jr	00114$
   8DBC                   10346 00113$:
                          10347 ;src/main.c:1993: else if(dos==0){dos=i;}
   8DBC DD 7E F2      [19]10348 	ld	a,-14 (ix)
   8DBF B7            [ 4]10349 	or	a, a
   8DC0 20 08         [12]10350 	jr	NZ,00110$
   8DC2 DD 7E FD      [19]10351 	ld	a,-3 (ix)
   8DC5 DD 77 F2      [19]10352 	ld	-14 (ix),a
   8DC8 18 28         [12]10353 	jr	00114$
   8DCA                   10354 00110$:
                          10355 ;src/main.c:1994: else if(tres==0){tres=i;}
   8DCA DD 7E F4      [19]10356 	ld	a,-12 (ix)
   8DCD B7            [ 4]10357 	or	a, a
   8DCE 20 08         [12]10358 	jr	NZ,00107$
   8DD0 DD 7E FD      [19]10359 	ld	a,-3 (ix)
   8DD3 DD 77 F4      [19]10360 	ld	-12 (ix),a
   8DD6 18 1A         [12]10361 	jr	00114$
   8DD8                   10362 00107$:
                          10363 ;src/main.c:1995: else if(cuatro==0){cuatro=i;}
   8DD8 DD 7E F0      [19]10364 	ld	a,-16 (ix)
   8DDB B7            [ 4]10365 	or	a, a
   8DDC 20 08         [12]10366 	jr	NZ,00104$
   8DDE DD 7E FD      [19]10367 	ld	a,-3 (ix)
   8DE1 DD 77 F0      [19]10368 	ld	-16 (ix),a
   8DE4 18 0C         [12]10369 	jr	00114$
   8DE6                   10370 00104$:
                          10371 ;src/main.c:1996: else if(cinco==0){cinco=i;}
   8DE6 DD 7E F1      [19]10372 	ld	a,-15 (ix)
   8DE9 B7            [ 4]10373 	or	a, a
   8DEA 20 06         [12]10374 	jr	NZ,00114$
   8DEC DD 7E FD      [19]10375 	ld	a,-3 (ix)
   8DEF DD 77 F1      [19]10376 	ld	-15 (ix),a
   8DF2                   10377 00114$:
                          10378 ;src/main.c:1998: j++;
   8DF2 DD 34 F3      [23]10379 	inc	-13 (ix)
   8DF5                   10380 00276$:
                          10381 ;src/main.c:1988: for(i=1; i <= numk; i++, k++) {
   8DF5 DD 34 FD      [23]10382 	inc	-3 (ix)
   8DF8 DD 7E FB      [19]10383 	ld	a,-5 (ix)
   8DFB C6 02         [ 7]10384 	add	a, #0x02
   8DFD DD 77 FB      [19]10385 	ld	-5 (ix),a
   8E00 DD 7E FC      [19]10386 	ld	a,-4 (ix)
   8E03 CE 00         [ 7]10387 	adc	a, #0x00
   8E05 DD 77 FC      [19]10388 	ld	-4 (ix),a
   8E08 18 8B         [12]10389 	jr	00275$
   8E0A                   10390 00117$:
                          10391 ;src/main.c:2001: if(j==0){
   8E0A DD 7E F3      [19]10392 	ld	a,-13 (ix)
                          10393 ;src/main.c:2002: return 0;
   8E0D B7            [ 4]10394 	or	a,a
   8E0E 20 04         [12]10395 	jr	NZ,00270$
   8E10 6F            [ 4]10396 	ld	l,a
   8E11 C3 61 97      [10]10397 	jp	00277$
   8E14                   10398 00270$:
                          10399 ;src/main.c:2004: else if(j==1){
   8E14 DD 7E F3      [19]10400 	ld	a,-13 (ix)
   8E17 3D            [ 4]10401 	dec	a
   8E18 C2 D7 8E      [10]10402 	jp	NZ,00267$
                          10403 ;src/main.c:2005: switch(uno){
   8E1B DD 7E F5      [19]10404 	ld	a,-11 (ix)
   8E1E D6 01         [ 7]10405 	sub	a, #0x01
   8E20 DA D2 8E      [10]10406 	jp	C,00135$
   8E23 3E 05         [ 7]10407 	ld	a,#0x05
   8E25 DD 96 F5      [19]10408 	sub	a, -11 (ix)
   8E28 DA D2 8E      [10]10409 	jp	C,00135$
   8E2B DD 5E F5      [19]10410 	ld	e,-11 (ix)
   8E2E 1D            [ 4]10411 	dec	e
   8E2F 16 00         [ 7]10412 	ld	d,#0x00
   8E31 21 37 8E      [10]10413 	ld	hl,#00606$
   8E34 19            [11]10414 	add	hl,de
   8E35 19            [11]10415 	add	hl,de
                          10416 ;src/main.c:2006: case 1: 
   8E36 E9            [ 4]10417 	jp	(hl)
   8E37                   10418 00606$:
   8E37 18 08         [12]10419 	jr	00118$
   8E39 18 0C         [12]10420 	jr	00119$
   8E3B 18 2D         [12]10421 	jr	00123$
   8E3D 18 4D         [12]10422 	jr	00127$
   8E3F 18 6E         [12]10423 	jr	00131$
   8E41                   10424 00118$:
                          10425 ;src/main.c:2007: return uno;
   8E41 DD 6E F5      [19]10426 	ld	l,-11 (ix)
   8E44 C3 61 97      [10]10427 	jp	00277$
                          10428 ;src/main.c:2009: case 2:
   8E47                   10429 00119$:
                          10430 ;src/main.c:2010: if(validarColision(2,pro,1)==1)
   8E47 3E 01         [ 7]10431 	ld	a,#0x01
   8E49 F5            [11]10432 	push	af
   8E4A 33            [ 6]10433 	inc	sp
   8E4B DD 6E 07      [19]10434 	ld	l,7 (ix)
   8E4E DD 66 08      [19]10435 	ld	h,8 (ix)
   8E51 E5            [11]10436 	push	hl
   8E52 3E 02         [ 7]10437 	ld	a,#0x02
   8E54 F5            [11]10438 	push	af
   8E55 33            [ 6]10439 	inc	sp
   8E56 CD CF 5F      [17]10440 	call	_validarColision
   8E59 F1            [10]10441 	pop	af
   8E5A F1            [10]10442 	pop	af
   8E5B 2D            [ 4]10443 	dec	l
   8E5C 20 06         [12]10444 	jr	NZ,00121$
                          10445 ;src/main.c:2011: return uno;
   8E5E DD 6E F5      [19]10446 	ld	l,-11 (ix)
   8E61 C3 61 97      [10]10447 	jp	00277$
   8E64                   10448 00121$:
                          10449 ;src/main.c:2012: else return uno;
   8E64 DD 6E F5      [19]10450 	ld	l,-11 (ix)
   8E67 C3 61 97      [10]10451 	jp	00277$
                          10452 ;src/main.c:2014: case 3:
   8E6A                   10453 00123$:
                          10454 ;src/main.c:2015: if(validarColision(0,pro,1)==1)
   8E6A 3E 01         [ 7]10455 	ld	a,#0x01
   8E6C F5            [11]10456 	push	af
   8E6D 33            [ 6]10457 	inc	sp
   8E6E DD 6E 07      [19]10458 	ld	l,7 (ix)
   8E71 DD 66 08      [19]10459 	ld	h,8 (ix)
   8E74 E5            [11]10460 	push	hl
   8E75 AF            [ 4]10461 	xor	a, a
   8E76 F5            [11]10462 	push	af
   8E77 33            [ 6]10463 	inc	sp
   8E78 CD CF 5F      [17]10464 	call	_validarColision
   8E7B F1            [10]10465 	pop	af
   8E7C F1            [10]10466 	pop	af
   8E7D 2D            [ 4]10467 	dec	l
   8E7E 20 06         [12]10468 	jr	NZ,00125$
                          10469 ;src/main.c:2016: return uno;
   8E80 DD 6E F5      [19]10470 	ld	l,-11 (ix)
   8E83 C3 61 97      [10]10471 	jp	00277$
   8E86                   10472 00125$:
                          10473 ;src/main.c:2017: else return uno;
   8E86 DD 6E F5      [19]10474 	ld	l,-11 (ix)
   8E89 C3 61 97      [10]10475 	jp	00277$
                          10476 ;src/main.c:2019: case 4:
   8E8C                   10477 00127$:
                          10478 ;src/main.c:2020: if(validarColision(3,pro,1)==1)
   8E8C 3E 01         [ 7]10479 	ld	a,#0x01
   8E8E F5            [11]10480 	push	af
   8E8F 33            [ 6]10481 	inc	sp
   8E90 DD 6E 07      [19]10482 	ld	l,7 (ix)
   8E93 DD 66 08      [19]10483 	ld	h,8 (ix)
   8E96 E5            [11]10484 	push	hl
   8E97 3E 03         [ 7]10485 	ld	a,#0x03
   8E99 F5            [11]10486 	push	af
   8E9A 33            [ 6]10487 	inc	sp
   8E9B CD CF 5F      [17]10488 	call	_validarColision
   8E9E F1            [10]10489 	pop	af
   8E9F F1            [10]10490 	pop	af
   8EA0 2D            [ 4]10491 	dec	l
   8EA1 20 06         [12]10492 	jr	NZ,00129$
                          10493 ;src/main.c:2021: return uno;
   8EA3 DD 6E F5      [19]10494 	ld	l,-11 (ix)
   8EA6 C3 61 97      [10]10495 	jp	00277$
   8EA9                   10496 00129$:
                          10497 ;src/main.c:2022: else return uno;
   8EA9 DD 6E F5      [19]10498 	ld	l,-11 (ix)
   8EAC C3 61 97      [10]10499 	jp	00277$
                          10500 ;src/main.c:2024: case 5:
   8EAF                   10501 00131$:
                          10502 ;src/main.c:2025: if(validarColision(1,pro,1)==1)
   8EAF 3E 01         [ 7]10503 	ld	a,#0x01
   8EB1 F5            [11]10504 	push	af
   8EB2 33            [ 6]10505 	inc	sp
   8EB3 DD 6E 07      [19]10506 	ld	l,7 (ix)
   8EB6 DD 66 08      [19]10507 	ld	h,8 (ix)
   8EB9 E5            [11]10508 	push	hl
   8EBA 3E 01         [ 7]10509 	ld	a,#0x01
   8EBC F5            [11]10510 	push	af
   8EBD 33            [ 6]10511 	inc	sp
   8EBE CD CF 5F      [17]10512 	call	_validarColision
   8EC1 F1            [10]10513 	pop	af
   8EC2 F1            [10]10514 	pop	af
   8EC3 2D            [ 4]10515 	dec	l
   8EC4 20 06         [12]10516 	jr	NZ,00133$
                          10517 ;src/main.c:2026: return uno;
   8EC6 DD 6E F5      [19]10518 	ld	l,-11 (ix)
   8EC9 C3 61 97      [10]10519 	jp	00277$
   8ECC                   10520 00133$:
                          10521 ;src/main.c:2027: else return uno;
   8ECC DD 6E F5      [19]10522 	ld	l,-11 (ix)
   8ECF C3 61 97      [10]10523 	jp	00277$
                          10524 ;src/main.c:2029: }
   8ED2                   10525 00135$:
                          10526 ;src/main.c:2030: return 0;
   8ED2 2E 00         [ 7]10527 	ld	l,#0x00
   8ED4 C3 61 97      [10]10528 	jp	00277$
   8ED7                   10529 00267$:
                          10530 ;src/main.c:2032: else if(j>1 && uno==1 && pro->disparando==NO){
   8ED7 3E 01         [ 7]10531 	ld	a,#0x01
   8ED9 DD 96 F3      [19]10532 	sub	a, -13 (ix)
   8EDC 3E 00         [ 7]10533 	ld	a,#0x00
   8EDE 17            [ 4]10534 	rla
   8EDF DD 77 FB      [19]10535 	ld	-5 (ix),a
   8EE2 DD 7E 07      [19]10536 	ld	a,7 (ix)
   8EE5 DD 77 F9      [19]10537 	ld	-7 (ix),a
   8EE8 DD 7E 08      [19]10538 	ld	a,8 (ix)
   8EEB DD 77 FA      [19]10539 	ld	-6 (ix),a
   8EEE DD 7E FB      [19]10540 	ld	a,-5 (ix)
   8EF1 B7            [ 4]10541 	or	a, a
   8EF2 28 28         [12]10542 	jr	Z,00262$
   8EF4 DD 7E F5      [19]10543 	ld	a,-11 (ix)
   8EF7 3D            [ 4]10544 	dec	a
   8EF8 20 22         [12]10545 	jr	NZ,00262$
   8EFA DD 7E F9      [19]10546 	ld	a,-7 (ix)
   8EFD DD 77 FE      [19]10547 	ld	-2 (ix),a
   8F00 DD 7E FA      [19]10548 	ld	a,-6 (ix)
   8F03 DD 77 FF      [19]10549 	ld	-1 (ix),a
   8F06 DD 6E FE      [19]10550 	ld	l,-2 (ix)
   8F09 DD 66 FF      [19]10551 	ld	h,-1 (ix)
   8F0C 11 15 00      [10]10552 	ld	de, #0x0015
   8F0F 19            [11]10553 	add	hl, de
   8F10 7E            [ 7]10554 	ld	a,(hl)
   8F11 DD 77 FE      [19]10555 	ld	-2 (ix), a
   8F14 B7            [ 4]10556 	or	a, a
   8F15 20 05         [12]10557 	jr	NZ,00262$
                          10558 ;src/main.c:2033: return 1;
   8F17 2E 01         [ 7]10559 	ld	l,#0x01
   8F19 C3 61 97      [10]10560 	jp	00277$
   8F1C                   10561 00262$:
                          10562 ;src/main.c:2035: else if(j>1){
   8F1C DD 7E FB      [19]10563 	ld	a,-5 (ix)
   8F1F B7            [ 4]10564 	or	a, a
   8F20 CA 5F 97      [10]10565 	jp	Z,00273$
                          10566 ;src/main.c:2038: if(dos==4){
   8F23 DD 7E F2      [19]10567 	ld	a,-14 (ix)
   8F26 D6 04         [ 7]10568 	sub	a, #0x04
   8F28 20 04         [12]10569 	jr	NZ,00617$
   8F2A 3E 01         [ 7]10570 	ld	a,#0x01
   8F2C 18 01         [12]10571 	jr	00618$
   8F2E                   10572 00617$:
   8F2E AF            [ 4]10573 	xor	a,a
   8F2F                   10574 00618$:
   8F2F DD 77 FE      [19]10575 	ld	-2 (ix),a
                          10576 ;src/main.c:2056: pro->y+=2;
   8F32 DD 7E F9      [19]10577 	ld	a,-7 (ix)
   8F35 C6 01         [ 7]10578 	add	a, #0x01
   8F37 DD 77 FB      [19]10579 	ld	-5 (ix),a
   8F3A DD 7E FA      [19]10580 	ld	a,-6 (ix)
   8F3D CE 00         [ 7]10581 	adc	a, #0x00
   8F3F DD 77 FC      [19]10582 	ld	-4 (ix),a
                          10583 ;src/main.c:2078: else if(dos==5){
   8F42 DD 7E F2      [19]10584 	ld	a,-14 (ix)
   8F45 D6 05         [ 7]10585 	sub	a, #0x05
   8F47 20 04         [12]10586 	jr	NZ,00619$
   8F49 3E 01         [ 7]10587 	ld	a,#0x01
   8F4B 18 01         [12]10588 	jr	00620$
   8F4D                   10589 00619$:
   8F4D AF            [ 4]10590 	xor	a,a
   8F4E                   10591 00620$:
   8F4E DD 77 FD      [19]10592 	ld	-3 (ix),a
                          10593 ;src/main.c:2040: if(pro->mira==M_abajo){
   8F51 DD 7E F9      [19]10594 	ld	a,-7 (ix)
   8F54 C6 0C         [ 7]10595 	add	a, #0x0C
   8F56 DD 77 F6      [19]10596 	ld	-10 (ix),a
   8F59 DD 7E FA      [19]10597 	ld	a,-6 (ix)
   8F5C CE 00         [ 7]10598 	adc	a, #0x00
   8F5E DD 77 F7      [19]10599 	ld	-9 (ix),a
                          10600 ;src/main.c:2036: switch(uno){
   8F61 DD 7E F5      [19]10601 	ld	a,-11 (ix)
   8F64 D6 02         [ 7]10602 	sub	a, #0x02
   8F66 28 0B         [12]10603 	jr	Z,00136$
   8F68 DD 7E F5      [19]10604 	ld	a,-11 (ix)
   8F6B D6 03         [ 7]10605 	sub	a, #0x03
   8F6D CA 77 93      [10]10606 	jp	Z,00197$
   8F70 C3 5F 97      [10]10607 	jp	00273$
                          10608 ;src/main.c:2037: case 2: 
   8F73                   10609 00136$:
                          10610 ;src/main.c:2038: if(dos==4){
   8F73 DD 7E FE      [19]10611 	ld	a,-2 (ix)
   8F76 B7            [ 4]10612 	or	a, a
   8F77 CA 78 91      [10]10613 	jp	Z,00195$
                          10614 ;src/main.c:2039: if(validarColision(3,pro,0)==1 && validarColision(2,pro,0)==1 && pro->x>3 && pro->y<15*11+15){
   8F7A AF            [ 4]10615 	xor	a, a
   8F7B F5            [11]10616 	push	af
   8F7C 33            [ 6]10617 	inc	sp
   8F7D DD 6E 07      [19]10618 	ld	l,7 (ix)
   8F80 DD 66 08      [19]10619 	ld	h,8 (ix)
   8F83 E5            [11]10620 	push	hl
   8F84 3E 03         [ 7]10621 	ld	a,#0x03
   8F86 F5            [11]10622 	push	af
   8F87 33            [ 6]10623 	inc	sp
   8F88 CD CF 5F      [17]10624 	call	_validarColision
   8F8B F1            [10]10625 	pop	af
   8F8C F1            [10]10626 	pop	af
   8F8D 2D            [ 4]10627 	dec	l
   8F8E C2 F1 90      [10]10628 	jp	NZ,00160$
   8F91 AF            [ 4]10629 	xor	a, a
   8F92 F5            [11]10630 	push	af
   8F93 33            [ 6]10631 	inc	sp
   8F94 DD 6E 07      [19]10632 	ld	l,7 (ix)
   8F97 DD 66 08      [19]10633 	ld	h,8 (ix)
   8F9A E5            [11]10634 	push	hl
   8F9B 3E 02         [ 7]10635 	ld	a,#0x02
   8F9D F5            [11]10636 	push	af
   8F9E 33            [ 6]10637 	inc	sp
   8F9F CD CF 5F      [17]10638 	call	_validarColision
   8FA2 F1            [10]10639 	pop	af
   8FA3 F1            [10]10640 	pop	af
   8FA4 2D            [ 4]10641 	dec	l
   8FA5 C2 F1 90      [10]10642 	jp	NZ,00160$
   8FA8 DD 6E F9      [19]10643 	ld	l,-7 (ix)
   8FAB DD 66 FA      [19]10644 	ld	h,-6 (ix)
   8FAE 4E            [ 7]10645 	ld	c,(hl)
   8FAF 3E 03         [ 7]10646 	ld	a,#0x03
   8FB1 91            [ 4]10647 	sub	a, c
   8FB2 D2 F1 90      [10]10648 	jp	NC,00160$
   8FB5 DD 6E FB      [19]10649 	ld	l,-5 (ix)
   8FB8 DD 66 FC      [19]10650 	ld	h,-4 (ix)
   8FBB 7E            [ 7]10651 	ld	a, (hl)
   8FBC D6 B4         [ 7]10652 	sub	a, #0xB4
   8FBE D2 F1 90      [10]10653 	jp	NC,00160$
                          10654 ;src/main.c:2040: if(pro->mira==M_abajo){
   8FC1 DD 6E F6      [19]10655 	ld	l,-10 (ix)
   8FC4 DD 66 F7      [19]10656 	ld	h,-9 (ix)
   8FC7 7E            [ 7]10657 	ld	a,(hl)
   8FC8 D6 02         [ 7]10658 	sub	a, #0x02
   8FCA C2 59 90      [10]10659 	jp	NZ,00146$
                          10660 ;src/main.c:2041: andando_entrar(M_derecha, pro);
   8FCD DD 6E F9      [19]10661 	ld	l,-7 (ix)
   8FD0 DD 66 FA      [19]10662 	ld	h,-6 (ix)
   8FD3 E5            [11]10663 	push	hl
   8FD4 AF            [ 4]10664 	xor	a, a
   8FD5 F5            [11]10665 	push	af
   8FD6 33            [ 6]10666 	inc	sp
   8FD7 CD 6E 9C      [17]10667 	call	_andando_entrar
   8FDA F1            [10]10668 	pop	af
   8FDB 33            [ 6]10669 	inc	sp
                          10670 ;src/main.c:2042: andando_animar(M_derecha, pro);
   8FDC DD 6E 07      [19]10671 	ld	l,7 (ix)
   8FDF DD 66 08      [19]10672 	ld	h,8 (ix)
   8FE2 E5            [11]10673 	push	hl
   8FE3 AF            [ 4]10674 	xor	a, a
   8FE4 F5            [11]10675 	push	af
   8FE5 33            [ 6]10676 	inc	sp
   8FE6 CD 75 9B      [17]10677 	call	_andando_animar
   8FE9 F1            [10]10678 	pop	af
   8FEA 33            [ 6]10679 	inc	sp
                          10680 ;src/main.c:2043: pro->y+=2;
   8FEB DD 6E FB      [19]10681 	ld	l,-5 (ix)
   8FEE DD 66 FC      [19]10682 	ld	h,-4 (ix)
   8FF1 7E            [ 7]10683 	ld	a,(hl)
   8FF2 C6 02         [ 7]10684 	add	a, #0x02
   8FF4 DD 77 F8      [19]10685 	ld	-8 (ix),a
   8FF7 DD 6E FB      [19]10686 	ld	l,-5 (ix)
   8FFA DD 66 FC      [19]10687 	ld	h,-4 (ix)
   8FFD DD 7E F8      [19]10688 	ld	a,-8 (ix)
   9000 77            [ 7]10689 	ld	(hl),a
                          10690 ;src/main.c:2044: if(validarColision(2, pro,0))
   9001 AF            [ 4]10691 	xor	a, a
   9002 F5            [11]10692 	push	af
   9003 33            [ 6]10693 	inc	sp
   9004 DD 6E F9      [19]10694 	ld	l,-7 (ix)
   9007 DD 66 FA      [19]10695 	ld	h,-6 (ix)
   900A E5            [11]10696 	push	hl
   900B 3E 02         [ 7]10697 	ld	a,#0x02
   900D F5            [11]10698 	push	af
   900E 33            [ 6]10699 	inc	sp
   900F CD CF 5F      [17]10700 	call	_validarColision
   9012 F1            [10]10701 	pop	af
   9013 F1            [10]10702 	pop	af
   9014 DD 75 F8      [19]10703 	ld	-8 (ix), l
   9017 7D            [ 4]10704 	ld	a, l
   9018 B7            [ 4]10705 	or	a, a
   9019 28 0F         [12]10706 	jr	Z,00138$
                          10707 ;src/main.c:2045: pro->x++;
   901B DD 6E F9      [19]10708 	ld	l,-7 (ix)
   901E DD 66 FA      [19]10709 	ld	h,-6 (ix)
   9021 4E            [ 7]10710 	ld	c,(hl)
   9022 0C            [ 4]10711 	inc	c
   9023 DD 6E F9      [19]10712 	ld	l,-7 (ix)
   9026 DD 66 FA      [19]10713 	ld	h,-6 (ix)
   9029 71            [ 7]10714 	ld	(hl),c
   902A                   10715 00138$:
                          10716 ;src/main.c:2046: if(validarColision(2, pro,0))
   902A AF            [ 4]10717 	xor	a, a
   902B F5            [11]10718 	push	af
   902C 33            [ 6]10719 	inc	sp
   902D DD 6E F9      [19]10720 	ld	l,-7 (ix)
   9030 DD 66 FA      [19]10721 	ld	h,-6 (ix)
   9033 E5            [11]10722 	push	hl
   9034 3E 02         [ 7]10723 	ld	a,#0x02
   9036 F5            [11]10724 	push	af
   9037 33            [ 6]10725 	inc	sp
   9038 CD CF 5F      [17]10726 	call	_validarColision
   903B F1            [10]10727 	pop	af
   903C F1            [10]10728 	pop	af
   903D DD 75 F8      [19]10729 	ld	-8 (ix), l
   9040 7D            [ 4]10730 	ld	a, l
   9041 B7            [ 4]10731 	or	a, a
   9042 28 0F         [12]10732 	jr	Z,00140$
                          10733 ;src/main.c:2047: pro->x++;
   9044 DD 6E F9      [19]10734 	ld	l,-7 (ix)
   9047 DD 66 FA      [19]10735 	ld	h,-6 (ix)
   904A 4E            [ 7]10736 	ld	c,(hl)
   904B 0C            [ 4]10737 	inc	c
   904C DD 6E F9      [19]10738 	ld	l,-7 (ix)
   904F DD 66 FA      [19]10739 	ld	h,-6 (ix)
   9052 71            [ 7]10740 	ld	(hl),c
   9053                   10741 00140$:
                          10742 ;src/main.c:2049: return uno;
   9053 DD 6E F5      [19]10743 	ld	l,-11 (ix)
   9056 C3 61 97      [10]10744 	jp	00277$
   9059                   10745 00146$:
                          10746 ;src/main.c:2052: bajando_entrar(M_abajo, pro);
   9059 DD 6E F9      [19]10747 	ld	l,-7 (ix)
   905C DD 66 FA      [19]10748 	ld	h,-6 (ix)
   905F E5            [11]10749 	push	hl
   9060 3E 02         [ 7]10750 	ld	a,#0x02
   9062 F5            [11]10751 	push	af
   9063 33            [ 6]10752 	inc	sp
   9064 CD FD 9D      [17]10753 	call	_bajando_entrar
   9067 F1            [10]10754 	pop	af
   9068 33            [ 6]10755 	inc	sp
                          10756 ;src/main.c:2053: abajo_animar(pro);
   9069 DD 6E 07      [19]10757 	ld	l,7 (ix)
   906C DD 66 08      [19]10758 	ld	h,8 (ix)
   906F E5            [11]10759 	push	hl
   9070 CD 42 9D      [17]10760 	call	_abajo_animar
   9073 F1            [10]10761 	pop	af
                          10762 ;src/main.c:2054: pro->x++;
   9074 DD 6E F9      [19]10763 	ld	l,-7 (ix)
   9077 DD 66 FA      [19]10764 	ld	h,-6 (ix)
   907A 4E            [ 7]10765 	ld	c,(hl)
   907B 0C            [ 4]10766 	inc	c
   907C DD 6E F9      [19]10767 	ld	l,-7 (ix)
   907F DD 66 FA      [19]10768 	ld	h,-6 (ix)
   9082 71            [ 7]10769 	ld	(hl),c
                          10770 ;src/main.c:2055: if(validarColision(3, pro,0))
   9083 AF            [ 4]10771 	xor	a, a
   9084 F5            [11]10772 	push	af
   9085 33            [ 6]10773 	inc	sp
   9086 DD 6E F9      [19]10774 	ld	l,-7 (ix)
   9089 DD 66 FA      [19]10775 	ld	h,-6 (ix)
   908C E5            [11]10776 	push	hl
   908D 3E 03         [ 7]10777 	ld	a,#0x03
   908F F5            [11]10778 	push	af
   9090 33            [ 6]10779 	inc	sp
   9091 CD CF 5F      [17]10780 	call	_validarColision
   9094 F1            [10]10781 	pop	af
   9095 F1            [10]10782 	pop	af
   9096 DD 75 F8      [19]10783 	ld	-8 (ix), l
   9099 7D            [ 4]10784 	ld	a, l
   909A B7            [ 4]10785 	or	a, a
   909B 28 1A         [12]10786 	jr	Z,00142$
                          10787 ;src/main.c:2056: pro->y+=2;
   909D DD 6E FB      [19]10788 	ld	l,-5 (ix)
   90A0 DD 66 FC      [19]10789 	ld	h,-4 (ix)
   90A3 7E            [ 7]10790 	ld	a,(hl)
   90A4 DD 77 F8      [19]10791 	ld	-8 (ix),a
   90A7 DD 34 F8      [23]10792 	inc	-8 (ix)
   90AA DD 34 F8      [23]10793 	inc	-8 (ix)
   90AD DD 6E FB      [19]10794 	ld	l,-5 (ix)
   90B0 DD 66 FC      [19]10795 	ld	h,-4 (ix)
   90B3 DD 7E F8      [19]10796 	ld	a,-8 (ix)
   90B6 77            [ 7]10797 	ld	(hl),a
   90B7                   10798 00142$:
                          10799 ;src/main.c:2057: if(validarColision(3, pro,0))
   90B7 AF            [ 4]10800 	xor	a, a
   90B8 F5            [11]10801 	push	af
   90B9 33            [ 6]10802 	inc	sp
   90BA DD 6E F9      [19]10803 	ld	l,-7 (ix)
   90BD DD 66 FA      [19]10804 	ld	h,-6 (ix)
   90C0 E5            [11]10805 	push	hl
   90C1 3E 03         [ 7]10806 	ld	a,#0x03
   90C3 F5            [11]10807 	push	af
   90C4 33            [ 6]10808 	inc	sp
   90C5 CD CF 5F      [17]10809 	call	_validarColision
   90C8 F1            [10]10810 	pop	af
   90C9 F1            [10]10811 	pop	af
   90CA DD 75 F8      [19]10812 	ld	-8 (ix), l
   90CD 7D            [ 4]10813 	ld	a, l
   90CE B7            [ 4]10814 	or	a, a
   90CF 28 1A         [12]10815 	jr	Z,00144$
                          10816 ;src/main.c:2058: pro->y+=2;
   90D1 DD 6E FB      [19]10817 	ld	l,-5 (ix)
   90D4 DD 66 FC      [19]10818 	ld	h,-4 (ix)
   90D7 7E            [ 7]10819 	ld	a,(hl)
   90D8 DD 77 F8      [19]10820 	ld	-8 (ix),a
   90DB DD 34 F8      [23]10821 	inc	-8 (ix)
   90DE DD 34 F8      [23]10822 	inc	-8 (ix)
   90E1 DD 6E FB      [19]10823 	ld	l,-5 (ix)
   90E4 DD 66 FC      [19]10824 	ld	h,-4 (ix)
   90E7 DD 7E F8      [19]10825 	ld	a,-8 (ix)
   90EA 77            [ 7]10826 	ld	(hl),a
   90EB                   10827 00144$:
                          10828 ;src/main.c:2061: return dos;
   90EB DD 6E F2      [19]10829 	ld	l,-14 (ix)
   90EE C3 61 97      [10]10830 	jp	00277$
   90F1                   10831 00160$:
                          10832 ;src/main.c:2065: else if(validarColision(3,pro,0)==0 && validarColision(2,pro,0)==1){
   90F1 AF            [ 4]10833 	xor	a, a
   90F2 F5            [11]10834 	push	af
   90F3 33            [ 6]10835 	inc	sp
   90F4 DD 6E 07      [19]10836 	ld	l,7 (ix)
   90F7 DD 66 08      [19]10837 	ld	h,8 (ix)
   90FA E5            [11]10838 	push	hl
   90FB 3E 03         [ 7]10839 	ld	a,#0x03
   90FD F5            [11]10840 	push	af
   90FE 33            [ 6]10841 	inc	sp
   90FF CD CF 5F      [17]10842 	call	_validarColision
   9102 F1            [10]10843 	pop	af
   9103 F1            [10]10844 	pop	af
   9104 7D            [ 4]10845 	ld	a,l
   9105 B7            [ 4]10846 	or	a, a
   9106 20 1C         [12]10847 	jr	NZ,00156$
   9108 AF            [ 4]10848 	xor	a, a
   9109 F5            [11]10849 	push	af
   910A 33            [ 6]10850 	inc	sp
   910B DD 6E 07      [19]10851 	ld	l,7 (ix)
   910E DD 66 08      [19]10852 	ld	h,8 (ix)
   9111 E5            [11]10853 	push	hl
   9112 3E 02         [ 7]10854 	ld	a,#0x02
   9114 F5            [11]10855 	push	af
   9115 33            [ 6]10856 	inc	sp
   9116 CD CF 5F      [17]10857 	call	_validarColision
   9119 F1            [10]10858 	pop	af
   911A F1            [10]10859 	pop	af
   911B 2D            [ 4]10860 	dec	l
   911C 20 06         [12]10861 	jr	NZ,00156$
                          10862 ;src/main.c:2066: return uno;
   911E DD 6E F5      [19]10863 	ld	l,-11 (ix)
   9121 C3 61 97      [10]10864 	jp	00277$
   9124                   10865 00156$:
                          10866 ;src/main.c:2068: else if(validarColision(3,pro,0)==1 && validarColision(2,pro,0)==0){
   9124 AF            [ 4]10867 	xor	a, a
   9125 F5            [11]10868 	push	af
   9126 33            [ 6]10869 	inc	sp
   9127 DD 6E 07      [19]10870 	ld	l,7 (ix)
   912A DD 66 08      [19]10871 	ld	h,8 (ix)
   912D E5            [11]10872 	push	hl
   912E 3E 03         [ 7]10873 	ld	a,#0x03
   9130 F5            [11]10874 	push	af
   9131 33            [ 6]10875 	inc	sp
   9132 CD CF 5F      [17]10876 	call	_validarColision
   9135 F1            [10]10877 	pop	af
   9136 F1            [10]10878 	pop	af
   9137 2D            [ 4]10879 	dec	l
   9138 20 1D         [12]10880 	jr	NZ,00152$
   913A AF            [ 4]10881 	xor	a, a
   913B F5            [11]10882 	push	af
   913C 33            [ 6]10883 	inc	sp
   913D DD 6E 07      [19]10884 	ld	l,7 (ix)
   9140 DD 66 08      [19]10885 	ld	h,8 (ix)
   9143 E5            [11]10886 	push	hl
   9144 3E 02         [ 7]10887 	ld	a,#0x02
   9146 F5            [11]10888 	push	af
   9147 33            [ 6]10889 	inc	sp
   9148 CD CF 5F      [17]10890 	call	_validarColision
   914B F1            [10]10891 	pop	af
   914C F1            [10]10892 	pop	af
   914D 7D            [ 4]10893 	ld	a,l
   914E B7            [ 4]10894 	or	a, a
   914F 20 06         [12]10895 	jr	NZ,00152$
                          10896 ;src/main.c:2069: return dos;
   9151 DD 6E F2      [19]10897 	ld	l,-14 (ix)
   9154 C3 61 97      [10]10898 	jp	00277$
   9157                   10899 00152$:
                          10900 ;src/main.c:2071: else if(validarColision(0,pro,0)==1){
   9157 AF            [ 4]10901 	xor	a, a
   9158 F5            [11]10902 	push	af
   9159 33            [ 6]10903 	inc	sp
   915A DD 6E 07      [19]10904 	ld	l,7 (ix)
   915D DD 66 08      [19]10905 	ld	h,8 (ix)
   9160 E5            [11]10906 	push	hl
   9161 AF            [ 4]10907 	xor	a, a
   9162 F5            [11]10908 	push	af
   9163 33            [ 6]10909 	inc	sp
   9164 CD CF 5F      [17]10910 	call	_validarColision
   9167 F1            [10]10911 	pop	af
   9168 F1            [10]10912 	pop	af
   9169 2D            [ 4]10913 	dec	l
   916A 20 06         [12]10914 	jr	NZ,00149$
                          10915 ;src/main.c:2072: return uno;
   916C DD 6E F5      [19]10916 	ld	l,-11 (ix)
   916F C3 61 97      [10]10917 	jp	00277$
   9172                   10918 00149$:
                          10919 ;src/main.c:2075: return dos;
   9172 DD 6E F2      [19]10920 	ld	l,-14 (ix)
   9175 C3 61 97      [10]10921 	jp	00277$
   9178                   10922 00195$:
                          10923 ;src/main.c:2078: else if(dos==5){
   9178 DD 7E FD      [19]10924 	ld	a,-3 (ix)
   917B B7            [ 4]10925 	or	a, a
   917C CA 5F 97      [10]10926 	jp	Z,00273$
                          10927 ;src/main.c:2079: if(validarColision(1,pro,0)==1 && validarColision(2,pro,0)==1 && pro->y<15*11+15){
   917F AF            [ 4]10928 	xor	a, a
   9180 F5            [11]10929 	push	af
   9181 33            [ 6]10930 	inc	sp
   9182 DD 6E 07      [19]10931 	ld	l,7 (ix)
   9185 DD 66 08      [19]10932 	ld	h,8 (ix)
   9188 E5            [11]10933 	push	hl
   9189 3E 01         [ 7]10934 	ld	a,#0x01
   918B F5            [11]10935 	push	af
   918C 33            [ 6]10936 	inc	sp
   918D CD CF 5F      [17]10937 	call	_validarColision
   9190 F1            [10]10938 	pop	af
   9191 F1            [10]10939 	pop	af
   9192 2D            [ 4]10940 	dec	l
   9193 C2 EF 92      [10]10941 	jp	NZ,00188$
   9196 AF            [ 4]10942 	xor	a, a
   9197 F5            [11]10943 	push	af
   9198 33            [ 6]10944 	inc	sp
   9199 DD 6E 07      [19]10945 	ld	l,7 (ix)
   919C DD 66 08      [19]10946 	ld	h,8 (ix)
   919F E5            [11]10947 	push	hl
   91A0 3E 02         [ 7]10948 	ld	a,#0x02
   91A2 F5            [11]10949 	push	af
   91A3 33            [ 6]10950 	inc	sp
   91A4 CD CF 5F      [17]10951 	call	_validarColision
   91A7 F1            [10]10952 	pop	af
   91A8 F1            [10]10953 	pop	af
   91A9 2D            [ 4]10954 	dec	l
   91AA C2 EF 92      [10]10955 	jp	NZ,00188$
   91AD DD 6E FB      [19]10956 	ld	l,-5 (ix)
   91B0 DD 66 FC      [19]10957 	ld	h,-4 (ix)
   91B3 7E            [ 7]10958 	ld	a, (hl)
   91B4 D6 B4         [ 7]10959 	sub	a, #0xB4
   91B6 D2 EF 92      [10]10960 	jp	NC,00188$
                          10961 ;src/main.c:2080: if(pro->mira==M_arriba){
   91B9 DD 6E F6      [19]10962 	ld	l,-10 (ix)
   91BC DD 66 F7      [19]10963 	ld	h,-9 (ix)
   91BF 7E            [ 7]10964 	ld	a,(hl)
   91C0 D6 03         [ 7]10965 	sub	a, #0x03
   91C2 C2 51 92      [10]10966 	jp	NZ,00174$
                          10967 ;src/main.c:2081: andando_entrar(M_derecha, pro);
   91C5 DD 6E F9      [19]10968 	ld	l,-7 (ix)
   91C8 DD 66 FA      [19]10969 	ld	h,-6 (ix)
   91CB E5            [11]10970 	push	hl
   91CC AF            [ 4]10971 	xor	a, a
   91CD F5            [11]10972 	push	af
   91CE 33            [ 6]10973 	inc	sp
   91CF CD 6E 9C      [17]10974 	call	_andando_entrar
   91D2 F1            [10]10975 	pop	af
   91D3 33            [ 6]10976 	inc	sp
                          10977 ;src/main.c:2082: andando_animar(M_derecha, pro);
   91D4 DD 6E 07      [19]10978 	ld	l,7 (ix)
   91D7 DD 66 08      [19]10979 	ld	h,8 (ix)
   91DA E5            [11]10980 	push	hl
   91DB AF            [ 4]10981 	xor	a, a
   91DC F5            [11]10982 	push	af
   91DD 33            [ 6]10983 	inc	sp
   91DE CD 75 9B      [17]10984 	call	_andando_animar
   91E1 F1            [10]10985 	pop	af
   91E2 33            [ 6]10986 	inc	sp
                          10987 ;src/main.c:2083: pro->y-=2;
   91E3 DD 6E FB      [19]10988 	ld	l,-5 (ix)
   91E6 DD 66 FC      [19]10989 	ld	h,-4 (ix)
   91E9 7E            [ 7]10990 	ld	a,(hl)
   91EA C6 FE         [ 7]10991 	add	a,#0xFE
   91EC DD 77 F8      [19]10992 	ld	-8 (ix),a
   91EF DD 6E FB      [19]10993 	ld	l,-5 (ix)
   91F2 DD 66 FC      [19]10994 	ld	h,-4 (ix)
   91F5 DD 7E F8      [19]10995 	ld	a,-8 (ix)
   91F8 77            [ 7]10996 	ld	(hl),a
                          10997 ;src/main.c:2084: if(validarColision(2, pro,0))
   91F9 AF            [ 4]10998 	xor	a, a
   91FA F5            [11]10999 	push	af
   91FB 33            [ 6]11000 	inc	sp
   91FC DD 6E F9      [19]11001 	ld	l,-7 (ix)
   91FF DD 66 FA      [19]11002 	ld	h,-6 (ix)
   9202 E5            [11]11003 	push	hl
   9203 3E 02         [ 7]11004 	ld	a,#0x02
   9205 F5            [11]11005 	push	af
   9206 33            [ 6]11006 	inc	sp
   9207 CD CF 5F      [17]11007 	call	_validarColision
   920A F1            [10]11008 	pop	af
   920B F1            [10]11009 	pop	af
   920C DD 75 F8      [19]11010 	ld	-8 (ix), l
   920F 7D            [ 4]11011 	ld	a, l
   9210 B7            [ 4]11012 	or	a, a
   9211 28 0F         [12]11013 	jr	Z,00166$
                          11014 ;src/main.c:2085: pro->x++;
   9213 DD 6E F9      [19]11015 	ld	l,-7 (ix)
   9216 DD 66 FA      [19]11016 	ld	h,-6 (ix)
   9219 4E            [ 7]11017 	ld	c,(hl)
   921A 0C            [ 4]11018 	inc	c
   921B DD 6E F9      [19]11019 	ld	l,-7 (ix)
   921E DD 66 FA      [19]11020 	ld	h,-6 (ix)
   9221 71            [ 7]11021 	ld	(hl),c
   9222                   11022 00166$:
                          11023 ;src/main.c:2086: if(validarColision(2, pro,0))
   9222 AF            [ 4]11024 	xor	a, a
   9223 F5            [11]11025 	push	af
   9224 33            [ 6]11026 	inc	sp
   9225 DD 6E F9      [19]11027 	ld	l,-7 (ix)
   9228 DD 66 FA      [19]11028 	ld	h,-6 (ix)
   922B E5            [11]11029 	push	hl
   922C 3E 02         [ 7]11030 	ld	a,#0x02
   922E F5            [11]11031 	push	af
   922F 33            [ 6]11032 	inc	sp
   9230 CD CF 5F      [17]11033 	call	_validarColision
   9233 F1            [10]11034 	pop	af
   9234 F1            [10]11035 	pop	af
   9235 DD 75 F8      [19]11036 	ld	-8 (ix), l
   9238 7D            [ 4]11037 	ld	a, l
   9239 B7            [ 4]11038 	or	a, a
   923A 28 0F         [12]11039 	jr	Z,00168$
                          11040 ;src/main.c:2087: pro->x++;
   923C DD 6E F9      [19]11041 	ld	l,-7 (ix)
   923F DD 66 FA      [19]11042 	ld	h,-6 (ix)
   9242 4E            [ 7]11043 	ld	c,(hl)
   9243 0C            [ 4]11044 	inc	c
   9244 DD 6E F9      [19]11045 	ld	l,-7 (ix)
   9247 DD 66 FA      [19]11046 	ld	h,-6 (ix)
   924A 71            [ 7]11047 	ld	(hl),c
   924B                   11048 00168$:
                          11049 ;src/main.c:2088: return uno;
   924B DD 6E F5      [19]11050 	ld	l,-11 (ix)
   924E C3 61 97      [10]11051 	jp	00277$
   9251                   11052 00174$:
                          11053 ;src/main.c:2091: subiendo_entrar(M_arriba, pro);
   9251 DD 6E F9      [19]11054 	ld	l,-7 (ix)
   9254 DD 66 FA      [19]11055 	ld	h,-6 (ix)
   9257 E5            [11]11056 	push	hl
   9258 3E 03         [ 7]11057 	ld	a,#0x03
   925A F5            [11]11058 	push	af
   925B 33            [ 6]11059 	inc	sp
   925C CD 8B 9F      [17]11060 	call	_subiendo_entrar
   925F F1            [10]11061 	pop	af
   9260 33            [ 6]11062 	inc	sp
                          11063 ;src/main.c:2092: arriba_animar(pro);
   9261 DD 6E 07      [19]11064 	ld	l,7 (ix)
   9264 DD 66 08      [19]11065 	ld	h,8 (ix)
   9267 E5            [11]11066 	push	hl
   9268 CD D0 9E      [17]11067 	call	_arriba_animar
   926B F1            [10]11068 	pop	af
                          11069 ;src/main.c:2093: pro->x++;
   926C DD 6E F9      [19]11070 	ld	l,-7 (ix)
   926F DD 66 FA      [19]11071 	ld	h,-6 (ix)
   9272 7E            [ 7]11072 	ld	a,(hl)
   9273 3C            [ 4]11073 	inc	a
   9274 DD 77 F8      [19]11074 	ld	-8 (ix),a
   9277 DD 6E F9      [19]11075 	ld	l,-7 (ix)
   927A DD 66 FA      [19]11076 	ld	h,-6 (ix)
   927D DD 7E F8      [19]11077 	ld	a,-8 (ix)
   9280 77            [ 7]11078 	ld	(hl),a
                          11079 ;src/main.c:2094: if(validarColision(1, pro,0))
   9281 AF            [ 4]11080 	xor	a, a
   9282 F5            [11]11081 	push	af
   9283 33            [ 6]11082 	inc	sp
   9284 DD 6E F9      [19]11083 	ld	l,-7 (ix)
   9287 DD 66 FA      [19]11084 	ld	h,-6 (ix)
   928A E5            [11]11085 	push	hl
   928B 3E 01         [ 7]11086 	ld	a,#0x01
   928D F5            [11]11087 	push	af
   928E 33            [ 6]11088 	inc	sp
   928F CD CF 5F      [17]11089 	call	_validarColision
   9292 F1            [10]11090 	pop	af
   9293 F1            [10]11091 	pop	af
   9294 DD 75 F8      [19]11092 	ld	-8 (ix), l
   9297 7D            [ 4]11093 	ld	a, l
   9298 B7            [ 4]11094 	or	a, a
   9299 28 1A         [12]11095 	jr	Z,00170$
                          11096 ;src/main.c:2095: pro->y-=2;
   929B DD 6E FB      [19]11097 	ld	l,-5 (ix)
   929E DD 66 FC      [19]11098 	ld	h,-4 (ix)
   92A1 7E            [ 7]11099 	ld	a,(hl)
   92A2 DD 77 F8      [19]11100 	ld	-8 (ix),a
   92A5 DD 35 F8      [23]11101 	dec	-8 (ix)
   92A8 DD 35 F8      [23]11102 	dec	-8 (ix)
   92AB DD 6E FB      [19]11103 	ld	l,-5 (ix)
   92AE DD 66 FC      [19]11104 	ld	h,-4 (ix)
   92B1 DD 7E F8      [19]11105 	ld	a,-8 (ix)
   92B4 77            [ 7]11106 	ld	(hl),a
   92B5                   11107 00170$:
                          11108 ;src/main.c:2096: if(validarColision(1, pro,0))
   92B5 AF            [ 4]11109 	xor	a, a
   92B6 F5            [11]11110 	push	af
   92B7 33            [ 6]11111 	inc	sp
   92B8 DD 6E F9      [19]11112 	ld	l,-7 (ix)
   92BB DD 66 FA      [19]11113 	ld	h,-6 (ix)
   92BE E5            [11]11114 	push	hl
   92BF 3E 01         [ 7]11115 	ld	a,#0x01
   92C1 F5            [11]11116 	push	af
   92C2 33            [ 6]11117 	inc	sp
   92C3 CD CF 5F      [17]11118 	call	_validarColision
   92C6 F1            [10]11119 	pop	af
   92C7 F1            [10]11120 	pop	af
   92C8 DD 75 F8      [19]11121 	ld	-8 (ix), l
   92CB 7D            [ 4]11122 	ld	a, l
   92CC B7            [ 4]11123 	or	a, a
   92CD 28 1A         [12]11124 	jr	Z,00172$
                          11125 ;src/main.c:2097: pro->y-=2;
   92CF DD 6E FB      [19]11126 	ld	l,-5 (ix)
   92D2 DD 66 FC      [19]11127 	ld	h,-4 (ix)
   92D5 7E            [ 7]11128 	ld	a,(hl)
   92D6 DD 77 F8      [19]11129 	ld	-8 (ix),a
   92D9 DD 35 F8      [23]11130 	dec	-8 (ix)
   92DC DD 35 F8      [23]11131 	dec	-8 (ix)
   92DF DD 6E FB      [19]11132 	ld	l,-5 (ix)
   92E2 DD 66 FC      [19]11133 	ld	h,-4 (ix)
   92E5 DD 7E F8      [19]11134 	ld	a,-8 (ix)
   92E8 77            [ 7]11135 	ld	(hl),a
   92E9                   11136 00172$:
                          11137 ;src/main.c:2099: return dos;
   92E9 DD 6E F2      [19]11138 	ld	l,-14 (ix)
   92EC C3 61 97      [10]11139 	jp	00277$
   92EF                   11140 00188$:
                          11141 ;src/main.c:2103: else if(validarColision(1,pro,0)==0 && validarColision(2,pro,0)==1){
   92EF AF            [ 4]11142 	xor	a, a
   92F0 F5            [11]11143 	push	af
   92F1 33            [ 6]11144 	inc	sp
   92F2 DD 6E 07      [19]11145 	ld	l,7 (ix)
   92F5 DD 66 08      [19]11146 	ld	h,8 (ix)
   92F8 E5            [11]11147 	push	hl
   92F9 3E 01         [ 7]11148 	ld	a,#0x01
   92FB F5            [11]11149 	push	af
   92FC 33            [ 6]11150 	inc	sp
   92FD CD CF 5F      [17]11151 	call	_validarColision
   9300 F1            [10]11152 	pop	af
   9301 F1            [10]11153 	pop	af
   9302 7D            [ 4]11154 	ld	a,l
   9303 B7            [ 4]11155 	or	a, a
   9304 20 1C         [12]11156 	jr	NZ,00184$
   9306 AF            [ 4]11157 	xor	a, a
   9307 F5            [11]11158 	push	af
   9308 33            [ 6]11159 	inc	sp
   9309 DD 6E 07      [19]11160 	ld	l,7 (ix)
   930C DD 66 08      [19]11161 	ld	h,8 (ix)
   930F E5            [11]11162 	push	hl
   9310 3E 02         [ 7]11163 	ld	a,#0x02
   9312 F5            [11]11164 	push	af
   9313 33            [ 6]11165 	inc	sp
   9314 CD CF 5F      [17]11166 	call	_validarColision
   9317 F1            [10]11167 	pop	af
   9318 F1            [10]11168 	pop	af
   9319 2D            [ 4]11169 	dec	l
   931A 20 06         [12]11170 	jr	NZ,00184$
                          11171 ;src/main.c:2104: return uno;
   931C DD 6E F5      [19]11172 	ld	l,-11 (ix)
   931F C3 61 97      [10]11173 	jp	00277$
   9322                   11174 00184$:
                          11175 ;src/main.c:2106: else if(validarColision(1,pro,0)==1 && validarColision(2,pro,0)==0){
   9322 AF            [ 4]11176 	xor	a, a
   9323 F5            [11]11177 	push	af
   9324 33            [ 6]11178 	inc	sp
   9325 DD 6E 07      [19]11179 	ld	l,7 (ix)
   9328 DD 66 08      [19]11180 	ld	h,8 (ix)
   932B E5            [11]11181 	push	hl
   932C 3E 01         [ 7]11182 	ld	a,#0x01
   932E F5            [11]11183 	push	af
   932F 33            [ 6]11184 	inc	sp
   9330 CD CF 5F      [17]11185 	call	_validarColision
   9333 F1            [10]11186 	pop	af
   9334 F1            [10]11187 	pop	af
   9335 2D            [ 4]11188 	dec	l
   9336 20 1D         [12]11189 	jr	NZ,00180$
   9338 AF            [ 4]11190 	xor	a, a
   9339 F5            [11]11191 	push	af
   933A 33            [ 6]11192 	inc	sp
   933B DD 6E 07      [19]11193 	ld	l,7 (ix)
   933E DD 66 08      [19]11194 	ld	h,8 (ix)
   9341 E5            [11]11195 	push	hl
   9342 3E 02         [ 7]11196 	ld	a,#0x02
   9344 F5            [11]11197 	push	af
   9345 33            [ 6]11198 	inc	sp
   9346 CD CF 5F      [17]11199 	call	_validarColision
   9349 F1            [10]11200 	pop	af
   934A F1            [10]11201 	pop	af
   934B 7D            [ 4]11202 	ld	a,l
   934C B7            [ 4]11203 	or	a, a
   934D 20 06         [12]11204 	jr	NZ,00180$
                          11205 ;src/main.c:2107: return dos;
   934F DD 6E F2      [19]11206 	ld	l,-14 (ix)
   9352 C3 61 97      [10]11207 	jp	00277$
   9355                   11208 00180$:
                          11209 ;src/main.c:2109: else if(validarColision(2,pro,0)==1){
   9355 AF            [ 4]11210 	xor	a, a
   9356 F5            [11]11211 	push	af
   9357 33            [ 6]11212 	inc	sp
   9358 DD 6E 07      [19]11213 	ld	l,7 (ix)
   935B DD 66 08      [19]11214 	ld	h,8 (ix)
   935E E5            [11]11215 	push	hl
   935F 3E 02         [ 7]11216 	ld	a,#0x02
   9361 F5            [11]11217 	push	af
   9362 33            [ 6]11218 	inc	sp
   9363 CD CF 5F      [17]11219 	call	_validarColision
   9366 F1            [10]11220 	pop	af
   9367 F1            [10]11221 	pop	af
   9368 2D            [ 4]11222 	dec	l
   9369 20 06         [12]11223 	jr	NZ,00177$
                          11224 ;src/main.c:2110: return uno;
   936B DD 6E F5      [19]11225 	ld	l,-11 (ix)
   936E C3 61 97      [10]11226 	jp	00277$
   9371                   11227 00177$:
                          11228 ;src/main.c:2113: return dos;
   9371 DD 6E F2      [19]11229 	ld	l,-14 (ix)
   9374 C3 61 97      [10]11230 	jp	00277$
                          11231 ;src/main.c:2117: case 3: 
   9377                   11232 00197$:
                          11233 ;src/main.c:2118: if(dos==4){
   9377 DD 7E FE      [19]11234 	ld	a,-2 (ix)
   937A B7            [ 4]11235 	or	a, a
   937B CA 73 95      [10]11236 	jp	Z,00256$
                          11237 ;src/main.c:2119: if(validarColision(3,pro,0)==1 && validarColision(0,pro,0)==1 && pro->x>3 && pro->y<15*11+15){
   937E AF            [ 4]11238 	xor	a, a
   937F F5            [11]11239 	push	af
   9380 33            [ 6]11240 	inc	sp
   9381 DD 6E 07      [19]11241 	ld	l,7 (ix)
   9384 DD 66 08      [19]11242 	ld	h,8 (ix)
   9387 E5            [11]11243 	push	hl
   9388 3E 03         [ 7]11244 	ld	a,#0x03
   938A F5            [11]11245 	push	af
   938B 33            [ 6]11246 	inc	sp
   938C CD CF 5F      [17]11247 	call	_validarColision
   938F F1            [10]11248 	pop	af
   9390 F1            [10]11249 	pop	af
   9391 2D            [ 4]11250 	dec	l
   9392 C2 EE 94      [10]11251 	jp	NZ,00221$
   9395 AF            [ 4]11252 	xor	a, a
   9396 F5            [11]11253 	push	af
   9397 33            [ 6]11254 	inc	sp
   9398 DD 6E 07      [19]11255 	ld	l,7 (ix)
   939B DD 66 08      [19]11256 	ld	h,8 (ix)
   939E E5            [11]11257 	push	hl
   939F AF            [ 4]11258 	xor	a, a
   93A0 F5            [11]11259 	push	af
   93A1 33            [ 6]11260 	inc	sp
   93A2 CD CF 5F      [17]11261 	call	_validarColision
   93A5 F1            [10]11262 	pop	af
   93A6 F1            [10]11263 	pop	af
   93A7 2D            [ 4]11264 	dec	l
   93A8 C2 EE 94      [10]11265 	jp	NZ,00221$
   93AB DD 6E F9      [19]11266 	ld	l,-7 (ix)
   93AE DD 66 FA      [19]11267 	ld	h,-6 (ix)
   93B1 4E            [ 7]11268 	ld	c,(hl)
   93B2 3E 03         [ 7]11269 	ld	a,#0x03
   93B4 91            [ 4]11270 	sub	a, c
   93B5 D2 EE 94      [10]11271 	jp	NC,00221$
   93B8 DD 6E FB      [19]11272 	ld	l,-5 (ix)
   93BB DD 66 FC      [19]11273 	ld	h,-4 (ix)
   93BE 7E            [ 7]11274 	ld	a, (hl)
   93BF D6 B4         [ 7]11275 	sub	a, #0xB4
   93C1 D2 EE 94      [10]11276 	jp	NC,00221$
                          11277 ;src/main.c:2120: if(pro->mira==M_abajo){
   93C4 DD 6E F6      [19]11278 	ld	l,-10 (ix)
   93C7 DD 66 F7      [19]11279 	ld	h,-9 (ix)
   93CA 7E            [ 7]11280 	ld	a,(hl)
   93CB D6 02         [ 7]11281 	sub	a, #0x02
   93CD C2 56 94      [10]11282 	jp	NZ,00207$
                          11283 ;src/main.c:2121: andando_entrar(M_izquierda, pro);
   93D0 DD 6E F9      [19]11284 	ld	l,-7 (ix)
   93D3 DD 66 FA      [19]11285 	ld	h,-6 (ix)
   93D6 E5            [11]11286 	push	hl
   93D7 3E 01         [ 7]11287 	ld	a,#0x01
   93D9 F5            [11]11288 	push	af
   93DA 33            [ 6]11289 	inc	sp
   93DB CD 6E 9C      [17]11290 	call	_andando_entrar
   93DE F1            [10]11291 	pop	af
   93DF 33            [ 6]11292 	inc	sp
                          11293 ;src/main.c:2122: andando_animar(M_izquierda, pro);
   93E0 DD 6E 07      [19]11294 	ld	l,7 (ix)
   93E3 DD 66 08      [19]11295 	ld	h,8 (ix)
   93E6 E5            [11]11296 	push	hl
   93E7 3E 01         [ 7]11297 	ld	a,#0x01
   93E9 F5            [11]11298 	push	af
   93EA 33            [ 6]11299 	inc	sp
   93EB CD 75 9B      [17]11300 	call	_andando_animar
   93EE F1            [10]11301 	pop	af
   93EF 33            [ 6]11302 	inc	sp
                          11303 ;src/main.c:2123: pro->y+=2;
   93F0 DD 6E FB      [19]11304 	ld	l,-5 (ix)
   93F3 DD 66 FC      [19]11305 	ld	h,-4 (ix)
   93F6 4E            [ 7]11306 	ld	c,(hl)
   93F7 0C            [ 4]11307 	inc	c
   93F8 0C            [ 4]11308 	inc	c
   93F9 DD 6E FB      [19]11309 	ld	l,-5 (ix)
   93FC DD 66 FC      [19]11310 	ld	h,-4 (ix)
   93FF 71            [ 7]11311 	ld	(hl),c
                          11312 ;src/main.c:2124: if(validarColision(0, pro,0))
   9400 AF            [ 4]11313 	xor	a, a
   9401 F5            [11]11314 	push	af
   9402 33            [ 6]11315 	inc	sp
   9403 DD 6E F9      [19]11316 	ld	l,-7 (ix)
   9406 DD 66 FA      [19]11317 	ld	h,-6 (ix)
   9409 E5            [11]11318 	push	hl
   940A AF            [ 4]11319 	xor	a, a
   940B F5            [11]11320 	push	af
   940C 33            [ 6]11321 	inc	sp
   940D CD CF 5F      [17]11322 	call	_validarColision
   9410 F1            [10]11323 	pop	af
   9411 F1            [10]11324 	pop	af
   9412 DD 75 F8      [19]11325 	ld	-8 (ix), l
   9415 7D            [ 4]11326 	ld	a, l
   9416 B7            [ 4]11327 	or	a, a
   9417 28 0F         [12]11328 	jr	Z,00199$
                          11329 ;src/main.c:2125: pro->x--;
   9419 DD 6E F9      [19]11330 	ld	l,-7 (ix)
   941C DD 66 FA      [19]11331 	ld	h,-6 (ix)
   941F 4E            [ 7]11332 	ld	c,(hl)
   9420 0D            [ 4]11333 	dec	c
   9421 DD 6E F9      [19]11334 	ld	l,-7 (ix)
   9424 DD 66 FA      [19]11335 	ld	h,-6 (ix)
   9427 71            [ 7]11336 	ld	(hl),c
   9428                   11337 00199$:
                          11338 ;src/main.c:2126: if(validarColision(0, pro,0))
   9428 AF            [ 4]11339 	xor	a, a
   9429 F5            [11]11340 	push	af
   942A 33            [ 6]11341 	inc	sp
   942B DD 6E F9      [19]11342 	ld	l,-7 (ix)
   942E DD 66 FA      [19]11343 	ld	h,-6 (ix)
   9431 E5            [11]11344 	push	hl
   9432 AF            [ 4]11345 	xor	a, a
   9433 F5            [11]11346 	push	af
   9434 33            [ 6]11347 	inc	sp
   9435 CD CF 5F      [17]11348 	call	_validarColision
   9438 F1            [10]11349 	pop	af
   9439 F1            [10]11350 	pop	af
   943A DD 75 F8      [19]11351 	ld	-8 (ix), l
   943D 7D            [ 4]11352 	ld	a, l
   943E B7            [ 4]11353 	or	a, a
   943F 28 0F         [12]11354 	jr	Z,00201$
                          11355 ;src/main.c:2127: pro->x--;
   9441 DD 6E F9      [19]11356 	ld	l,-7 (ix)
   9444 DD 66 FA      [19]11357 	ld	h,-6 (ix)
   9447 4E            [ 7]11358 	ld	c,(hl)
   9448 0D            [ 4]11359 	dec	c
   9449 DD 6E F9      [19]11360 	ld	l,-7 (ix)
   944C DD 66 FA      [19]11361 	ld	h,-6 (ix)
   944F 71            [ 7]11362 	ld	(hl),c
   9450                   11363 00201$:
                          11364 ;src/main.c:2130: return uno;
   9450 DD 6E F5      [19]11365 	ld	l,-11 (ix)
   9453 C3 61 97      [10]11366 	jp	00277$
   9456                   11367 00207$:
                          11368 ;src/main.c:2133: bajando_entrar(M_abajo, pro);
   9456 DD 6E F9      [19]11369 	ld	l,-7 (ix)
   9459 DD 66 FA      [19]11370 	ld	h,-6 (ix)
   945C E5            [11]11371 	push	hl
   945D 3E 02         [ 7]11372 	ld	a,#0x02
   945F F5            [11]11373 	push	af
   9460 33            [ 6]11374 	inc	sp
   9461 CD FD 9D      [17]11375 	call	_bajando_entrar
   9464 F1            [10]11376 	pop	af
   9465 33            [ 6]11377 	inc	sp
                          11378 ;src/main.c:2134: abajo_animar(pro);
   9466 DD 6E 07      [19]11379 	ld	l,7 (ix)
   9469 DD 66 08      [19]11380 	ld	h,8 (ix)
   946C E5            [11]11381 	push	hl
   946D CD 42 9D      [17]11382 	call	_abajo_animar
   9470 F1            [10]11383 	pop	af
                          11384 ;src/main.c:2135: pro->x--;
   9471 DD 6E F9      [19]11385 	ld	l,-7 (ix)
   9474 DD 66 FA      [19]11386 	ld	h,-6 (ix)
   9477 4E            [ 7]11387 	ld	c,(hl)
   9478 0D            [ 4]11388 	dec	c
   9479 DD 6E F9      [19]11389 	ld	l,-7 (ix)
   947C DD 66 FA      [19]11390 	ld	h,-6 (ix)
   947F 71            [ 7]11391 	ld	(hl),c
                          11392 ;src/main.c:2136: if(validarColision(3, pro,0))
   9480 AF            [ 4]11393 	xor	a, a
   9481 F5            [11]11394 	push	af
   9482 33            [ 6]11395 	inc	sp
   9483 DD 6E F9      [19]11396 	ld	l,-7 (ix)
   9486 DD 66 FA      [19]11397 	ld	h,-6 (ix)
   9489 E5            [11]11398 	push	hl
   948A 3E 03         [ 7]11399 	ld	a,#0x03
   948C F5            [11]11400 	push	af
   948D 33            [ 6]11401 	inc	sp
   948E CD CF 5F      [17]11402 	call	_validarColision
   9491 F1            [10]11403 	pop	af
   9492 F1            [10]11404 	pop	af
   9493 DD 75 F8      [19]11405 	ld	-8 (ix), l
   9496 7D            [ 4]11406 	ld	a, l
   9497 B7            [ 4]11407 	or	a, a
   9498 28 1A         [12]11408 	jr	Z,00203$
                          11409 ;src/main.c:2137: pro->y+=2;
   949A DD 6E FB      [19]11410 	ld	l,-5 (ix)
   949D DD 66 FC      [19]11411 	ld	h,-4 (ix)
   94A0 7E            [ 7]11412 	ld	a,(hl)
   94A1 DD 77 F8      [19]11413 	ld	-8 (ix),a
   94A4 DD 34 F8      [23]11414 	inc	-8 (ix)
   94A7 DD 34 F8      [23]11415 	inc	-8 (ix)
   94AA DD 6E FB      [19]11416 	ld	l,-5 (ix)
   94AD DD 66 FC      [19]11417 	ld	h,-4 (ix)
   94B0 DD 7E F8      [19]11418 	ld	a,-8 (ix)
   94B3 77            [ 7]11419 	ld	(hl),a
   94B4                   11420 00203$:
                          11421 ;src/main.c:2138: if(validarColision(3, pro,0))
   94B4 AF            [ 4]11422 	xor	a, a
   94B5 F5            [11]11423 	push	af
   94B6 33            [ 6]11424 	inc	sp
   94B7 DD 6E F9      [19]11425 	ld	l,-7 (ix)
   94BA DD 66 FA      [19]11426 	ld	h,-6 (ix)
   94BD E5            [11]11427 	push	hl
   94BE 3E 03         [ 7]11428 	ld	a,#0x03
   94C0 F5            [11]11429 	push	af
   94C1 33            [ 6]11430 	inc	sp
   94C2 CD CF 5F      [17]11431 	call	_validarColision
   94C5 F1            [10]11432 	pop	af
   94C6 F1            [10]11433 	pop	af
   94C7 DD 75 F8      [19]11434 	ld	-8 (ix), l
   94CA 7D            [ 4]11435 	ld	a, l
   94CB B7            [ 4]11436 	or	a, a
   94CC 28 1A         [12]11437 	jr	Z,00205$
                          11438 ;src/main.c:2139: pro->y+=2;
   94CE DD 6E FB      [19]11439 	ld	l,-5 (ix)
   94D1 DD 66 FC      [19]11440 	ld	h,-4 (ix)
   94D4 7E            [ 7]11441 	ld	a,(hl)
   94D5 DD 77 F8      [19]11442 	ld	-8 (ix),a
   94D8 DD 34 F8      [23]11443 	inc	-8 (ix)
   94DB DD 34 F8      [23]11444 	inc	-8 (ix)
   94DE DD 6E FB      [19]11445 	ld	l,-5 (ix)
   94E1 DD 66 FC      [19]11446 	ld	h,-4 (ix)
   94E4 DD 7E F8      [19]11447 	ld	a,-8 (ix)
   94E7 77            [ 7]11448 	ld	(hl),a
   94E8                   11449 00205$:
                          11450 ;src/main.c:2141: return dos;
   94E8 DD 6E F2      [19]11451 	ld	l,-14 (ix)
   94EB C3 61 97      [10]11452 	jp	00277$
   94EE                   11453 00221$:
                          11454 ;src/main.c:2147: else if(validarColision(3,pro,0)==0 && validarColision(0,pro,0)==1){
   94EE AF            [ 4]11455 	xor	a, a
   94EF F5            [11]11456 	push	af
   94F0 33            [ 6]11457 	inc	sp
   94F1 DD 6E 07      [19]11458 	ld	l,7 (ix)
   94F4 DD 66 08      [19]11459 	ld	h,8 (ix)
   94F7 E5            [11]11460 	push	hl
   94F8 3E 03         [ 7]11461 	ld	a,#0x03
   94FA F5            [11]11462 	push	af
   94FB 33            [ 6]11463 	inc	sp
   94FC CD CF 5F      [17]11464 	call	_validarColision
   94FF F1            [10]11465 	pop	af
   9500 F1            [10]11466 	pop	af
   9501 7D            [ 4]11467 	ld	a,l
   9502 B7            [ 4]11468 	or	a, a
   9503 20 1B         [12]11469 	jr	NZ,00217$
   9505 AF            [ 4]11470 	xor	a, a
   9506 F5            [11]11471 	push	af
   9507 33            [ 6]11472 	inc	sp
   9508 DD 6E 07      [19]11473 	ld	l,7 (ix)
   950B DD 66 08      [19]11474 	ld	h,8 (ix)
   950E E5            [11]11475 	push	hl
   950F AF            [ 4]11476 	xor	a, a
   9510 F5            [11]11477 	push	af
   9511 33            [ 6]11478 	inc	sp
   9512 CD CF 5F      [17]11479 	call	_validarColision
   9515 F1            [10]11480 	pop	af
   9516 F1            [10]11481 	pop	af
   9517 2D            [ 4]11482 	dec	l
   9518 20 06         [12]11483 	jr	NZ,00217$
                          11484 ;src/main.c:2148: return uno;
   951A DD 6E F5      [19]11485 	ld	l,-11 (ix)
   951D C3 61 97      [10]11486 	jp	00277$
   9520                   11487 00217$:
                          11488 ;src/main.c:2150: else if(validarColision(3,pro,0)==1 && validarColision(0,pro,0)==0){
   9520 AF            [ 4]11489 	xor	a, a
   9521 F5            [11]11490 	push	af
   9522 33            [ 6]11491 	inc	sp
   9523 DD 6E 07      [19]11492 	ld	l,7 (ix)
   9526 DD 66 08      [19]11493 	ld	h,8 (ix)
   9529 E5            [11]11494 	push	hl
   952A 3E 03         [ 7]11495 	ld	a,#0x03
   952C F5            [11]11496 	push	af
   952D 33            [ 6]11497 	inc	sp
   952E CD CF 5F      [17]11498 	call	_validarColision
   9531 F1            [10]11499 	pop	af
   9532 F1            [10]11500 	pop	af
   9533 2D            [ 4]11501 	dec	l
   9534 20 1C         [12]11502 	jr	NZ,00213$
   9536 AF            [ 4]11503 	xor	a, a
   9537 F5            [11]11504 	push	af
   9538 33            [ 6]11505 	inc	sp
   9539 DD 6E 07      [19]11506 	ld	l,7 (ix)
   953C DD 66 08      [19]11507 	ld	h,8 (ix)
   953F E5            [11]11508 	push	hl
   9540 AF            [ 4]11509 	xor	a, a
   9541 F5            [11]11510 	push	af
   9542 33            [ 6]11511 	inc	sp
   9543 CD CF 5F      [17]11512 	call	_validarColision
   9546 F1            [10]11513 	pop	af
   9547 F1            [10]11514 	pop	af
   9548 7D            [ 4]11515 	ld	a,l
   9549 B7            [ 4]11516 	or	a, a
   954A 20 06         [12]11517 	jr	NZ,00213$
                          11518 ;src/main.c:2151: return dos;
   954C DD 6E F2      [19]11519 	ld	l,-14 (ix)
   954F C3 61 97      [10]11520 	jp	00277$
   9552                   11521 00213$:
                          11522 ;src/main.c:2153: else if(validarColision(0,pro,0)==1){
   9552 AF            [ 4]11523 	xor	a, a
   9553 F5            [11]11524 	push	af
   9554 33            [ 6]11525 	inc	sp
   9555 DD 6E 07      [19]11526 	ld	l,7 (ix)
   9558 DD 66 08      [19]11527 	ld	h,8 (ix)
   955B E5            [11]11528 	push	hl
   955C AF            [ 4]11529 	xor	a, a
   955D F5            [11]11530 	push	af
   955E 33            [ 6]11531 	inc	sp
   955F CD CF 5F      [17]11532 	call	_validarColision
   9562 F1            [10]11533 	pop	af
   9563 F1            [10]11534 	pop	af
   9564 2D            [ 4]11535 	dec	l
   9565 20 06         [12]11536 	jr	NZ,00210$
                          11537 ;src/main.c:2154: return uno;
   9567 DD 6E F5      [19]11538 	ld	l,-11 (ix)
   956A C3 61 97      [10]11539 	jp	00277$
   956D                   11540 00210$:
                          11541 ;src/main.c:2157: return dos;
   956D DD 6E F2      [19]11542 	ld	l,-14 (ix)
   9570 C3 61 97      [10]11543 	jp	00277$
   9573                   11544 00256$:
                          11545 ;src/main.c:2160: else if(dos==5){
   9573 DD 7E FD      [19]11546 	ld	a,-3 (ix)
   9576 B7            [ 4]11547 	or	a, a
   9577 CA 5F 97      [10]11548 	jp	Z,00273$
                          11549 ;src/main.c:2161: if(validarColision(1,pro,0)==1 && validarColision(0,pro,0)==1 && pro->x>3){
   957A AF            [ 4]11550 	xor	a, a
   957B F5            [11]11551 	push	af
   957C 33            [ 6]11552 	inc	sp
   957D DD 6E 07      [19]11553 	ld	l,7 (ix)
   9580 DD 66 08      [19]11554 	ld	h,8 (ix)
   9583 E5            [11]11555 	push	hl
   9584 3E 01         [ 7]11556 	ld	a,#0x01
   9586 F5            [11]11557 	push	af
   9587 33            [ 6]11558 	inc	sp
   9588 CD CF 5F      [17]11559 	call	_validarColision
   958B F1            [10]11560 	pop	af
   958C F1            [10]11561 	pop	af
   958D 2D            [ 4]11562 	dec	l
   958E C2 DE 96      [10]11563 	jp	NZ,00249$
   9591 AF            [ 4]11564 	xor	a, a
   9592 F5            [11]11565 	push	af
   9593 33            [ 6]11566 	inc	sp
   9594 DD 6E 07      [19]11567 	ld	l,7 (ix)
   9597 DD 66 08      [19]11568 	ld	h,8 (ix)
   959A E5            [11]11569 	push	hl
   959B AF            [ 4]11570 	xor	a, a
   959C F5            [11]11571 	push	af
   959D 33            [ 6]11572 	inc	sp
   959E CD CF 5F      [17]11573 	call	_validarColision
   95A1 F1            [10]11574 	pop	af
   95A2 F1            [10]11575 	pop	af
   95A3 2D            [ 4]11576 	dec	l
   95A4 C2 DE 96      [10]11577 	jp	NZ,00249$
   95A7 DD 6E F9      [19]11578 	ld	l,-7 (ix)
   95AA DD 66 FA      [19]11579 	ld	h,-6 (ix)
   95AD 4E            [ 7]11580 	ld	c,(hl)
   95AE 3E 03         [ 7]11581 	ld	a,#0x03
   95B0 91            [ 4]11582 	sub	a, c
   95B1 D2 DE 96      [10]11583 	jp	NC,00249$
                          11584 ;src/main.c:2162: if(pro->mira==M_arriba){
   95B4 DD 6E F6      [19]11585 	ld	l,-10 (ix)
   95B7 DD 66 F7      [19]11586 	ld	h,-9 (ix)
   95BA 7E            [ 7]11587 	ld	a,(hl)
   95BB D6 03         [ 7]11588 	sub	a, #0x03
   95BD C2 46 96      [10]11589 	jp	NZ,00235$
                          11590 ;src/main.c:2163: andando_entrar(M_izquierda, pro);
   95C0 DD 6E F9      [19]11591 	ld	l,-7 (ix)
   95C3 DD 66 FA      [19]11592 	ld	h,-6 (ix)
   95C6 E5            [11]11593 	push	hl
   95C7 3E 01         [ 7]11594 	ld	a,#0x01
   95C9 F5            [11]11595 	push	af
   95CA 33            [ 6]11596 	inc	sp
   95CB CD 6E 9C      [17]11597 	call	_andando_entrar
   95CE F1            [10]11598 	pop	af
   95CF 33            [ 6]11599 	inc	sp
                          11600 ;src/main.c:2164: andando_animar(M_izquierda, pro);
   95D0 DD 6E 07      [19]11601 	ld	l,7 (ix)
   95D3 DD 66 08      [19]11602 	ld	h,8 (ix)
   95D6 E5            [11]11603 	push	hl
   95D7 3E 01         [ 7]11604 	ld	a,#0x01
   95D9 F5            [11]11605 	push	af
   95DA 33            [ 6]11606 	inc	sp
   95DB CD 75 9B      [17]11607 	call	_andando_animar
   95DE F1            [10]11608 	pop	af
   95DF 33            [ 6]11609 	inc	sp
                          11610 ;src/main.c:2165: pro->y-=2;
   95E0 DD 6E FB      [19]11611 	ld	l,-5 (ix)
   95E3 DD 66 FC      [19]11612 	ld	h,-4 (ix)
   95E6 4E            [ 7]11613 	ld	c,(hl)
   95E7 0D            [ 4]11614 	dec	c
   95E8 0D            [ 4]11615 	dec	c
   95E9 DD 6E FB      [19]11616 	ld	l,-5 (ix)
   95EC DD 66 FC      [19]11617 	ld	h,-4 (ix)
   95EF 71            [ 7]11618 	ld	(hl),c
                          11619 ;src/main.c:2166: if(validarColision(0, pro,0))
   95F0 AF            [ 4]11620 	xor	a, a
   95F1 F5            [11]11621 	push	af
   95F2 33            [ 6]11622 	inc	sp
   95F3 DD 6E F9      [19]11623 	ld	l,-7 (ix)
   95F6 DD 66 FA      [19]11624 	ld	h,-6 (ix)
   95F9 E5            [11]11625 	push	hl
   95FA AF            [ 4]11626 	xor	a, a
   95FB F5            [11]11627 	push	af
   95FC 33            [ 6]11628 	inc	sp
   95FD CD CF 5F      [17]11629 	call	_validarColision
   9600 F1            [10]11630 	pop	af
   9601 F1            [10]11631 	pop	af
   9602 DD 75 F8      [19]11632 	ld	-8 (ix), l
   9605 7D            [ 4]11633 	ld	a, l
   9606 B7            [ 4]11634 	or	a, a
   9607 28 0F         [12]11635 	jr	Z,00227$
                          11636 ;src/main.c:2167: pro->x--;
   9609 DD 6E F9      [19]11637 	ld	l,-7 (ix)
   960C DD 66 FA      [19]11638 	ld	h,-6 (ix)
   960F 4E            [ 7]11639 	ld	c,(hl)
   9610 0D            [ 4]11640 	dec	c
   9611 DD 6E F9      [19]11641 	ld	l,-7 (ix)
   9614 DD 66 FA      [19]11642 	ld	h,-6 (ix)
   9617 71            [ 7]11643 	ld	(hl),c
   9618                   11644 00227$:
                          11645 ;src/main.c:2168: if(validarColision(0, pro,0))
   9618 AF            [ 4]11646 	xor	a, a
   9619 F5            [11]11647 	push	af
   961A 33            [ 6]11648 	inc	sp
   961B DD 6E F9      [19]11649 	ld	l,-7 (ix)
   961E DD 66 FA      [19]11650 	ld	h,-6 (ix)
   9621 E5            [11]11651 	push	hl
   9622 AF            [ 4]11652 	xor	a, a
   9623 F5            [11]11653 	push	af
   9624 33            [ 6]11654 	inc	sp
   9625 CD CF 5F      [17]11655 	call	_validarColision
   9628 F1            [10]11656 	pop	af
   9629 F1            [10]11657 	pop	af
   962A DD 75 F8      [19]11658 	ld	-8 (ix), l
   962D 7D            [ 4]11659 	ld	a, l
   962E B7            [ 4]11660 	or	a, a
   962F 28 0F         [12]11661 	jr	Z,00229$
                          11662 ;src/main.c:2169: pro->x--;
   9631 DD 6E F9      [19]11663 	ld	l,-7 (ix)
   9634 DD 66 FA      [19]11664 	ld	h,-6 (ix)
   9637 4E            [ 7]11665 	ld	c,(hl)
   9638 0D            [ 4]11666 	dec	c
   9639 DD 6E F9      [19]11667 	ld	l,-7 (ix)
   963C DD 66 FA      [19]11668 	ld	h,-6 (ix)
   963F 71            [ 7]11669 	ld	(hl),c
   9640                   11670 00229$:
                          11671 ;src/main.c:2171: return uno;
   9640 DD 6E F5      [19]11672 	ld	l,-11 (ix)
   9643 C3 61 97      [10]11673 	jp	00277$
   9646                   11674 00235$:
                          11675 ;src/main.c:2174: subiendo_entrar(M_arriba, pro);
   9646 DD 6E F9      [19]11676 	ld	l,-7 (ix)
   9649 DD 66 FA      [19]11677 	ld	h,-6 (ix)
   964C E5            [11]11678 	push	hl
   964D 3E 03         [ 7]11679 	ld	a,#0x03
   964F F5            [11]11680 	push	af
   9650 33            [ 6]11681 	inc	sp
   9651 CD 8B 9F      [17]11682 	call	_subiendo_entrar
   9654 F1            [10]11683 	pop	af
   9655 33            [ 6]11684 	inc	sp
                          11685 ;src/main.c:2175: arriba_animar(pro);
   9656 DD 6E 07      [19]11686 	ld	l,7 (ix)
   9659 DD 66 08      [19]11687 	ld	h,8 (ix)
   965C E5            [11]11688 	push	hl
   965D CD D0 9E      [17]11689 	call	_arriba_animar
   9660 F1            [10]11690 	pop	af
                          11691 ;src/main.c:2176: pro->x--;
   9661 DD 6E F9      [19]11692 	ld	l,-7 (ix)
   9664 DD 66 FA      [19]11693 	ld	h,-6 (ix)
   9667 4E            [ 7]11694 	ld	c,(hl)
   9668 0D            [ 4]11695 	dec	c
   9669 DD 6E F9      [19]11696 	ld	l,-7 (ix)
   966C DD 66 FA      [19]11697 	ld	h,-6 (ix)
   966F 71            [ 7]11698 	ld	(hl),c
                          11699 ;src/main.c:2177: if(validarColision(1, pro,0))
   9670 AF            [ 4]11700 	xor	a, a
   9671 F5            [11]11701 	push	af
   9672 33            [ 6]11702 	inc	sp
   9673 DD 6E F9      [19]11703 	ld	l,-7 (ix)
   9676 DD 66 FA      [19]11704 	ld	h,-6 (ix)
   9679 E5            [11]11705 	push	hl
   967A 3E 01         [ 7]11706 	ld	a,#0x01
   967C F5            [11]11707 	push	af
   967D 33            [ 6]11708 	inc	sp
   967E CD CF 5F      [17]11709 	call	_validarColision
   9681 F1            [10]11710 	pop	af
   9682 F1            [10]11711 	pop	af
   9683 DD 75 F8      [19]11712 	ld	-8 (ix), l
   9686 7D            [ 4]11713 	ld	a, l
   9687 B7            [ 4]11714 	or	a, a
   9688 28 1A         [12]11715 	jr	Z,00231$
                          11716 ;src/main.c:2178: pro->y-=2;
   968A DD 6E FB      [19]11717 	ld	l,-5 (ix)
   968D DD 66 FC      [19]11718 	ld	h,-4 (ix)
   9690 7E            [ 7]11719 	ld	a,(hl)
   9691 DD 77 F8      [19]11720 	ld	-8 (ix),a
   9694 DD 35 F8      [23]11721 	dec	-8 (ix)
   9697 DD 35 F8      [23]11722 	dec	-8 (ix)
   969A DD 6E FB      [19]11723 	ld	l,-5 (ix)
   969D DD 66 FC      [19]11724 	ld	h,-4 (ix)
   96A0 DD 7E F8      [19]11725 	ld	a,-8 (ix)
   96A3 77            [ 7]11726 	ld	(hl),a
   96A4                   11727 00231$:
                          11728 ;src/main.c:2179: if(validarColision(1, pro,0))
   96A4 AF            [ 4]11729 	xor	a, a
   96A5 F5            [11]11730 	push	af
   96A6 33            [ 6]11731 	inc	sp
   96A7 DD 6E F9      [19]11732 	ld	l,-7 (ix)
   96AA DD 66 FA      [19]11733 	ld	h,-6 (ix)
   96AD E5            [11]11734 	push	hl
   96AE 3E 01         [ 7]11735 	ld	a,#0x01
   96B0 F5            [11]11736 	push	af
   96B1 33            [ 6]11737 	inc	sp
   96B2 CD CF 5F      [17]11738 	call	_validarColision
   96B5 F1            [10]11739 	pop	af
   96B6 F1            [10]11740 	pop	af
   96B7 DD 75 F8      [19]11741 	ld	-8 (ix), l
   96BA 7D            [ 4]11742 	ld	a, l
   96BB B7            [ 4]11743 	or	a, a
   96BC 28 1A         [12]11744 	jr	Z,00233$
                          11745 ;src/main.c:2180: pro->y-=2;
   96BE DD 6E FB      [19]11746 	ld	l,-5 (ix)
   96C1 DD 66 FC      [19]11747 	ld	h,-4 (ix)
   96C4 7E            [ 7]11748 	ld	a,(hl)
   96C5 DD 77 F8      [19]11749 	ld	-8 (ix),a
   96C8 DD 35 F8      [23]11750 	dec	-8 (ix)
   96CB DD 35 F8      [23]11751 	dec	-8 (ix)
   96CE DD 6E FB      [19]11752 	ld	l,-5 (ix)
   96D1 DD 66 FC      [19]11753 	ld	h,-4 (ix)
   96D4 DD 7E F8      [19]11754 	ld	a,-8 (ix)
   96D7 77            [ 7]11755 	ld	(hl),a
   96D8                   11756 00233$:
                          11757 ;src/main.c:2182: return dos;
   96D8 DD 6E F2      [19]11758 	ld	l,-14 (ix)
   96DB C3 61 97      [10]11759 	jp	00277$
   96DE                   11760 00249$:
                          11761 ;src/main.c:2186: else if(validarColision(1,pro,0)==0 && validarColision(0,pro,0)==1){
   96DE AF            [ 4]11762 	xor	a, a
   96DF F5            [11]11763 	push	af
   96E0 33            [ 6]11764 	inc	sp
   96E1 DD 6E 07      [19]11765 	ld	l,7 (ix)
   96E4 DD 66 08      [19]11766 	ld	h,8 (ix)
   96E7 E5            [11]11767 	push	hl
   96E8 3E 01         [ 7]11768 	ld	a,#0x01
   96EA F5            [11]11769 	push	af
   96EB 33            [ 6]11770 	inc	sp
   96EC CD CF 5F      [17]11771 	call	_validarColision
   96EF F1            [10]11772 	pop	af
   96F0 F1            [10]11773 	pop	af
   96F1 7D            [ 4]11774 	ld	a,l
   96F2 B7            [ 4]11775 	or	a, a
   96F3 20 1A         [12]11776 	jr	NZ,00245$
   96F5 AF            [ 4]11777 	xor	a, a
   96F6 F5            [11]11778 	push	af
   96F7 33            [ 6]11779 	inc	sp
   96F8 DD 6E 07      [19]11780 	ld	l,7 (ix)
   96FB DD 66 08      [19]11781 	ld	h,8 (ix)
   96FE E5            [11]11782 	push	hl
   96FF AF            [ 4]11783 	xor	a, a
   9700 F5            [11]11784 	push	af
   9701 33            [ 6]11785 	inc	sp
   9702 CD CF 5F      [17]11786 	call	_validarColision
   9705 F1            [10]11787 	pop	af
   9706 F1            [10]11788 	pop	af
   9707 2D            [ 4]11789 	dec	l
   9708 20 05         [12]11790 	jr	NZ,00245$
                          11791 ;src/main.c:2187: return uno;
   970A DD 6E F5      [19]11792 	ld	l,-11 (ix)
   970D 18 52         [12]11793 	jr	00277$
   970F                   11794 00245$:
                          11795 ;src/main.c:2189: else if(validarColision(1,pro,0)==1 && validarColision(0,pro,0)==0){
   970F AF            [ 4]11796 	xor	a, a
   9710 F5            [11]11797 	push	af
   9711 33            [ 6]11798 	inc	sp
   9712 DD 6E 07      [19]11799 	ld	l,7 (ix)
   9715 DD 66 08      [19]11800 	ld	h,8 (ix)
   9718 E5            [11]11801 	push	hl
   9719 3E 01         [ 7]11802 	ld	a,#0x01
   971B F5            [11]11803 	push	af
   971C 33            [ 6]11804 	inc	sp
   971D CD CF 5F      [17]11805 	call	_validarColision
   9720 F1            [10]11806 	pop	af
   9721 F1            [10]11807 	pop	af
   9722 2D            [ 4]11808 	dec	l
   9723 20 1B         [12]11809 	jr	NZ,00241$
   9725 AF            [ 4]11810 	xor	a, a
   9726 F5            [11]11811 	push	af
   9727 33            [ 6]11812 	inc	sp
   9728 DD 6E 07      [19]11813 	ld	l,7 (ix)
   972B DD 66 08      [19]11814 	ld	h,8 (ix)
   972E E5            [11]11815 	push	hl
   972F AF            [ 4]11816 	xor	a, a
   9730 F5            [11]11817 	push	af
   9731 33            [ 6]11818 	inc	sp
   9732 CD CF 5F      [17]11819 	call	_validarColision
   9735 F1            [10]11820 	pop	af
   9736 F1            [10]11821 	pop	af
   9737 7D            [ 4]11822 	ld	a,l
   9738 B7            [ 4]11823 	or	a, a
   9739 20 05         [12]11824 	jr	NZ,00241$
                          11825 ;src/main.c:2190: return dos;
   973B DD 6E F2      [19]11826 	ld	l,-14 (ix)
   973E 18 21         [12]11827 	jr	00277$
   9740                   11828 00241$:
                          11829 ;src/main.c:2192: else if(validarColision(0,pro,0)==1){
   9740 AF            [ 4]11830 	xor	a, a
   9741 F5            [11]11831 	push	af
   9742 33            [ 6]11832 	inc	sp
   9743 DD 6E 07      [19]11833 	ld	l,7 (ix)
   9746 DD 66 08      [19]11834 	ld	h,8 (ix)
   9749 E5            [11]11835 	push	hl
   974A AF            [ 4]11836 	xor	a, a
   974B F5            [11]11837 	push	af
   974C 33            [ 6]11838 	inc	sp
   974D CD CF 5F      [17]11839 	call	_validarColision
   9750 F1            [10]11840 	pop	af
   9751 F1            [10]11841 	pop	af
   9752 2D            [ 4]11842 	dec	l
   9753 20 05         [12]11843 	jr	NZ,00238$
                          11844 ;src/main.c:2193: return uno;
   9755 DD 6E F5      [19]11845 	ld	l,-11 (ix)
   9758 18 07         [12]11846 	jr	00277$
   975A                   11847 00238$:
                          11848 ;src/main.c:2196: return dos;
   975A DD 6E F2      [19]11849 	ld	l,-14 (ix)
   975D 18 02         [12]11850 	jr	00277$
                          11851 ;src/main.c:2200: }
   975F                   11852 00273$:
                          11853 ;src/main.c:2206: return 0;
   975F 2E 00         [ 7]11854 	ld	l,#0x00
   9761                   11855 00277$:
   9761 DD F9         [10]11856 	ld	sp, ix
   9763 DD E1         [14]11857 	pop	ix
   9765 C9            [10]11858 	ret
                          11859 ;src/main.c:2209: u8 noChocar(){
                          11860 ;	---------------------------------
                          11861 ; Function noChocar
                          11862 ; ---------------------------------
   9766                   11863 _noChocar::
                          11864 ;src/main.c:2210: if(prota.y<protaDos.y+15 && prota.y>protaDos.y-15 && prota.x>protaDos.x-6 && prota.x<protaDos.x+6){
   9766 21 55 4F      [10]11865 	ld	hl, #_prota + 1
   9769 5E            [ 7]11866 	ld	e,(hl)
   976A 21 72 4F      [10]11867 	ld	hl, #_protaDos + 1
   976D 4E            [ 7]11868 	ld	c,(hl)
   976E 06 00         [ 7]11869 	ld	b,#0x00
   9770 21 0F 00      [10]11870 	ld	hl,#0x000F
   9773 09            [11]11871 	add	hl,bc
   9774 16 00         [ 7]11872 	ld	d,#0x00
   9776 7B            [ 4]11873 	ld	a,e
   9777 95            [ 4]11874 	sub	a, l
   9778 7A            [ 4]11875 	ld	a,d
   9779 9C            [ 4]11876 	sbc	a, h
   977A E2 7F 97      [10]11877 	jp	PO, 00124$
   977D EE 80         [ 7]11878 	xor	a, #0x80
   977F                   11879 00124$:
   977F F2 C9 97      [10]11880 	jp	P,00102$
   9782 79            [ 4]11881 	ld	a,c
   9783 C6 F1         [ 7]11882 	add	a,#0xF1
   9785 4F            [ 4]11883 	ld	c,a
   9786 78            [ 4]11884 	ld	a,b
   9787 CE FF         [ 7]11885 	adc	a,#0xFF
   9789 47            [ 4]11886 	ld	b,a
   978A 79            [ 4]11887 	ld	a,c
   978B 93            [ 4]11888 	sub	a, e
   978C 78            [ 4]11889 	ld	a,b
   978D 9A            [ 4]11890 	sbc	a, d
   978E E2 93 97      [10]11891 	jp	PO, 00125$
   9791 EE 80         [ 7]11892 	xor	a, #0x80
   9793                   11893 00125$:
   9793 F2 C9 97      [10]11894 	jp	P,00102$
   9796 21 54 4F      [10]11895 	ld	hl, #_prota + 0
   9799 4E            [ 7]11896 	ld	c,(hl)
   979A 21 71 4F      [10]11897 	ld	hl, #_protaDos + 0
   979D 5E            [ 7]11898 	ld	e,(hl)
   979E 16 00         [ 7]11899 	ld	d,#0x00
   97A0 7B            [ 4]11900 	ld	a,e
   97A1 C6 FA         [ 7]11901 	add	a,#0xFA
   97A3 6F            [ 4]11902 	ld	l,a
   97A4 7A            [ 4]11903 	ld	a,d
   97A5 CE FF         [ 7]11904 	adc	a,#0xFF
   97A7 67            [ 4]11905 	ld	h,a
   97A8 06 00         [ 7]11906 	ld	b,#0x00
   97AA 7D            [ 4]11907 	ld	a,l
   97AB 91            [ 4]11908 	sub	a, c
   97AC 7C            [ 4]11909 	ld	a,h
   97AD 98            [ 4]11910 	sbc	a, b
   97AE E2 B3 97      [10]11911 	jp	PO, 00126$
   97B1 EE 80         [ 7]11912 	xor	a, #0x80
   97B3                   11913 00126$:
   97B3 F2 C9 97      [10]11914 	jp	P,00102$
   97B6 21 06 00      [10]11915 	ld	hl,#0x0006
   97B9 19            [11]11916 	add	hl,de
   97BA 79            [ 4]11917 	ld	a,c
   97BB 95            [ 4]11918 	sub	a, l
   97BC 78            [ 4]11919 	ld	a,b
   97BD 9C            [ 4]11920 	sbc	a, h
   97BE E2 C3 97      [10]11921 	jp	PO, 00127$
   97C1 EE 80         [ 7]11922 	xor	a, #0x80
   97C3                   11923 00127$:
   97C3 F2 C9 97      [10]11924 	jp	P,00102$
                          11925 ;src/main.c:2211: return SI;
   97C6 2E 01         [ 7]11926 	ld	l,#0x01
   97C8 C9            [10]11927 	ret
   97C9                   11928 00102$:
                          11929 ;src/main.c:2213: return NO;
   97C9 2E 00         [ 7]11930 	ld	l,#0x00
   97CB C9            [10]11931 	ret
                          11932 ;src/main.c:2225: void quieto_entrar(u8 mirar, TProta * pro) {
                          11933 ;	---------------------------------
                          11934 ; Function quieto_entrar
                          11935 ; ---------------------------------
   97CC                   11936 _quieto_entrar::
                          11937 ;src/main.c:2227: case M_derecha: pro->estado = ST_quieto; break; // Nada que hacer
   97CC 21 03 00      [10]11938 	ld	hl, #3
   97CF 39            [11]11939 	add	hl, sp
   97D0 4E            [ 7]11940 	ld	c, (hl)
   97D1 23            [ 6]11941 	inc	hl
   97D2 46            [ 7]11942 	ld	b, (hl)
                          11943 ;src/main.c:2226: switch(mirar) {
   97D3 3E 03         [ 7]11944 	ld	a,#0x03
   97D5 FD 21 02 00   [14]11945 	ld	iy,#2
   97D9 FD 39         [15]11946 	add	iy,sp
   97DB FD 96 00      [19]11947 	sub	a, 0 (iy)
   97DE 38 29         [12]11948 	jr	C,00105$
                          11949 ;src/main.c:2227: case M_derecha: pro->estado = ST_quieto; break; // Nada que hacer
   97E0 21 08 00      [10]11950 	ld	hl,#0x0008
   97E3 09            [11]11951 	add	hl,bc
                          11952 ;src/main.c:2226: switch(mirar) {
   97E4 E5            [11]11953 	push	hl
   97E5 FD 5E 00      [19]11954 	ld	e,0 (iy)
   97E8 16 00         [ 7]11955 	ld	d,#0x00
   97EA 21 F1 97      [10]11956 	ld	hl,#00112$
   97ED 19            [11]11957 	add	hl,de
   97EE 19            [11]11958 	add	hl,de
                          11959 ;src/main.c:2227: case M_derecha: pro->estado = ST_quieto; break; // Nada que hacer
   97EF D1            [10]11960 	pop	de
   97F0 E9            [ 4]11961 	jp	(hl)
   97F1                   11962 00112$:
   97F1 18 06         [12]11963 	jr	00101$
   97F3 18 08         [12]11964 	jr	00102$
   97F5 18 0F         [12]11965 	jr	00104$
   97F7 18 08         [12]11966 	jr	00103$
   97F9                   11967 00101$:
   97F9 AF            [ 4]11968 	xor	a, a
   97FA 12            [ 7]11969 	ld	(de),a
   97FB 18 0C         [12]11970 	jr	00105$
                          11971 ;src/main.c:2228: case M_izquierda: pro->estado = ST_quieto; break;
   97FD                   11972 00102$:
   97FD AF            [ 4]11973 	xor	a, a
   97FE 12            [ 7]11974 	ld	(de),a
   97FF 18 08         [12]11975 	jr	00105$
                          11976 ;src/main.c:2229: case M_arriba: pro->estado = ST_quietoArri;   break;
   9801                   11977 00103$:
   9801 3E 02         [ 7]11978 	ld	a,#0x02
   9803 12            [ 7]11979 	ld	(de),a
   9804 18 03         [12]11980 	jr	00105$
                          11981 ;src/main.c:2230: case M_abajo: pro->estado = ST_quietoAbaj;   break;
   9806                   11982 00104$:
   9806 3E 01         [ 7]11983 	ld	a,#0x01
   9808 12            [ 7]11984 	ld	(de),a
                          11985 ;src/main.c:2231: }
   9809                   11986 00105$:
                          11987 ;src/main.c:2232: pro->mover  = SI;
   9809 21 07 00      [10]11988 	ld	hl,#0x0007
   980C 09            [11]11989 	add	hl,bc
   980D 36 01         [10]11990 	ld	(hl),#0x01
   980F C9            [10]11991 	ret
                          11992 ;src/main.c:2245: void disparoArriba_entrar(TProta * pro){
                          11993 ;	---------------------------------
                          11994 ; Function disparoArriba_entrar
                          11995 ; ---------------------------------
   9810                   11996 _disparoArriba_entrar::
                          11997 ;src/main.c:2246: pro->nframe = 0;
   9810 D1            [10]11998 	pop	de
   9811 C1            [10]11999 	pop	bc
   9812 C5            [11]12000 	push	bc
   9813 D5            [11]12001 	push	de
   9814 21 0B 00      [10]12002 	ld	hl,#0x000B
   9817 09            [11]12003 	add	hl,bc
   9818 36 00         [10]12004 	ld	(hl),#0x00
                          12005 ;src/main.c:2247: pro->estado = ST_atacandoSub;
   981A 21 08 00      [10]12006 	ld	hl,#0x0008
   981D 09            [11]12007 	add	hl,bc
   981E 36 06         [10]12008 	ld	(hl),#0x06
                          12009 ;src/main.c:2248: pro->mira = M_arriba;
   9820 21 0C 00      [10]12010 	ld	hl,#0x000C
   9823 09            [11]12011 	add	hl,bc
   9824 36 03         [10]12012 	ld	(hl),#0x03
                          12013 ;src/main.c:2249: pro->mover = SI;
   9826 21 07 00      [10]12014 	ld	hl,#0x0007
   9829 09            [11]12015 	add	hl,bc
   982A 36 01         [10]12016 	ld	(hl),#0x01
   982C C9            [10]12017 	ret
                          12018 ;src/main.c:2258: void disparoAbajo_entrar(TProta * pro){
                          12019 ;	---------------------------------
                          12020 ; Function disparoAbajo_entrar
                          12021 ; ---------------------------------
   982D                   12022 _disparoAbajo_entrar::
                          12023 ;src/main.c:2259: pro->nframe = 0;
   982D D1            [10]12024 	pop	de
   982E C1            [10]12025 	pop	bc
   982F C5            [11]12026 	push	bc
   9830 D5            [11]12027 	push	de
   9831 21 0B 00      [10]12028 	ld	hl,#0x000B
   9834 09            [11]12029 	add	hl,bc
   9835 36 00         [10]12030 	ld	(hl),#0x00
                          12031 ;src/main.c:2260: pro->estado = ST_atacandoBaj;
   9837 21 08 00      [10]12032 	ld	hl,#0x0008
   983A 09            [11]12033 	add	hl,bc
   983B 36 05         [10]12034 	ld	(hl),#0x05
                          12035 ;src/main.c:2261: pro->mira = M_abajo;
   983D 21 0C 00      [10]12036 	ld	hl,#0x000C
   9840 09            [11]12037 	add	hl,bc
   9841 36 02         [10]12038 	ld	(hl),#0x02
                          12039 ;src/main.c:2262: pro->mover = SI;
   9843 21 07 00      [10]12040 	ld	hl,#0x0007
   9846 09            [11]12041 	add	hl,bc
   9847 36 01         [10]12042 	ld	(hl),#0x01
   9849 C9            [10]12043 	ret
                          12044 ;src/main.c:2271: void disparo_entrar(u8 mirar, TProta * pro){
                          12045 ;	---------------------------------
                          12046 ; Function disparo_entrar
                          12047 ; ---------------------------------
   984A                   12048 _disparo_entrar::
                          12049 ;src/main.c:2272: pro->nframe = 0;
   984A 21 03 00      [10]12050 	ld	hl, #3
   984D 39            [11]12051 	add	hl, sp
   984E 4E            [ 7]12052 	ld	c, (hl)
   984F 23            [ 6]12053 	inc	hl
   9850 46            [ 7]12054 	ld	b, (hl)
   9851 21 0B 00      [10]12055 	ld	hl,#0x000B
   9854 09            [11]12056 	add	hl,bc
   9855 36 00         [10]12057 	ld	(hl),#0x00
                          12058 ;src/main.c:2273: pro->estado = ST_atacando;
   9857 21 08 00      [10]12059 	ld	hl,#0x0008
   985A 09            [11]12060 	add	hl,bc
   985B 36 04         [10]12061 	ld	(hl),#0x04
                          12062 ;src/main.c:2274: pro->mira = mirar;
   985D 21 0C 00      [10]12063 	ld	hl,#0x000C
   9860 09            [11]12064 	add	hl,bc
   9861 FD 21 02 00   [14]12065 	ld	iy,#2
   9865 FD 39         [15]12066 	add	iy,sp
   9867 FD 7E 00      [19]12067 	ld	a,0 (iy)
   986A 77            [ 7]12068 	ld	(hl),a
                          12069 ;src/main.c:2275: pro->mover = SI;
   986B 21 07 00      [10]12070 	ld	hl,#0x0007
   986E 09            [11]12071 	add	hl,bc
   986F 36 01         [10]12072 	ld	(hl),#0x01
   9871 C9            [10]12073 	ret
                          12074 ;src/main.c:2284: void disparo_animar(u8 mirar, TProta * pro){
                          12075 ;	---------------------------------
                          12076 ; Function disparo_animar
                          12077 ; ---------------------------------
   9872                   12078 _disparo_animar::
                          12079 ;src/main.c:2285: pro->mira = mirar;
   9872 21 03 00      [10]12080 	ld	hl, #3
   9875 39            [11]12081 	add	hl, sp
   9876 4E            [ 7]12082 	ld	c, (hl)
   9877 23            [ 6]12083 	inc	hl
   9878 46            [ 7]12084 	ld	b, (hl)
   9879 21 0C 00      [10]12085 	ld	hl,#0x000C
   987C 09            [11]12086 	add	hl,bc
   987D FD 21 02 00   [14]12087 	ld	iy,#2
   9881 FD 39         [15]12088 	add	iy,sp
   9883 FD 7E 00      [19]12089 	ld	a,0 (iy)
   9886 77            [ 7]12090 	ld	(hl),a
                          12091 ;src/main.c:2286: if(++pro->nframe == ATACAR_FRAMES*ANIM_PAUSA)
   9887 21 0B 00      [10]12092 	ld	hl,#0x000B
   988A 09            [11]12093 	add	hl,bc
   988B 7E            [ 7]12094 	ld	a,(hl)
   988C 3C            [ 4]12095 	inc	a
   988D 77            [ 7]12096 	ld	(hl),a
                          12097 ;src/main.c:2287: pro->nframe = 0;
   988E D6 04         [ 7]12098 	sub	a,#0x04
   9890 C0            [11]12099 	ret	NZ
   9891 77            [ 7]12100 	ld	(hl),a
   9892 C9            [10]12101 	ret
                          12102 ;src/main.c:2295: u8 queHayPulsado(u8 num){
                          12103 ;	---------------------------------
                          12104 ; Function queHayPulsado
                          12105 ; ---------------------------------
   9893                   12106 _queHayPulsado::
   9893 DD E5         [15]12107 	push	ix
   9895 DD 21 00 00   [14]12108 	ld	ix,#0
   9899 DD 39         [15]12109 	add	ix,sp
                          12110 ;src/main.c:2296: u8 k=0;
   989B 16 00         [ 7]12111 	ld	d,#0x00
                          12112 ;src/main.c:2297: if(num==0){
   989D DD 7E 04      [19]12113 	ld	a,4 (ix)
   98A0 B7            [ 4]12114 	or	a, a
   98A1 20 52         [12]12115 	jr	NZ,00110$
                          12116 ;src/main.c:2298: switch(prota.controles){
   98A3 01 54 4F      [10]12117 	ld	bc,#_prota+0
   98A6 21 6E 4F      [10]12118 	ld	hl, #_prota + 26
   98A9 5E            [ 7]12119 	ld	e,(hl)
   98AA 3E 02         [ 7]12120 	ld	a,#0x02
   98AC 93            [ 4]12121 	sub	a, e
   98AD DA 49 99      [10]12122 	jp	C,00111$
   98B0 16 00         [ 7]12123 	ld	d,#0x00
   98B2 21 B8 98      [10]12124 	ld	hl,#00126$
   98B5 19            [11]12125 	add	hl,de
   98B6 19            [11]12126 	add	hl,de
                          12127 ;src/main.c:2299: case 0:{ k = compruebaTeclas(keysWASD, 5, &prota); break;}
   98B7 E9            [ 4]12128 	jp	(hl)
   98B8                   12129 00126$:
   98B8 18 04         [12]12130 	jr	00101$
   98BA 18 15         [12]12131 	jr	00102$
   98BC 18 25         [12]12132 	jr	00103$
   98BE                   12133 00101$:
   98BE C5            [11]12134 	push	bc
   98BF 3E 05         [ 7]12135 	ld	a,#0x05
   98C1 F5            [11]12136 	push	af
   98C2 33            [ 6]12137 	inc	sp
   98C3 21 BB 35      [10]12138 	ld	hl,#_keysWASD
   98C6 E5            [11]12139 	push	hl
   98C7 CD 55 8D      [17]12140 	call	_compruebaTeclas
   98CA F1            [10]12141 	pop	af
   98CB F1            [10]12142 	pop	af
   98CC 33            [ 6]12143 	inc	sp
   98CD 55            [ 4]12144 	ld	d,l
   98CE C3 49 99      [10]12145 	jp	00111$
                          12146 ;src/main.c:2300: case 1:{ k = compruebaTeclas(keysNumpad, 5, &prota); break;}
   98D1                   12147 00102$:
   98D1 C5            [11]12148 	push	bc
   98D2 3E 05         [ 7]12149 	ld	a,#0x05
   98D4 F5            [11]12150 	push	af
   98D5 33            [ 6]12151 	inc	sp
   98D6 21 C5 35      [10]12152 	ld	hl,#_keysNumpad
   98D9 E5            [11]12153 	push	hl
   98DA CD 55 8D      [17]12154 	call	_compruebaTeclas
   98DD F1            [10]12155 	pop	af
   98DE F1            [10]12156 	pop	af
   98DF 33            [ 6]12157 	inc	sp
   98E0 55            [ 4]12158 	ld	d,l
   98E1 18 66         [12]12159 	jr	00111$
                          12160 ;src/main.c:2301: case 2:{ k = compruebaTeclas(keysJoy0, 5, &prota); break;}
   98E3                   12161 00103$:
   98E3 C5            [11]12162 	push	bc
   98E4 3E 05         [ 7]12163 	ld	a,#0x05
   98E6 F5            [11]12164 	push	af
   98E7 33            [ 6]12165 	inc	sp
   98E8 21 CF 35      [10]12166 	ld	hl,#_keysJoy0
   98EB E5            [11]12167 	push	hl
   98EC CD 55 8D      [17]12168 	call	_compruebaTeclas
   98EF F1            [10]12169 	pop	af
   98F0 F1            [10]12170 	pop	af
   98F1 33            [ 6]12171 	inc	sp
   98F2 55            [ 4]12172 	ld	d,l
                          12173 ;src/main.c:2302: }
   98F3 18 54         [12]12174 	jr	00111$
   98F5                   12175 00110$:
                          12176 ;src/main.c:2305: switch(protaDos.controles){
   98F5 21 8B 4F      [10]12177 	ld	hl, #_protaDos + 26
   98F8 5E            [ 7]12178 	ld	e,(hl)
   98F9 3E 02         [ 7]12179 	ld	a,#0x02
   98FB 93            [ 4]12180 	sub	a, e
   98FC 38 4B         [12]12181 	jr	C,00111$
   98FE 16 00         [ 7]12182 	ld	d,#0x00
   9900 21 06 99      [10]12183 	ld	hl,#00127$
   9903 19            [11]12184 	add	hl,de
   9904 19            [11]12185 	add	hl,de
                          12186 ;src/main.c:2306: case 0: {k = compruebaTeclas(keysWASD, 5, &protaDos); break;}
   9905 E9            [ 4]12187 	jp	(hl)
   9906                   12188 00127$:
   9906 18 04         [12]12189 	jr	00105$
   9908 18 17         [12]12190 	jr	00106$
   990A 18 2A         [12]12191 	jr	00107$
   990C                   12192 00105$:
   990C 21 71 4F      [10]12193 	ld	hl,#_protaDos
   990F E5            [11]12194 	push	hl
   9910 3E 05         [ 7]12195 	ld	a,#0x05
   9912 F5            [11]12196 	push	af
   9913 33            [ 6]12197 	inc	sp
   9914 21 BB 35      [10]12198 	ld	hl,#_keysWASD
   9917 E5            [11]12199 	push	hl
   9918 CD 55 8D      [17]12200 	call	_compruebaTeclas
   991B F1            [10]12201 	pop	af
   991C F1            [10]12202 	pop	af
   991D 33            [ 6]12203 	inc	sp
   991E 55            [ 4]12204 	ld	d,l
   991F 18 28         [12]12205 	jr	00111$
                          12206 ;src/main.c:2307: case 1: {k = compruebaTeclas(keysNumpad, 5, &protaDos); break;}
   9921                   12207 00106$:
   9921 21 71 4F      [10]12208 	ld	hl,#_protaDos
   9924 E5            [11]12209 	push	hl
   9925 3E 05         [ 7]12210 	ld	a,#0x05
   9927 F5            [11]12211 	push	af
   9928 33            [ 6]12212 	inc	sp
   9929 21 C5 35      [10]12213 	ld	hl,#_keysNumpad
   992C E5            [11]12214 	push	hl
   992D CD 55 8D      [17]12215 	call	_compruebaTeclas
   9930 F1            [10]12216 	pop	af
   9931 F1            [10]12217 	pop	af
   9932 33            [ 6]12218 	inc	sp
   9933 55            [ 4]12219 	ld	d,l
   9934 18 13         [12]12220 	jr	00111$
                          12221 ;src/main.c:2308: case 2: {k = compruebaTeclas(keysJoy0, 5, &protaDos); break;}
   9936                   12222 00107$:
   9936 21 71 4F      [10]12223 	ld	hl,#_protaDos
   9939 E5            [11]12224 	push	hl
   993A 3E 05         [ 7]12225 	ld	a,#0x05
   993C F5            [11]12226 	push	af
   993D 33            [ 6]12227 	inc	sp
   993E 21 CF 35      [10]12228 	ld	hl,#_keysJoy0
   9941 E5            [11]12229 	push	hl
   9942 CD 55 8D      [17]12230 	call	_compruebaTeclas
   9945 F1            [10]12231 	pop	af
   9946 F1            [10]12232 	pop	af
   9947 33            [ 6]12233 	inc	sp
   9948 55            [ 4]12234 	ld	d,l
                          12235 ;src/main.c:2309: }
   9949                   12236 00111$:
                          12237 ;src/main.c:2311: return k;
   9949 6A            [ 4]12238 	ld	l,d
   994A DD E1         [14]12239 	pop	ix
   994C C9            [10]12240 	ret
                          12241 ;src/main.c:2314: void atacando(TProta * pro){
                          12242 ;	---------------------------------
                          12243 ; Function atacando
                          12244 ; ---------------------------------
   994D                   12245 _atacando::
   994D DD E5         [15]12246 	push	ix
   994F DD 21 00 00   [14]12247 	ld	ix,#0
   9953 DD 39         [15]12248 	add	ix,sp
   9955 F5            [11]12249 	push	af
   9956 F5            [11]12250 	push	af
                          12251 ;src/main.c:2315: u8 k = queHayPulsado(pro->soy-1);
   9957 DD 4E 04      [19]12252 	ld	c,4 (ix)
   995A DD 46 05      [19]12253 	ld	b,5 (ix)
   995D C5            [11]12254 	push	bc
   995E FD E1         [14]12255 	pop	iy
   9960 FD 56 1B      [19]12256 	ld	d,27 (iy)
   9963 15            [ 4]12257 	dec	d
   9964 C5            [11]12258 	push	bc
   9965 D5            [11]12259 	push	de
   9966 33            [ 6]12260 	inc	sp
   9967 CD 93 98      [17]12261 	call	_queHayPulsado
   996A 33            [ 6]12262 	inc	sp
   996B 5D            [ 4]12263 	ld	e,l
   996C C1            [10]12264 	pop	bc
                          12265 ;src/main.c:2317: switch(k) {
   996D 3E 05         [ 7]12266 	ld	a,#0x05
   996F 93            [ 4]12267 	sub	a, e
   9970 DA 48 9A      [10]12268 	jp	C,00114$
                          12269 ;src/main.c:2318: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
   9973 FD 21 0C 00   [14]12270 	ld	iy,#0x000C
   9977 FD 09         [15]12271 	add	iy, bc
                          12272 ;src/main.c:2317: switch(k) {
   9979 16 00         [ 7]12273 	ld	d,#0x00
   997B 21 82 99      [10]12274 	ld	hl,#00137$
   997E 19            [11]12275 	add	hl,de
   997F 19            [11]12276 	add	hl,de
   9980 19            [11]12277 	add	hl,de
   9981 E9            [ 4]12278 	jp	(hl)
   9982                   12279 00137$:
   9982 C3 94 99      [10]12280 	jp	00101$
   9985 C3 A4 99      [10]12281 	jp	00102$
   9988 C3 13 9A      [10]12282 	jp	00110$
   998B C3 20 9A      [10]12283 	jp	00111$
   998E C3 2E 9A      [10]12284 	jp	00112$
   9991 C3 3C 9A      [10]12285 	jp	00113$
                          12286 ;src/main.c:2318: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
   9994                   12287 00101$:
   9994 FD 56 00      [19]12288 	ld	d, 0 (iy)
   9997 C5            [11]12289 	push	bc
   9998 C5            [11]12290 	push	bc
   9999 D5            [11]12291 	push	de
   999A 33            [ 6]12292 	inc	sp
   999B CD CC 97      [17]12293 	call	_quieto_entrar
   999E F1            [10]12294 	pop	af
   999F 33            [ 6]12295 	inc	sp
   99A0 C1            [10]12296 	pop	bc
   99A1 C3 48 9A      [10]12297 	jp	00114$
                          12298 ;src/main.c:2319: case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
   99A4                   12299 00102$:
   99A4 21 15 00      [10]12300 	ld	hl,#0x0015
   99A7 09            [11]12301 	add	hl,bc
   99A8 DD 75 FE      [19]12302 	ld	-2 (ix),l
   99AB DD 74 FF      [19]12303 	ld	-1 (ix),h
   99AE DD 6E FE      [19]12304 	ld	l,-2 (ix)
   99B1 DD 66 FF      [19]12305 	ld	h,-1 (ix)
   99B4 5E            [ 7]12306 	ld	e,(hl)
                          12307 ;src/main.c:2323: pro->contadorAtaque = 0;
   99B5 21 17 00      [10]12308 	ld	hl,#0x0017
   99B8 09            [11]12309 	add	hl,bc
   99B9 E3            [19]12310 	ex	(sp), hl
                          12311 ;src/main.c:2319: case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
   99BA 7B            [ 4]12312 	ld	a,e
   99BB B7            [ 4]12313 	or	a, a
   99BC 20 2B         [12]12314 	jr	NZ,00104$
   99BE 69            [ 4]12315 	ld	l, c
   99BF 60            [ 4]12316 	ld	h, b
   99C0 11 14 00      [10]12317 	ld	de, #0x0014
   99C3 19            [11]12318 	add	hl, de
   99C4 7E            [ 7]12319 	ld	a,(hl)
   99C5 B7            [ 4]12320 	or	a, a
   99C6 28 21         [12]12321 	jr	Z,00104$
   99C8 21 16 00      [10]12322 	ld	hl,#0x0016
   99CB 09            [11]12323 	add	hl,bc
   99CC 5E            [ 7]12324 	ld	e,(hl)
   99CD 3E 1E         [ 7]12325 	ld	a,#0x1E
   99CF 93            [ 4]12326 	sub	a, e
   99D0 30 17         [12]12327 	jr	NC,00104$
                          12328 ;src/main.c:2320: pro->tiempoDisp=1;
   99D2 36 01         [10]12329 	ld	(hl),#0x01
                          12330 ;src/main.c:2321: pro->miraAtacando = pro->mira;
   99D4 21 18 00      [10]12331 	ld	hl,#0x0018
   99D7 09            [11]12332 	add	hl,bc
   99D8 EB            [ 4]12333 	ex	de,hl
   99D9 FD 7E 00      [19]12334 	ld	a, 0 (iy)
   99DC 12            [ 7]12335 	ld	(de),a
                          12336 ;src/main.c:2322: pro->disparando=SI;
   99DD DD 6E FE      [19]12337 	ld	l,-2 (ix)
   99E0 DD 66 FF      [19]12338 	ld	h,-1 (ix)
   99E3 36 01         [10]12339 	ld	(hl),#0x01
                          12340 ;src/main.c:2323: pro->contadorAtaque = 0;
   99E5 E1            [10]12341 	pop	hl
   99E6 E5            [11]12342 	push	hl
   99E7 36 00         [10]12343 	ld	(hl),#0x00
   99E9                   12344 00104$:
                          12345 ;src/main.c:2326: if(pro->contadorAtaque < 4){
   99E9 E1            [10]12346 	pop	hl
   99EA E5            [11]12347 	push	hl
   99EB 5E            [ 7]12348 	ld	e,(hl)
                          12349 ;src/main.c:2318: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
   99EC FD 56 00      [19]12350 	ld	d, 0 (iy)
                          12351 ;src/main.c:2326: if(pro->contadorAtaque < 4){
   99EF 7B            [ 4]12352 	ld	a,e
   99F0 D6 04         [ 7]12353 	sub	a, #0x04
   99F2 30 13         [12]12354 	jr	NC,00108$
                          12355 ;src/main.c:2327: disparo_animar(pro->mira, pro);
   99F4 C5            [11]12356 	push	bc
   99F5 C5            [11]12357 	push	bc
   99F6 D5            [11]12358 	push	de
   99F7 33            [ 6]12359 	inc	sp
   99F8 CD 72 98      [17]12360 	call	_disparo_animar
   99FB F1            [10]12361 	pop	af
   99FC 33            [ 6]12362 	inc	sp
   99FD C1            [10]12363 	pop	bc
                          12364 ;src/main.c:2328: pro->contadorAtaque++; 
   99FE E1            [10]12365 	pop	hl
   99FF E5            [11]12366 	push	hl
   9A00 5E            [ 7]12367 	ld	e,(hl)
   9A01 1C            [ 4]12368 	inc	e
   9A02 E1            [10]12369 	pop	hl
   9A03 E5            [11]12370 	push	hl
   9A04 73            [ 7]12371 	ld	(hl),e
   9A05 18 41         [12]12372 	jr	00114$
   9A07                   12373 00108$:
                          12374 ;src/main.c:2330: quieto_entrar(pro->mira, pro);
   9A07 C5            [11]12375 	push	bc
   9A08 C5            [11]12376 	push	bc
   9A09 D5            [11]12377 	push	de
   9A0A 33            [ 6]12378 	inc	sp
   9A0B CD CC 97      [17]12379 	call	_quieto_entrar
   9A0E F1            [10]12380 	pop	af
   9A0F 33            [ 6]12381 	inc	sp
   9A10 C1            [10]12382 	pop	bc
                          12383 ;src/main.c:2332: break;
   9A11 18 35         [12]12384 	jr	00114$
                          12385 ;src/main.c:2333: case 2: andando_entrar(M_derecha, pro); break;
   9A13                   12386 00110$:
   9A13 C5            [11]12387 	push	bc
   9A14 C5            [11]12388 	push	bc
   9A15 AF            [ 4]12389 	xor	a, a
   9A16 F5            [11]12390 	push	af
   9A17 33            [ 6]12391 	inc	sp
   9A18 CD 6E 9C      [17]12392 	call	_andando_entrar
   9A1B F1            [10]12393 	pop	af
   9A1C 33            [ 6]12394 	inc	sp
   9A1D C1            [10]12395 	pop	bc
   9A1E 18 28         [12]12396 	jr	00114$
                          12397 ;src/main.c:2334: case 3: andando_entrar(M_izquierda, pro); break;
   9A20                   12398 00111$:
   9A20 C5            [11]12399 	push	bc
   9A21 C5            [11]12400 	push	bc
   9A22 3E 01         [ 7]12401 	ld	a,#0x01
   9A24 F5            [11]12402 	push	af
   9A25 33            [ 6]12403 	inc	sp
   9A26 CD 6E 9C      [17]12404 	call	_andando_entrar
   9A29 F1            [10]12405 	pop	af
   9A2A 33            [ 6]12406 	inc	sp
   9A2B C1            [10]12407 	pop	bc
   9A2C 18 1A         [12]12408 	jr	00114$
                          12409 ;src/main.c:2335: case 4: bajando_entrar(M_izquierda, pro); break;
   9A2E                   12410 00112$:
   9A2E C5            [11]12411 	push	bc
   9A2F C5            [11]12412 	push	bc
   9A30 3E 01         [ 7]12413 	ld	a,#0x01
   9A32 F5            [11]12414 	push	af
   9A33 33            [ 6]12415 	inc	sp
   9A34 CD FD 9D      [17]12416 	call	_bajando_entrar
   9A37 F1            [10]12417 	pop	af
   9A38 33            [ 6]12418 	inc	sp
   9A39 C1            [10]12419 	pop	bc
   9A3A 18 0C         [12]12420 	jr	00114$
                          12421 ;src/main.c:2336: case 5: subiendo_entrar(M_arriba, pro); break;
   9A3C                   12422 00113$:
   9A3C C5            [11]12423 	push	bc
   9A3D C5            [11]12424 	push	bc
   9A3E 3E 03         [ 7]12425 	ld	a,#0x03
   9A40 F5            [11]12426 	push	af
   9A41 33            [ 6]12427 	inc	sp
   9A42 CD 8B 9F      [17]12428 	call	_subiendo_entrar
   9A45 F1            [10]12429 	pop	af
   9A46 33            [ 6]12430 	inc	sp
   9A47 C1            [10]12431 	pop	bc
                          12432 ;src/main.c:2337: }
   9A48                   12433 00114$:
                          12434 ;src/main.c:2338: pro->mover = SI;
   9A48 21 07 00      [10]12435 	ld	hl,#0x0007
   9A4B 09            [11]12436 	add	hl,bc
   9A4C 36 01         [10]12437 	ld	(hl),#0x01
   9A4E DD F9         [10]12438 	ld	sp, ix
   9A50 DD E1         [14]12439 	pop	ix
   9A52 C9            [10]12440 	ret
                          12441 ;src/main.c:2370: void moverDerecha(TProta * pro) { 
                          12442 ;	---------------------------------
                          12443 ; Function moverDerecha
                          12444 ; ---------------------------------
   9A53                   12445 _moverDerecha::
   9A53 DD E5         [15]12446 	push	ix
   9A55 DD 21 00 00   [14]12447 	ld	ix,#0
   9A59 DD 39         [15]12448 	add	ix,sp
   9A5B F5            [11]12449 	push	af
   9A5C 3B            [ 6]12450 	dec	sp
                          12451 ;src/main.c:2371: TProta * proOpuesto=&protaDos;
   9A5D 01 71 4F      [10]12452 	ld	bc,#_protaDos+0
                          12453 ;src/main.c:2372: if(pro->soy==2){
   9A60 DD 5E 04      [19]12454 	ld	e,4 (ix)
   9A63 DD 56 05      [19]12455 	ld	d,5 (ix)
   9A66 D5            [11]12456 	push	de
   9A67 FD E1         [14]12457 	pop	iy
   9A69 FD 7E 1B      [19]12458 	ld	a,27 (iy)
   9A6C D6 02         [ 7]12459 	sub	a, #0x02
   9A6E 20 03         [12]12460 	jr	NZ,00102$
                          12461 ;src/main.c:2373: proOpuesto=&prota;
   9A70 01 54 4F      [10]12462 	ld	bc,#_prota
   9A73                   12463 00102$:
                          12464 ;src/main.c:2376: if(pro->mira==M_derecha){
   9A73 21 0C 00      [10]12465 	ld	hl,#0x000C
   9A76 19            [11]12466 	add	hl,de
   9A77 DD 75 FE      [19]12467 	ld	-2 (ix),l
   9A7A DD 74 FF      [19]12468 	ld	-1 (ix),h
   9A7D DD 6E FE      [19]12469 	ld	l,-2 (ix)
   9A80 DD 66 FF      [19]12470 	ld	h,-1 (ix)
   9A83 7E            [ 7]12471 	ld	a,(hl)
   9A84 B7            [ 4]12472 	or	a, a
   9A85 20 5A         [12]12473 	jr	NZ,00113$
                          12474 ;src/main.c:2377: if(validarColision(2, pro,1))
   9A87 C5            [11]12475 	push	bc
   9A88 D5            [11]12476 	push	de
   9A89 3E 01         [ 7]12477 	ld	a,#0x01
   9A8B F5            [11]12478 	push	af
   9A8C 33            [ 6]12479 	inc	sp
   9A8D D5            [11]12480 	push	de
   9A8E 3E 02         [ 7]12481 	ld	a,#0x02
   9A90 F5            [11]12482 	push	af
   9A91 33            [ 6]12483 	inc	sp
   9A92 CD CF 5F      [17]12484 	call	_validarColision
   9A95 F1            [10]12485 	pop	af
   9A96 F1            [10]12486 	pop	af
   9A97 D1            [10]12487 	pop	de
   9A98 C1            [10]12488 	pop	bc
   9A99 7D            [ 4]12489 	ld	a,l
   9A9A B7            [ 4]12490 	or	a, a
   9A9B 28 44         [12]12491 	jr	Z,00113$
                          12492 ;src/main.c:2378: if(noChocar()==SI && proOpuesto->x>pro->x){
   9A9D C5            [11]12493 	push	bc
   9A9E D5            [11]12494 	push	de
   9A9F CD 66 97      [17]12495 	call	_noChocar
   9AA2 7D            [ 4]12496 	ld	a,l
   9AA3 D1            [10]12497 	pop	de
   9AA4 C1            [10]12498 	pop	bc
   9AA5 F5            [11]12499 	push	af
   9AA6 1A            [ 7]12500 	ld	a,(de)
   9AA7 DD 77 FD      [19]12501 	ld	-3 (ix),a
   9AAA F1            [10]12502 	pop	af
   9AAB 3D            [ 4]12503 	dec	a
   9AAC 20 08         [12]12504 	jr	NZ,00106$
   9AAE 0A            [ 7]12505 	ld	a,(bc)
   9AAF 4F            [ 4]12506 	ld	c,a
   9AB0 DD 7E FD      [19]12507 	ld	a,-3 (ix)
   9AB3 91            [ 4]12508 	sub	a, c
   9AB4 38 2B         [12]12509 	jr	C,00113$
   9AB6                   12510 00106$:
                          12511 ;src/main.c:2381: else if(pro->x<LIMITE_DERECHO-2){
   9AB6 DD 7E FD      [19]12512 	ld	a,-3 (ix)
   9AB9 D6 49         [ 7]12513 	sub	a, #0x49
   9ABB 30 24         [12]12514 	jr	NC,00113$
                          12515 ;src/main.c:2382: pro->x++;
   9ABD DD 4E FD      [19]12516 	ld	c,-3 (ix)
   9AC0 0C            [ 4]12517 	inc	c
   9AC1 79            [ 4]12518 	ld	a,c
   9AC2 12            [ 7]12519 	ld	(de),a
                          12520 ;src/main.c:2383: pro->columna=(pro->x+2)/6;
   9AC3 21 0F 00      [10]12521 	ld	hl,#0x000F
   9AC6 19            [11]12522 	add	hl,de
   9AC7 06 00         [ 7]12523 	ld	b,#0x00
   9AC9 03            [ 6]12524 	inc	bc
   9ACA 03            [ 6]12525 	inc	bc
   9ACB E5            [11]12526 	push	hl
   9ACC 11 06 00      [10]12527 	ld	de,#0x0006
   9ACF D5            [11]12528 	push	de
   9AD0 C5            [11]12529 	push	bc
   9AD1 CD BE 43      [17]12530 	call	__divsint
   9AD4 F1            [10]12531 	pop	af
   9AD5 F1            [10]12532 	pop	af
   9AD6 4D            [ 4]12533 	ld	c,l
   9AD7 E1            [10]12534 	pop	hl
   9AD8 71            [ 7]12535 	ld	(hl),c
                          12536 ;src/main.c:2384: pro->mira  = M_derecha;
   9AD9 DD 6E FE      [19]12537 	ld	l,-2 (ix)
   9ADC DD 66 FF      [19]12538 	ld	h,-1 (ix)
   9ADF 36 00         [10]12539 	ld	(hl),#0x00
   9AE1                   12540 00113$:
   9AE1 DD F9         [10]12541 	ld	sp, ix
   9AE3 DD E1         [14]12542 	pop	ix
   9AE5 C9            [10]12543 	ret
                          12544 ;src/main.c:2409: void moverIzquierda(TProta * pro) {
                          12545 ;	---------------------------------
                          12546 ; Function moverIzquierda
                          12547 ; ---------------------------------
   9AE6                   12548 _moverIzquierda::
   9AE6 DD E5         [15]12549 	push	ix
   9AE8 DD 21 00 00   [14]12550 	ld	ix,#0
   9AEC DD 39         [15]12551 	add	ix,sp
   9AEE F5            [11]12552 	push	af
   9AEF 3B            [ 6]12553 	dec	sp
                          12554 ;src/main.c:2410: TProta * proOpuesto=&protaDos;
   9AF0 01 71 4F      [10]12555 	ld	bc,#_protaDos+0
                          12556 ;src/main.c:2411: if(pro->soy==2){
   9AF3 DD 5E 04      [19]12557 	ld	e,4 (ix)
   9AF6 DD 56 05      [19]12558 	ld	d,5 (ix)
   9AF9 D5            [11]12559 	push	de
   9AFA FD E1         [14]12560 	pop	iy
   9AFC FD 7E 1B      [19]12561 	ld	a,27 (iy)
   9AFF D6 02         [ 7]12562 	sub	a, #0x02
   9B01 20 03         [12]12563 	jr	NZ,00102$
                          12564 ;src/main.c:2412: proOpuesto=&prota;
   9B03 01 54 4F      [10]12565 	ld	bc,#_prota
   9B06                   12566 00102$:
                          12567 ;src/main.c:2415: if(pro->mira==M_izquierda){
   9B06 21 0C 00      [10]12568 	ld	hl,#0x000C
   9B09 19            [11]12569 	add	hl,de
   9B0A DD 75 FE      [19]12570 	ld	-2 (ix),l
   9B0D DD 74 FF      [19]12571 	ld	-1 (ix),h
   9B10 DD 6E FE      [19]12572 	ld	l,-2 (ix)
   9B13 DD 66 FF      [19]12573 	ld	h,-1 (ix)
   9B16 6E            [ 7]12574 	ld	l,(hl)
   9B17 2D            [ 4]12575 	dec	l
   9B18 20 56         [12]12576 	jr	NZ,00113$
                          12577 ;src/main.c:2416: if(validarColision(0, pro,1))
   9B1A C5            [11]12578 	push	bc
   9B1B D5            [11]12579 	push	de
   9B1C 3E 01         [ 7]12580 	ld	a,#0x01
   9B1E F5            [11]12581 	push	af
   9B1F 33            [ 6]12582 	inc	sp
   9B20 D5            [11]12583 	push	de
   9B21 AF            [ 4]12584 	xor	a, a
   9B22 F5            [11]12585 	push	af
   9B23 33            [ 6]12586 	inc	sp
   9B24 CD CF 5F      [17]12587 	call	_validarColision
   9B27 F1            [10]12588 	pop	af
   9B28 F1            [10]12589 	pop	af
   9B29 D1            [10]12590 	pop	de
   9B2A C1            [10]12591 	pop	bc
   9B2B 7D            [ 4]12592 	ld	a,l
   9B2C B7            [ 4]12593 	or	a, a
   9B2D 28 41         [12]12594 	jr	Z,00113$
                          12595 ;src/main.c:2417: if(noChocar()==SI && proOpuesto->x<pro->x){
   9B2F C5            [11]12596 	push	bc
   9B30 D5            [11]12597 	push	de
   9B31 CD 66 97      [17]12598 	call	_noChocar
   9B34 7D            [ 4]12599 	ld	a,l
   9B35 D1            [10]12600 	pop	de
   9B36 C1            [10]12601 	pop	bc
   9B37 F5            [11]12602 	push	af
   9B38 1A            [ 7]12603 	ld	a,(de)
   9B39 DD 77 FD      [19]12604 	ld	-3 (ix),a
   9B3C F1            [10]12605 	pop	af
   9B3D 3D            [ 4]12606 	dec	a
   9B3E 20 06         [12]12607 	jr	NZ,00106$
   9B40 0A            [ 7]12608 	ld	a,(bc)
   9B41 DD 96 FD      [19]12609 	sub	a, -3 (ix)
   9B44 38 2A         [12]12610 	jr	C,00113$
   9B46                   12611 00106$:
                          12612 ;src/main.c:2420: else if(pro->x>0){
   9B46 DD 7E FD      [19]12613 	ld	a,-3 (ix)
   9B49 B7            [ 4]12614 	or	a, a
   9B4A 28 24         [12]12615 	jr	Z,00113$
                          12616 ;src/main.c:2421: pro->x--;
   9B4C DD 4E FD      [19]12617 	ld	c,-3 (ix)
   9B4F 0D            [ 4]12618 	dec	c
   9B50 79            [ 4]12619 	ld	a,c
   9B51 12            [ 7]12620 	ld	(de),a
                          12621 ;src/main.c:2422: pro->mira  = M_izquierda;
   9B52 DD 6E FE      [19]12622 	ld	l,-2 (ix)
   9B55 DD 66 FF      [19]12623 	ld	h,-1 (ix)
   9B58 36 01         [10]12624 	ld	(hl),#0x01
                          12625 ;src/main.c:2423: pro->columna=(pro->x+2)/6;
   9B5A 21 0F 00      [10]12626 	ld	hl,#0x000F
   9B5D 19            [11]12627 	add	hl,de
   9B5E 06 00         [ 7]12628 	ld	b,#0x00
   9B60 03            [ 6]12629 	inc	bc
   9B61 03            [ 6]12630 	inc	bc
   9B62 E5            [11]12631 	push	hl
   9B63 11 06 00      [10]12632 	ld	de,#0x0006
   9B66 D5            [11]12633 	push	de
   9B67 C5            [11]12634 	push	bc
   9B68 CD BE 43      [17]12635 	call	__divsint
   9B6B F1            [10]12636 	pop	af
   9B6C F1            [10]12637 	pop	af
   9B6D 4D            [ 4]12638 	ld	c,l
   9B6E E1            [10]12639 	pop	hl
   9B6F 71            [ 7]12640 	ld	(hl),c
   9B70                   12641 00113$:
   9B70 DD F9         [10]12642 	ld	sp, ix
   9B72 DD E1         [14]12643 	pop	ix
   9B74 C9            [10]12644 	ret
                          12645 ;src/main.c:2443: void andando_animar(u8 mirar, TProta * pro) {
                          12646 ;	---------------------------------
                          12647 ; Function andando_animar
                          12648 ; ---------------------------------
   9B75                   12649 _andando_animar::
                          12650 ;src/main.c:2444: pro->mira  = mirar;
   9B75 21 03 00      [10]12651 	ld	hl, #3
   9B78 39            [11]12652 	add	hl, sp
   9B79 4E            [ 7]12653 	ld	c, (hl)
   9B7A 23            [ 6]12654 	inc	hl
   9B7B 46            [ 7]12655 	ld	b, (hl)
   9B7C 21 0C 00      [10]12656 	ld	hl,#0x000C
   9B7F 09            [11]12657 	add	hl,bc
   9B80 FD 21 02 00   [14]12658 	ld	iy,#2
   9B84 FD 39         [15]12659 	add	iy,sp
   9B86 FD 7E 00      [19]12660 	ld	a,0 (iy)
   9B89 77            [ 7]12661 	ld	(hl),a
                          12662 ;src/main.c:2445: if(++pro->nframe == ANDAR_FRAMES*ANIM_PAUSA)
   9B8A 21 0B 00      [10]12663 	ld	hl,#0x000B
   9B8D 09            [11]12664 	add	hl,bc
   9B8E 7E            [ 7]12665 	ld	a,(hl)
   9B8F 3C            [ 4]12666 	inc	a
   9B90 77            [ 7]12667 	ld	(hl),a
                          12668 ;src/main.c:2446: pro->nframe = 0;
   9B91 D6 06         [ 7]12669 	sub	a,#0x06
   9B93 C0            [11]12670 	ret	NZ
   9B94 77            [ 7]12671 	ld	(hl),a
   9B95 C9            [10]12672 	ret
                          12673 ;src/main.c:2454: void andando(TProta * pro) {
                          12674 ;	---------------------------------
                          12675 ; Function andando
                          12676 ; ---------------------------------
   9B96                   12677 _andando::
   9B96 DD E5         [15]12678 	push	ix
   9B98 DD 21 00 00   [14]12679 	ld	ix,#0
   9B9C DD 39         [15]12680 	add	ix,sp
                          12681 ;src/main.c:2455: u8 k=queHayPulsado(pro->soy-1);
   9B9E DD 4E 04      [19]12682 	ld	c,4 (ix)
   9BA1 DD 46 05      [19]12683 	ld	b,5 (ix)
   9BA4 C5            [11]12684 	push	bc
   9BA5 FD E1         [14]12685 	pop	iy
   9BA7 FD 56 1B      [19]12686 	ld	d,27 (iy)
   9BAA 15            [ 4]12687 	dec	d
   9BAB C5            [11]12688 	push	bc
   9BAC D5            [11]12689 	push	de
   9BAD 33            [ 6]12690 	inc	sp
   9BAE CD 93 98      [17]12691 	call	_queHayPulsado
   9BB1 33            [ 6]12692 	inc	sp
   9BB2 5D            [ 4]12693 	ld	e,l
   9BB3 C1            [10]12694 	pop	bc
                          12695 ;src/main.c:2456: switch(k) {
   9BB4 3E 05         [ 7]12696 	ld	a,#0x05
   9BB6 93            [ 4]12697 	sub	a, e
   9BB7 DA 65 9C      [10]12698 	jp	C,00111$
                          12699 ;src/main.c:2457: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
   9BBA FD 21 0C 00   [14]12700 	ld	iy,#0x000C
   9BBE FD 09         [15]12701 	add	iy, bc
                          12702 ;src/main.c:2456: switch(k) {
   9BC0 16 00         [ 7]12703 	ld	d,#0x00
   9BC2 21 C9 9B      [10]12704 	ld	hl,#00130$
   9BC5 19            [11]12705 	add	hl,de
   9BC6 19            [11]12706 	add	hl,de
   9BC7 19            [11]12707 	add	hl,de
   9BC8 E9            [ 4]12708 	jp	(hl)
   9BC9                   12709 00130$:
   9BC9 C3 DB 9B      [10]12710 	jp	00101$
   9BCC C3 EB 9B      [10]12711 	jp	00102$
   9BCF C3 1A 9C      [10]12712 	jp	00107$
   9BD2 C3 32 9C      [10]12713 	jp	00108$
   9BD5 C3 4B 9C      [10]12714 	jp	00109$
   9BD8 C3 59 9C      [10]12715 	jp	00110$
                          12716 ;src/main.c:2457: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
   9BDB                   12717 00101$:
   9BDB FD 56 00      [19]12718 	ld	d, 0 (iy)
   9BDE C5            [11]12719 	push	bc
   9BDF C5            [11]12720 	push	bc
   9BE0 D5            [11]12721 	push	de
   9BE1 33            [ 6]12722 	inc	sp
   9BE2 CD CC 97      [17]12723 	call	_quieto_entrar
   9BE5 F1            [10]12724 	pop	af
   9BE6 33            [ 6]12725 	inc	sp
   9BE7 C1            [10]12726 	pop	bc
   9BE8 C3 65 9C      [10]12727 	jp	00111$
                          12728 ;src/main.c:2458: case 1:   if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
   9BEB                   12729 00102$:
   9BEB 69            [ 4]12730 	ld	l, c
   9BEC 60            [ 4]12731 	ld	h, b
   9BED 11 15 00      [10]12732 	ld	de, #0x0015
   9BF0 19            [11]12733 	add	hl, de
   9BF1 7E            [ 7]12734 	ld	a,(hl)
   9BF2 B7            [ 4]12735 	or	a, a
   9BF3 20 70         [12]12736 	jr	NZ,00111$
   9BF5 69            [ 4]12737 	ld	l, c
   9BF6 60            [ 4]12738 	ld	h, b
   9BF7 11 14 00      [10]12739 	ld	de, #0x0014
   9BFA 19            [11]12740 	add	hl, de
   9BFB 7E            [ 7]12741 	ld	a,(hl)
   9BFC B7            [ 4]12742 	or	a, a
   9BFD 28 66         [12]12743 	jr	Z,00111$
   9BFF 69            [ 4]12744 	ld	l, c
   9C00 60            [ 4]12745 	ld	h, b
   9C01 11 16 00      [10]12746 	ld	de, #0x0016
   9C04 19            [11]12747 	add	hl, de
   9C05 5E            [ 7]12748 	ld	e,(hl)
   9C06 3E 1E         [ 7]12749 	ld	a,#0x1E
   9C08 93            [ 4]12750 	sub	a, e
   9C09 30 5A         [12]12751 	jr	NC,00111$
                          12752 ;src/main.c:2459: disparo_entrar(pro->mira, pro);
   9C0B FD 56 00      [19]12753 	ld	d, 0 (iy)
   9C0E C5            [11]12754 	push	bc
   9C0F C5            [11]12755 	push	bc
   9C10 D5            [11]12756 	push	de
   9C11 33            [ 6]12757 	inc	sp
   9C12 CD 4A 98      [17]12758 	call	_disparo_entrar
   9C15 F1            [10]12759 	pop	af
   9C16 33            [ 6]12760 	inc	sp
   9C17 C1            [10]12761 	pop	bc
                          12762 ;src/main.c:2460: } break;
   9C18 18 4B         [12]12763 	jr	00111$
                          12764 ;src/main.c:2461: case 2: moverDerecha(pro);   andando_animar(M_derecha, pro);   break;
   9C1A                   12765 00107$:
   9C1A C5            [11]12766 	push	bc
   9C1B C5            [11]12767 	push	bc
   9C1C CD 53 9A      [17]12768 	call	_moverDerecha
   9C1F F1            [10]12769 	pop	af
   9C20 DD 6E 04      [19]12770 	ld	l,4 (ix)
   9C23 DD 66 05      [19]12771 	ld	h,5 (ix)
   9C26 E5            [11]12772 	push	hl
   9C27 AF            [ 4]12773 	xor	a, a
   9C28 F5            [11]12774 	push	af
   9C29 33            [ 6]12775 	inc	sp
   9C2A CD 75 9B      [17]12776 	call	_andando_animar
   9C2D F1            [10]12777 	pop	af
   9C2E 33            [ 6]12778 	inc	sp
   9C2F C1            [10]12779 	pop	bc
   9C30 18 33         [12]12780 	jr	00111$
                          12781 ;src/main.c:2462: case 3: moverIzquierda(pro); andando_animar(M_izquierda, pro); break;
   9C32                   12782 00108$:
   9C32 C5            [11]12783 	push	bc
   9C33 C5            [11]12784 	push	bc
   9C34 CD E6 9A      [17]12785 	call	_moverIzquierda
   9C37 F1            [10]12786 	pop	af
   9C38 DD 6E 04      [19]12787 	ld	l,4 (ix)
   9C3B DD 66 05      [19]12788 	ld	h,5 (ix)
   9C3E E5            [11]12789 	push	hl
   9C3F 3E 01         [ 7]12790 	ld	a,#0x01
   9C41 F5            [11]12791 	push	af
   9C42 33            [ 6]12792 	inc	sp
   9C43 CD 75 9B      [17]12793 	call	_andando_animar
   9C46 F1            [10]12794 	pop	af
   9C47 33            [ 6]12795 	inc	sp
   9C48 C1            [10]12796 	pop	bc
   9C49 18 1A         [12]12797 	jr	00111$
                          12798 ;src/main.c:2463: case 4: bajando_entrar(M_izquierda, pro); break;
   9C4B                   12799 00109$:
   9C4B C5            [11]12800 	push	bc
   9C4C C5            [11]12801 	push	bc
   9C4D 3E 01         [ 7]12802 	ld	a,#0x01
   9C4F F5            [11]12803 	push	af
   9C50 33            [ 6]12804 	inc	sp
   9C51 CD FD 9D      [17]12805 	call	_bajando_entrar
   9C54 F1            [10]12806 	pop	af
   9C55 33            [ 6]12807 	inc	sp
   9C56 C1            [10]12808 	pop	bc
   9C57 18 0C         [12]12809 	jr	00111$
                          12810 ;src/main.c:2464: case 5: subiendo_entrar(M_arriba, pro); break;
   9C59                   12811 00110$:
   9C59 C5            [11]12812 	push	bc
   9C5A C5            [11]12813 	push	bc
   9C5B 3E 03         [ 7]12814 	ld	a,#0x03
   9C5D F5            [11]12815 	push	af
   9C5E 33            [ 6]12816 	inc	sp
   9C5F CD 8B 9F      [17]12817 	call	_subiendo_entrar
   9C62 F1            [10]12818 	pop	af
   9C63 33            [ 6]12819 	inc	sp
   9C64 C1            [10]12820 	pop	bc
                          12821 ;src/main.c:2465: }
   9C65                   12822 00111$:
                          12823 ;src/main.c:2466: pro->mover = SI;
   9C65 21 07 00      [10]12824 	ld	hl,#0x0007
   9C68 09            [11]12825 	add	hl,bc
   9C69 36 01         [10]12826 	ld	(hl),#0x01
   9C6B DD E1         [14]12827 	pop	ix
   9C6D C9            [10]12828 	ret
                          12829 ;src/main.c:2483: void andando_entrar(u8 mirar, TProta * pro){
                          12830 ;	---------------------------------
                          12831 ; Function andando_entrar
                          12832 ; ---------------------------------
   9C6E                   12833 _andando_entrar::
                          12834 ;src/main.c:2484: pro->nframe = 0;
   9C6E 21 03 00      [10]12835 	ld	hl, #3
   9C71 39            [11]12836 	add	hl, sp
   9C72 4E            [ 7]12837 	ld	c, (hl)
   9C73 23            [ 6]12838 	inc	hl
   9C74 46            [ 7]12839 	ld	b, (hl)
   9C75 21 0B 00      [10]12840 	ld	hl,#0x000B
   9C78 09            [11]12841 	add	hl,bc
   9C79 36 00         [10]12842 	ld	(hl),#0x00
                          12843 ;src/main.c:2485: pro->estado = ST_andando;
   9C7B 21 08 00      [10]12844 	ld	hl,#0x0008
   9C7E 09            [11]12845 	add	hl,bc
   9C7F 36 03         [10]12846 	ld	(hl),#0x03
                          12847 ;src/main.c:2486: pro->mira   = mirar;
   9C81 21 0C 00      [10]12848 	ld	hl,#0x000C
   9C84 09            [11]12849 	add	hl,bc
   9C85 FD 21 02 00   [14]12850 	ld	iy,#2
   9C89 FD 39         [15]12851 	add	iy,sp
   9C8B FD 7E 00      [19]12852 	ld	a,0 (iy)
   9C8E 77            [ 7]12853 	ld	(hl),a
                          12854 ;src/main.c:2487: pro->mover  = SI;
   9C8F 21 07 00      [10]12855 	ld	hl,#0x0007
   9C92 09            [11]12856 	add	hl,bc
   9C93 36 01         [10]12857 	ld	(hl),#0x01
   9C95 C9            [10]12858 	ret
                          12859 ;src/main.c:2496: void moverAbajo(TProta * pro){
                          12860 ;	---------------------------------
                          12861 ; Function moverAbajo
                          12862 ; ---------------------------------
   9C96                   12863 _moverAbajo::
   9C96 DD E5         [15]12864 	push	ix
   9C98 DD 21 00 00   [14]12865 	ld	ix,#0
   9C9C DD 39         [15]12866 	add	ix,sp
   9C9E F5            [11]12867 	push	af
   9C9F F5            [11]12868 	push	af
                          12869 ;src/main.c:2497: TProta * proOpuesto=&protaDos;
   9CA0 DD 36 FC 71   [19]12870 	ld	-4 (ix),#<(_protaDos)
   9CA4 DD 36 FD 4F   [19]12871 	ld	-3 (ix),#>(_protaDos)
                          12872 ;src/main.c:2498: if(pro->soy==2){
   9CA8 DD 4E 04      [19]12873 	ld	c,4 (ix)
   9CAB DD 46 05      [19]12874 	ld	b,5 (ix)
   9CAE C5            [11]12875 	push	bc
   9CAF FD E1         [14]12876 	pop	iy
   9CB1 FD 7E 1B      [19]12877 	ld	a,27 (iy)
   9CB4 D6 02         [ 7]12878 	sub	a, #0x02
   9CB6 20 08         [12]12879 	jr	NZ,00102$
                          12880 ;src/main.c:2499: proOpuesto=&prota;
   9CB8 DD 36 FC 54   [19]12881 	ld	-4 (ix),#<(_prota)
   9CBC DD 36 FD 4F   [19]12882 	ld	-3 (ix),#>(_prota)
   9CC0                   12883 00102$:
                          12884 ;src/main.c:2502: if(validarColision(3, pro,1))
   9CC0 C5            [11]12885 	push	bc
   9CC1 3E 01         [ 7]12886 	ld	a,#0x01
   9CC3 F5            [11]12887 	push	af
   9CC4 33            [ 6]12888 	inc	sp
   9CC5 C5            [11]12889 	push	bc
   9CC6 3E 03         [ 7]12890 	ld	a,#0x03
   9CC8 F5            [11]12891 	push	af
   9CC9 33            [ 6]12892 	inc	sp
   9CCA CD CF 5F      [17]12893 	call	_validarColision
   9CCD F1            [10]12894 	pop	af
   9CCE F1            [10]12895 	pop	af
   9CCF C1            [10]12896 	pop	bc
   9CD0 7D            [ 4]12897 	ld	a,l
   9CD1 B7            [ 4]12898 	or	a, a
   9CD2 28 69         [12]12899 	jr	Z,00111$
                          12900 ;src/main.c:2503: if(noChocar()==SI && proOpuesto->y>pro->y){
   9CD4 C5            [11]12901 	push	bc
   9CD5 CD 66 97      [17]12902 	call	_noChocar
   9CD8 55            [ 4]12903 	ld	d,l
   9CD9 C1            [10]12904 	pop	bc
   9CDA 21 01 00      [10]12905 	ld	hl,#0x0001
   9CDD 09            [11]12906 	add	hl,bc
   9CDE DD 75 FE      [19]12907 	ld	-2 (ix),l
   9CE1 DD 74 FF      [19]12908 	ld	-1 (ix),h
   9CE4 DD 6E FE      [19]12909 	ld	l,-2 (ix)
   9CE7 DD 66 FF      [19]12910 	ld	h,-1 (ix)
   9CEA 5E            [ 7]12911 	ld	e,(hl)
   9CEB 15            [ 4]12912 	dec	d
   9CEC 20 08         [12]12913 	jr	NZ,00106$
   9CEE E1            [10]12914 	pop	hl
   9CEF E5            [11]12915 	push	hl
   9CF0 23            [ 6]12916 	inc	hl
   9CF1 56            [ 7]12917 	ld	d,(hl)
   9CF2 7B            [ 4]12918 	ld	a,e
   9CF3 92            [ 4]12919 	sub	a, d
   9CF4 38 47         [12]12920 	jr	C,00111$
   9CF6                   12921 00106$:
                          12922 ;src/main.c:2506: else if(pro->y < 184){
   9CF6 7B            [ 4]12923 	ld	a,e
   9CF7 D6 B8         [ 7]12924 	sub	a, #0xB8
   9CF9 30 42         [12]12925 	jr	NC,00111$
                          12926 ;src/main.c:2507: pro->y=pro->y+2;
   9CFB 1C            [ 4]12927 	inc	e
   9CFC 1C            [ 4]12928 	inc	e
   9CFD DD 6E FE      [19]12929 	ld	l,-2 (ix)
   9D00 DD 66 FF      [19]12930 	ld	h,-1 (ix)
   9D03 73            [ 7]12931 	ld	(hl),e
                          12932 ;src/main.c:2508: pro->fila=(pro->y-22+7)/16;
   9D04 21 0E 00      [10]12933 	ld	hl,#0x000E
   9D07 09            [11]12934 	add	hl,bc
   9D08 DD 75 FE      [19]12935 	ld	-2 (ix),l
   9D0B DD 74 FF      [19]12936 	ld	-1 (ix),h
   9D0E 16 00         [ 7]12937 	ld	d,#0x00
   9D10 21 F1 FF      [10]12938 	ld	hl,#0xFFF1
   9D13 19            [11]12939 	add	hl,de
   9D14 33            [ 6]12940 	inc	sp
   9D15 33            [ 6]12941 	inc	sp
   9D16 E5            [11]12942 	push	hl
   9D17 CB 7C         [ 8]12943 	bit	7, h
   9D19 28 03         [12]12944 	jr	Z,00113$
   9D1B 33            [ 6]12945 	inc	sp
   9D1C 33            [ 6]12946 	inc	sp
   9D1D D5            [11]12947 	push	de
   9D1E                   12948 00113$:
   9D1E D1            [10]12949 	pop	de
   9D1F D5            [11]12950 	push	de
   9D20 CB 2A         [ 8]12951 	sra	d
   9D22 CB 1B         [ 8]12952 	rr	e
   9D24 CB 2A         [ 8]12953 	sra	d
   9D26 CB 1B         [ 8]12954 	rr	e
   9D28 CB 2A         [ 8]12955 	sra	d
   9D2A CB 1B         [ 8]12956 	rr	e
   9D2C CB 2A         [ 8]12957 	sra	d
   9D2E CB 1B         [ 8]12958 	rr	e
   9D30 DD 6E FE      [19]12959 	ld	l,-2 (ix)
   9D33 DD 66 FF      [19]12960 	ld	h,-1 (ix)
   9D36 73            [ 7]12961 	ld	(hl),e
                          12962 ;src/main.c:2509: pro->mira  = M_abajo;
   9D37 21 0C 00      [10]12963 	ld	hl,#0x000C
   9D3A 09            [11]12964 	add	hl,bc
   9D3B 36 02         [10]12965 	ld	(hl),#0x02
   9D3D                   12966 00111$:
   9D3D DD F9         [10]12967 	ld	sp, ix
   9D3F DD E1         [14]12968 	pop	ix
   9D41 C9            [10]12969 	ret
                          12970 ;src/main.c:2528: void abajo_animar(TProta * pro) {
                          12971 ;	---------------------------------
                          12972 ; Function abajo_animar
                          12973 ; ---------------------------------
   9D42                   12974 _abajo_animar::
                          12975 ;src/main.c:2529: pro->mira  = M_abajo;
   9D42 D1            [10]12976 	pop	de
   9D43 C1            [10]12977 	pop	bc
   9D44 C5            [11]12978 	push	bc
   9D45 D5            [11]12979 	push	de
   9D46 21 0C 00      [10]12980 	ld	hl,#0x000C
   9D49 09            [11]12981 	add	hl,bc
   9D4A 36 02         [10]12982 	ld	(hl),#0x02
                          12983 ;src/main.c:2530: if(++pro->nframe == BAJAR_FRAMES*ANIM_PAUSA)
   9D4C 21 0B 00      [10]12984 	ld	hl,#0x000B
   9D4F 09            [11]12985 	add	hl,bc
   9D50 7E            [ 7]12986 	ld	a,(hl)
   9D51 3C            [ 4]12987 	inc	a
   9D52 77            [ 7]12988 	ld	(hl),a
                          12989 ;src/main.c:2531: pro->nframe = 0;
   9D53 D6 06         [ 7]12990 	sub	a,#0x06
   9D55 C0            [11]12991 	ret	NZ
   9D56 77            [ 7]12992 	ld	(hl),a
   9D57 C9            [10]12993 	ret
                          12994 ;src/main.c:2539: void bajando(TProta * pro) {
                          12995 ;	---------------------------------
                          12996 ; Function bajando
                          12997 ; ---------------------------------
   9D58                   12998 _bajando::
                          12999 ;src/main.c:2540: u8 k = queHayPulsado(pro->soy-1);
   9D58 D1            [10]13000 	pop	de
   9D59 C1            [10]13001 	pop	bc
   9D5A C5            [11]13002 	push	bc
   9D5B D5            [11]13003 	push	de
   9D5C C5            [11]13004 	push	bc
   9D5D FD E1         [14]13005 	pop	iy
   9D5F FD 56 1B      [19]13006 	ld	d,27 (iy)
   9D62 15            [ 4]13007 	dec	d
   9D63 C5            [11]13008 	push	bc
   9D64 D5            [11]13009 	push	de
   9D65 33            [ 6]13010 	inc	sp
   9D66 CD 93 98      [17]13011 	call	_queHayPulsado
   9D69 33            [ 6]13012 	inc	sp
   9D6A 5D            [ 4]13013 	ld	e,l
   9D6B C1            [10]13014 	pop	bc
                          13015 ;src/main.c:2541: switch(k) {
   9D6C 3E 05         [ 7]13016 	ld	a,#0x05
   9D6E 93            [ 4]13017 	sub	a, e
   9D6F DA F6 9D      [10]13018 	jp	C,00111$
   9D72 16 00         [ 7]13019 	ld	d,#0x00
   9D74 21 7A 9D      [10]13020 	ld	hl,#00130$
   9D77 19            [11]13021 	add	hl,de
   9D78 19            [11]13022 	add	hl,de
                          13023 ;src/main.c:2542: case 0: quieto_entrar(M_abajo, pro); break; // Nada que hacer
   9D79 E9            [ 4]13024 	jp	(hl)
   9D7A                   13025 00130$:
   9D7A 18 0A         [12]13026 	jr	00101$
   9D7C 18 16         [12]13027 	jr	00102$
   9D7E 18 3A         [12]13028 	jr	00107$
   9D80 18 45         [12]13029 	jr	00108$
   9D82 18 51         [12]13030 	jr	00109$
   9D84 18 64         [12]13031 	jr	00110$
   9D86                   13032 00101$:
   9D86 C5            [11]13033 	push	bc
   9D87 C5            [11]13034 	push	bc
   9D88 3E 02         [ 7]13035 	ld	a,#0x02
   9D8A F5            [11]13036 	push	af
   9D8B 33            [ 6]13037 	inc	sp
   9D8C CD CC 97      [17]13038 	call	_quieto_entrar
   9D8F F1            [10]13039 	pop	af
   9D90 33            [ 6]13040 	inc	sp
   9D91 C1            [10]13041 	pop	bc
   9D92 18 62         [12]13042 	jr	00111$
                          13043 ;src/main.c:2543: case 1:   if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
   9D94                   13044 00102$:
   9D94 C5            [11]13045 	push	bc
   9D95 FD E1         [14]13046 	pop	iy
   9D97 FD 7E 15      [19]13047 	ld	a,21 (iy)
   9D9A B7            [ 4]13048 	or	a, a
   9D9B 20 59         [12]13049 	jr	NZ,00111$
   9D9D C5            [11]13050 	push	bc
   9D9E FD E1         [14]13051 	pop	iy
   9DA0 FD 7E 14      [19]13052 	ld	a,20 (iy)
   9DA3 B7            [ 4]13053 	or	a, a
   9DA4 28 50         [12]13054 	jr	Z,00111$
   9DA6 C5            [11]13055 	push	bc
   9DA7 FD E1         [14]13056 	pop	iy
   9DA9 FD 5E 16      [19]13057 	ld	e,22 (iy)
   9DAC 3E 1E         [ 7]13058 	ld	a,#0x1E
   9DAE 93            [ 4]13059 	sub	a, e
   9DAF 30 45         [12]13060 	jr	NC,00111$
                          13061 ;src/main.c:2544: disparoAbajo_entrar(pro); 
   9DB1 C5            [11]13062 	push	bc
   9DB2 C5            [11]13063 	push	bc
   9DB3 CD 2D 98      [17]13064 	call	_disparoAbajo_entrar
   9DB6 F1            [10]13065 	pop	af
   9DB7 C1            [10]13066 	pop	bc
                          13067 ;src/main.c:2546: break; 
   9DB8 18 3C         [12]13068 	jr	00111$
                          13069 ;src/main.c:2547: case 2: andando_entrar(M_derecha, pro);   break;
   9DBA                   13070 00107$:
   9DBA C5            [11]13071 	push	bc
   9DBB C5            [11]13072 	push	bc
   9DBC AF            [ 4]13073 	xor	a, a
   9DBD F5            [11]13074 	push	af
   9DBE 33            [ 6]13075 	inc	sp
   9DBF CD 6E 9C      [17]13076 	call	_andando_entrar
   9DC2 F1            [10]13077 	pop	af
   9DC3 33            [ 6]13078 	inc	sp
   9DC4 C1            [10]13079 	pop	bc
   9DC5 18 2F         [12]13080 	jr	00111$
                          13081 ;src/main.c:2548: case 3: andando_entrar(M_izquierda, pro); break;
   9DC7                   13082 00108$:
   9DC7 C5            [11]13083 	push	bc
   9DC8 C5            [11]13084 	push	bc
   9DC9 3E 01         [ 7]13085 	ld	a,#0x01
   9DCB F5            [11]13086 	push	af
   9DCC 33            [ 6]13087 	inc	sp
   9DCD CD 6E 9C      [17]13088 	call	_andando_entrar
   9DD0 F1            [10]13089 	pop	af
   9DD1 33            [ 6]13090 	inc	sp
   9DD2 C1            [10]13091 	pop	bc
   9DD3 18 21         [12]13092 	jr	00111$
                          13093 ;src/main.c:2549: case 4: moverAbajo(pro); abajo_animar(pro); break;
   9DD5                   13094 00109$:
   9DD5 C5            [11]13095 	push	bc
   9DD6 C5            [11]13096 	push	bc
   9DD7 CD 96 9C      [17]13097 	call	_moverAbajo
   9DDA F1            [10]13098 	pop	af
   9DDB 21 04 00      [10]13099 	ld	hl, #4
   9DDE 39            [11]13100 	add	hl, sp
   9DDF 4E            [ 7]13101 	ld	c, (hl)
   9DE0 23            [ 6]13102 	inc	hl
   9DE1 46            [ 7]13103 	ld	b, (hl)
   9DE2 C5            [11]13104 	push	bc
   9DE3 CD 42 9D      [17]13105 	call	_abajo_animar
   9DE6 F1            [10]13106 	pop	af
   9DE7 C1            [10]13107 	pop	bc
   9DE8 18 0C         [12]13108 	jr	00111$
                          13109 ;src/main.c:2550: case 5: subiendo_entrar(M_arriba, pro); break;
   9DEA                   13110 00110$:
   9DEA C5            [11]13111 	push	bc
   9DEB C5            [11]13112 	push	bc
   9DEC 3E 03         [ 7]13113 	ld	a,#0x03
   9DEE F5            [11]13114 	push	af
   9DEF 33            [ 6]13115 	inc	sp
   9DF0 CD 8B 9F      [17]13116 	call	_subiendo_entrar
   9DF3 F1            [10]13117 	pop	af
   9DF4 33            [ 6]13118 	inc	sp
   9DF5 C1            [10]13119 	pop	bc
                          13120 ;src/main.c:2551: }
   9DF6                   13121 00111$:
                          13122 ;src/main.c:2552: pro->mover = SI;
   9DF6 21 07 00      [10]13123 	ld	hl,#0x0007
   9DF9 09            [11]13124 	add	hl,bc
   9DFA 36 01         [10]13125 	ld	(hl),#0x01
   9DFC C9            [10]13126 	ret
                          13127 ;src/main.c:2569: void bajando_entrar(u8 mirar, TProta * pro){
                          13128 ;	---------------------------------
                          13129 ; Function bajando_entrar
                          13130 ; ---------------------------------
   9DFD                   13131 _bajando_entrar::
                          13132 ;src/main.c:2570: pro->nframe = 0;
   9DFD 21 03 00      [10]13133 	ld	hl, #3
   9E00 39            [11]13134 	add	hl, sp
   9E01 4E            [ 7]13135 	ld	c, (hl)
   9E02 23            [ 6]13136 	inc	hl
   9E03 46            [ 7]13137 	ld	b, (hl)
   9E04 21 0B 00      [10]13138 	ld	hl,#0x000B
   9E07 09            [11]13139 	add	hl,bc
   9E08 36 00         [10]13140 	ld	(hl),#0x00
                          13141 ;src/main.c:2571: pro->estado = ST_bajando;
   9E0A 21 08 00      [10]13142 	ld	hl,#0x0008
   9E0D 09            [11]13143 	add	hl,bc
   9E0E 36 08         [10]13144 	ld	(hl),#0x08
                          13145 ;src/main.c:2572: pro->mira   = mirar;
   9E10 21 0C 00      [10]13146 	ld	hl,#0x000C
   9E13 09            [11]13147 	add	hl,bc
   9E14 FD 21 02 00   [14]13148 	ld	iy,#2
   9E18 FD 39         [15]13149 	add	iy,sp
   9E1A FD 7E 00      [19]13150 	ld	a,0 (iy)
   9E1D 77            [ 7]13151 	ld	(hl),a
                          13152 ;src/main.c:2573: pro->mover  = SI;
   9E1E 21 07 00      [10]13153 	ld	hl,#0x0007
   9E21 09            [11]13154 	add	hl,bc
   9E22 36 01         [10]13155 	ld	(hl),#0x01
   9E24 C9            [10]13156 	ret
                          13157 ;src/main.c:2582: void moverArriba(TProta * pro){
                          13158 ;	---------------------------------
                          13159 ; Function moverArriba
                          13160 ; ---------------------------------
   9E25                   13161 _moverArriba::
   9E25 DD E5         [15]13162 	push	ix
   9E27 DD 21 00 00   [14]13163 	ld	ix,#0
   9E2B DD 39         [15]13164 	add	ix,sp
   9E2D F5            [11]13165 	push	af
   9E2E F5            [11]13166 	push	af
                          13167 ;src/main.c:2583: TProta * proOpuesto=&protaDos;
   9E2F DD 36 FC 71   [19]13168 	ld	-4 (ix),#<(_protaDos)
   9E33 DD 36 FD 4F   [19]13169 	ld	-3 (ix),#>(_protaDos)
                          13170 ;src/main.c:2584: if(pro->soy==2){
   9E37 DD 4E 04      [19]13171 	ld	c,4 (ix)
   9E3A DD 46 05      [19]13172 	ld	b,5 (ix)
   9E3D C5            [11]13173 	push	bc
   9E3E FD E1         [14]13174 	pop	iy
   9E40 FD 7E 1B      [19]13175 	ld	a,27 (iy)
   9E43 D6 02         [ 7]13176 	sub	a, #0x02
   9E45 20 08         [12]13177 	jr	NZ,00102$
                          13178 ;src/main.c:2585: proOpuesto=&prota;
   9E47 DD 36 FC 54   [19]13179 	ld	-4 (ix),#<(_prota)
   9E4B DD 36 FD 4F   [19]13180 	ld	-3 (ix),#>(_prota)
   9E4F                   13181 00102$:
                          13182 ;src/main.c:2589: if(validarColision(1, pro,1))
   9E4F C5            [11]13183 	push	bc
   9E50 3E 01         [ 7]13184 	ld	a,#0x01
   9E52 F5            [11]13185 	push	af
   9E53 33            [ 6]13186 	inc	sp
   9E54 C5            [11]13187 	push	bc
   9E55 3E 01         [ 7]13188 	ld	a,#0x01
   9E57 F5            [11]13189 	push	af
   9E58 33            [ 6]13190 	inc	sp
   9E59 CD CF 5F      [17]13191 	call	_validarColision
   9E5C F1            [10]13192 	pop	af
   9E5D F1            [10]13193 	pop	af
   9E5E C1            [10]13194 	pop	bc
   9E5F 7D            [ 4]13195 	ld	a,l
   9E60 B7            [ 4]13196 	or	a, a
   9E61 28 68         [12]13197 	jr	Z,00111$
                          13198 ;src/main.c:2590: if(noChocar()==SI && proOpuesto->y<pro->y){
   9E63 C5            [11]13199 	push	bc
   9E64 CD 66 97      [17]13200 	call	_noChocar
   9E67 55            [ 4]13201 	ld	d,l
   9E68 C1            [10]13202 	pop	bc
   9E69 21 01 00      [10]13203 	ld	hl,#0x0001
   9E6C 09            [11]13204 	add	hl,bc
   9E6D DD 75 FE      [19]13205 	ld	-2 (ix),l
   9E70 DD 74 FF      [19]13206 	ld	-1 (ix),h
   9E73 DD 6E FE      [19]13207 	ld	l,-2 (ix)
   9E76 DD 66 FF      [19]13208 	ld	h,-1 (ix)
   9E79 5E            [ 7]13209 	ld	e,(hl)
   9E7A 15            [ 4]13210 	dec	d
   9E7B 20 07         [12]13211 	jr	NZ,00106$
   9E7D E1            [10]13212 	pop	hl
   9E7E E5            [11]13213 	push	hl
   9E7F 23            [ 6]13214 	inc	hl
   9E80 7E            [ 7]13215 	ld	a, (hl)
   9E81 93            [ 4]13216 	sub	a, e
   9E82 38 47         [12]13217 	jr	C,00111$
   9E84                   13218 00106$:
                          13219 ;src/main.c:2593: else if(pro->y>ORIGEN_MAPA_Y+22){
   9E84 3E 16         [ 7]13220 	ld	a,#0x16
   9E86 93            [ 4]13221 	sub	a, e
   9E87 30 42         [12]13222 	jr	NC,00111$
                          13223 ;src/main.c:2594: pro->y=pro->y-2;
   9E89 1D            [ 4]13224 	dec	e
   9E8A 1D            [ 4]13225 	dec	e
   9E8B DD 6E FE      [19]13226 	ld	l,-2 (ix)
   9E8E DD 66 FF      [19]13227 	ld	h,-1 (ix)
   9E91 73            [ 7]13228 	ld	(hl),e
                          13229 ;src/main.c:2595: pro->fila=(pro->y-22+7)/16;
   9E92 21 0E 00      [10]13230 	ld	hl,#0x000E
   9E95 09            [11]13231 	add	hl,bc
   9E96 DD 75 FE      [19]13232 	ld	-2 (ix),l
   9E99 DD 74 FF      [19]13233 	ld	-1 (ix),h
   9E9C 16 00         [ 7]13234 	ld	d,#0x00
   9E9E 21 F1 FF      [10]13235 	ld	hl,#0xFFF1
   9EA1 19            [11]13236 	add	hl,de
   9EA2 33            [ 6]13237 	inc	sp
   9EA3 33            [ 6]13238 	inc	sp
   9EA4 E5            [11]13239 	push	hl
   9EA5 CB 7C         [ 8]13240 	bit	7, h
   9EA7 28 03         [12]13241 	jr	Z,00113$
   9EA9 33            [ 6]13242 	inc	sp
   9EAA 33            [ 6]13243 	inc	sp
   9EAB D5            [11]13244 	push	de
   9EAC                   13245 00113$:
   9EAC D1            [10]13246 	pop	de
   9EAD D5            [11]13247 	push	de
   9EAE CB 2A         [ 8]13248 	sra	d
   9EB0 CB 1B         [ 8]13249 	rr	e
   9EB2 CB 2A         [ 8]13250 	sra	d
   9EB4 CB 1B         [ 8]13251 	rr	e
   9EB6 CB 2A         [ 8]13252 	sra	d
   9EB8 CB 1B         [ 8]13253 	rr	e
   9EBA CB 2A         [ 8]13254 	sra	d
   9EBC CB 1B         [ 8]13255 	rr	e
   9EBE DD 6E FE      [19]13256 	ld	l,-2 (ix)
   9EC1 DD 66 FF      [19]13257 	ld	h,-1 (ix)
   9EC4 73            [ 7]13258 	ld	(hl),e
                          13259 ;src/main.c:2596: pro->mira  = M_arriba;
   9EC5 21 0C 00      [10]13260 	ld	hl,#0x000C
   9EC8 09            [11]13261 	add	hl,bc
   9EC9 36 03         [10]13262 	ld	(hl),#0x03
   9ECB                   13263 00111$:
   9ECB DD F9         [10]13264 	ld	sp, ix
   9ECD DD E1         [14]13265 	pop	ix
   9ECF C9            [10]13266 	ret
                          13267 ;src/main.c:2615: void arriba_animar(TProta * pro) {
                          13268 ;	---------------------------------
                          13269 ; Function arriba_animar
                          13270 ; ---------------------------------
   9ED0                   13271 _arriba_animar::
                          13272 ;src/main.c:2616: pro->mira  = M_arriba;
   9ED0 D1            [10]13273 	pop	de
   9ED1 C1            [10]13274 	pop	bc
   9ED2 C5            [11]13275 	push	bc
   9ED3 D5            [11]13276 	push	de
   9ED4 21 0C 00      [10]13277 	ld	hl,#0x000C
   9ED7 09            [11]13278 	add	hl,bc
   9ED8 36 03         [10]13279 	ld	(hl),#0x03
                          13280 ;src/main.c:2617: if(++pro->nframe == SUBIR_FRAMES*ANIM_PAUSA)
   9EDA 21 0B 00      [10]13281 	ld	hl,#0x000B
   9EDD 09            [11]13282 	add	hl,bc
   9EDE 7E            [ 7]13283 	ld	a,(hl)
   9EDF 3C            [ 4]13284 	inc	a
   9EE0 77            [ 7]13285 	ld	(hl),a
                          13286 ;src/main.c:2618: pro->nframe = 0;
   9EE1 D6 06         [ 7]13287 	sub	a,#0x06
   9EE3 C0            [11]13288 	ret	NZ
   9EE4 77            [ 7]13289 	ld	(hl),a
   9EE5 C9            [10]13290 	ret
                          13291 ;src/main.c:2626: void subiendo(TProta * pro) {
                          13292 ;	---------------------------------
                          13293 ; Function subiendo
                          13294 ; ---------------------------------
   9EE6                   13295 _subiendo::
                          13296 ;src/main.c:2627: u8 k=queHayPulsado(pro->soy-1);
   9EE6 D1            [10]13297 	pop	de
   9EE7 C1            [10]13298 	pop	bc
   9EE8 C5            [11]13299 	push	bc
   9EE9 D5            [11]13300 	push	de
   9EEA C5            [11]13301 	push	bc
   9EEB FD E1         [14]13302 	pop	iy
   9EED FD 56 1B      [19]13303 	ld	d,27 (iy)
   9EF0 15            [ 4]13304 	dec	d
   9EF1 C5            [11]13305 	push	bc
   9EF2 D5            [11]13306 	push	de
   9EF3 33            [ 6]13307 	inc	sp
   9EF4 CD 93 98      [17]13308 	call	_queHayPulsado
   9EF7 33            [ 6]13309 	inc	sp
   9EF8 5D            [ 4]13310 	ld	e,l
   9EF9 C1            [10]13311 	pop	bc
                          13312 ;src/main.c:2628: switch(k) {
   9EFA 3E 05         [ 7]13313 	ld	a,#0x05
   9EFC 93            [ 4]13314 	sub	a, e
   9EFD DA 84 9F      [10]13315 	jp	C,00111$
   9F00 16 00         [ 7]13316 	ld	d,#0x00
   9F02 21 08 9F      [10]13317 	ld	hl,#00130$
   9F05 19            [11]13318 	add	hl,de
   9F06 19            [11]13319 	add	hl,de
                          13320 ;src/main.c:2629: case 0: quieto_entrar(M_arriba, pro); break; // Nada que hacer
   9F07 E9            [ 4]13321 	jp	(hl)
   9F08                   13322 00130$:
   9F08 18 0A         [12]13323 	jr	00101$
   9F0A 18 16         [12]13324 	jr	00102$
   9F0C 18 3A         [12]13325 	jr	00107$
   9F0E 18 45         [12]13326 	jr	00108$
   9F10 18 51         [12]13327 	jr	00109$
   9F12 18 5D         [12]13328 	jr	00110$
   9F14                   13329 00101$:
   9F14 C5            [11]13330 	push	bc
   9F15 C5            [11]13331 	push	bc
   9F16 3E 03         [ 7]13332 	ld	a,#0x03
   9F18 F5            [11]13333 	push	af
   9F19 33            [ 6]13334 	inc	sp
   9F1A CD CC 97      [17]13335 	call	_quieto_entrar
   9F1D F1            [10]13336 	pop	af
   9F1E 33            [ 6]13337 	inc	sp
   9F1F C1            [10]13338 	pop	bc
   9F20 18 62         [12]13339 	jr	00111$
                          13340 ;src/main.c:2630: case 1:   if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
   9F22                   13341 00102$:
   9F22 C5            [11]13342 	push	bc
   9F23 FD E1         [14]13343 	pop	iy
   9F25 FD 7E 15      [19]13344 	ld	a,21 (iy)
   9F28 B7            [ 4]13345 	or	a, a
   9F29 20 59         [12]13346 	jr	NZ,00111$
   9F2B C5            [11]13347 	push	bc
   9F2C FD E1         [14]13348 	pop	iy
   9F2E FD 7E 14      [19]13349 	ld	a,20 (iy)
   9F31 B7            [ 4]13350 	or	a, a
   9F32 28 50         [12]13351 	jr	Z,00111$
   9F34 C5            [11]13352 	push	bc
   9F35 FD E1         [14]13353 	pop	iy
   9F37 FD 5E 16      [19]13354 	ld	e,22 (iy)
   9F3A 3E 1E         [ 7]13355 	ld	a,#0x1E
   9F3C 93            [ 4]13356 	sub	a, e
   9F3D 30 45         [12]13357 	jr	NC,00111$
                          13358 ;src/main.c:2631: disparoArriba_entrar(pro); 
   9F3F C5            [11]13359 	push	bc
   9F40 C5            [11]13360 	push	bc
   9F41 CD 10 98      [17]13361 	call	_disparoArriba_entrar
   9F44 F1            [10]13362 	pop	af
   9F45 C1            [10]13363 	pop	bc
                          13364 ;src/main.c:2633: break; 
   9F46 18 3C         [12]13365 	jr	00111$
                          13366 ;src/main.c:2634: case 2: andando_entrar(M_derecha, pro);   break;
   9F48                   13367 00107$:
   9F48 C5            [11]13368 	push	bc
   9F49 C5            [11]13369 	push	bc
   9F4A AF            [ 4]13370 	xor	a, a
   9F4B F5            [11]13371 	push	af
   9F4C 33            [ 6]13372 	inc	sp
   9F4D CD 6E 9C      [17]13373 	call	_andando_entrar
   9F50 F1            [10]13374 	pop	af
   9F51 33            [ 6]13375 	inc	sp
   9F52 C1            [10]13376 	pop	bc
   9F53 18 2F         [12]13377 	jr	00111$
                          13378 ;src/main.c:2635: case 3: andando_entrar(M_izquierda, pro); break;
   9F55                   13379 00108$:
   9F55 C5            [11]13380 	push	bc
   9F56 C5            [11]13381 	push	bc
   9F57 3E 01         [ 7]13382 	ld	a,#0x01
   9F59 F5            [11]13383 	push	af
   9F5A 33            [ 6]13384 	inc	sp
   9F5B CD 6E 9C      [17]13385 	call	_andando_entrar
   9F5E F1            [10]13386 	pop	af
   9F5F 33            [ 6]13387 	inc	sp
   9F60 C1            [10]13388 	pop	bc
   9F61 18 21         [12]13389 	jr	00111$
                          13390 ;src/main.c:2636: case 4: bajando_entrar(M_abajo, pro); break;
   9F63                   13391 00109$:
   9F63 C5            [11]13392 	push	bc
   9F64 C5            [11]13393 	push	bc
   9F65 3E 02         [ 7]13394 	ld	a,#0x02
   9F67 F5            [11]13395 	push	af
   9F68 33            [ 6]13396 	inc	sp
   9F69 CD FD 9D      [17]13397 	call	_bajando_entrar
   9F6C F1            [10]13398 	pop	af
   9F6D 33            [ 6]13399 	inc	sp
   9F6E C1            [10]13400 	pop	bc
   9F6F 18 13         [12]13401 	jr	00111$
                          13402 ;src/main.c:2637: case 5: moverArriba(pro); arriba_animar(pro); break;
   9F71                   13403 00110$:
   9F71 C5            [11]13404 	push	bc
   9F72 C5            [11]13405 	push	bc
   9F73 CD 25 9E      [17]13406 	call	_moverArriba
   9F76 F1            [10]13407 	pop	af
   9F77 21 04 00      [10]13408 	ld	hl, #4
   9F7A 39            [11]13409 	add	hl, sp
   9F7B 4E            [ 7]13410 	ld	c, (hl)
   9F7C 23            [ 6]13411 	inc	hl
   9F7D 46            [ 7]13412 	ld	b, (hl)
   9F7E C5            [11]13413 	push	bc
   9F7F CD D0 9E      [17]13414 	call	_arriba_animar
   9F82 F1            [10]13415 	pop	af
   9F83 C1            [10]13416 	pop	bc
                          13417 ;src/main.c:2638: }
   9F84                   13418 00111$:
                          13419 ;src/main.c:2639: pro->mover = SI;
   9F84 21 07 00      [10]13420 	ld	hl,#0x0007
   9F87 09            [11]13421 	add	hl,bc
   9F88 36 01         [10]13422 	ld	(hl),#0x01
   9F8A C9            [10]13423 	ret
                          13424 ;src/main.c:2657: void subiendo_entrar(u8 mirar, TProta * pro){
                          13425 ;	---------------------------------
                          13426 ; Function subiendo_entrar
                          13427 ; ---------------------------------
   9F8B                   13428 _subiendo_entrar::
                          13429 ;src/main.c:2658: pro->nframe = 0;
   9F8B 21 03 00      [10]13430 	ld	hl, #3
   9F8E 39            [11]13431 	add	hl, sp
   9F8F 4E            [ 7]13432 	ld	c, (hl)
   9F90 23            [ 6]13433 	inc	hl
   9F91 46            [ 7]13434 	ld	b, (hl)
   9F92 21 0B 00      [10]13435 	ld	hl,#0x000B
   9F95 09            [11]13436 	add	hl,bc
   9F96 36 00         [10]13437 	ld	(hl),#0x00
                          13438 ;src/main.c:2659: pro->estado = ST_subiendo;
   9F98 21 08 00      [10]13439 	ld	hl,#0x0008
   9F9B 09            [11]13440 	add	hl,bc
   9F9C 36 07         [10]13441 	ld	(hl),#0x07
                          13442 ;src/main.c:2660: pro->mira   = mirar;
   9F9E 21 0C 00      [10]13443 	ld	hl,#0x000C
   9FA1 09            [11]13444 	add	hl,bc
   9FA2 FD 21 02 00   [14]13445 	ld	iy,#2
   9FA6 FD 39         [15]13446 	add	iy,sp
   9FA8 FD 7E 00      [19]13447 	ld	a,0 (iy)
   9FAB 77            [ 7]13448 	ld	(hl),a
                          13449 ;src/main.c:2661: pro->mover  = SI;
   9FAC 21 07 00      [10]13450 	ld	hl,#0x0007
   9FAF 09            [11]13451 	add	hl,bc
   9FB0 36 01         [10]13452 	ld	(hl),#0x01
   9FB2 C9            [10]13453 	ret
                          13454 ;src/main.c:2671: void quieto(TProta * pro) {
                          13455 ;	---------------------------------
                          13456 ; Function quieto
                          13457 ; ---------------------------------
   9FB3                   13458 _quieto::
   9FB3 DD E5         [15]13459 	push	ix
   9FB5 DD 21 00 00   [14]13460 	ld	ix,#0
   9FB9 DD 39         [15]13461 	add	ix,sp
                          13462 ;src/main.c:2672: u8 k=queHayPulsado(pro->soy-1);
   9FBB DD 4E 04      [19]13463 	ld	c,4 (ix)
   9FBE DD 46 05      [19]13464 	ld	b,5 (ix)
   9FC1 C5            [11]13465 	push	bc
   9FC2 FD E1         [14]13466 	pop	iy
   9FC4 FD 56 1B      [19]13467 	ld	d,27 (iy)
   9FC7 15            [ 4]13468 	dec	d
   9FC8 C5            [11]13469 	push	bc
   9FC9 D5            [11]13470 	push	de
   9FCA 33            [ 6]13471 	inc	sp
   9FCB CD 93 98      [17]13472 	call	_queHayPulsado
   9FCE 33            [ 6]13473 	inc	sp
   9FCF 5D            [ 4]13474 	ld	e,l
   9FD0 C1            [10]13475 	pop	bc
                          13476 ;src/main.c:2673: switch(k) {
   9FD1 3E 05         [ 7]13477 	ld	a,#0x05
   9FD3 93            [ 4]13478 	sub	a, e
   9FD4 DA 80 A0      [10]13479 	jp	C,00119$
                          13480 ;src/main.c:2674: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
   9FD7 FD 21 0C 00   [14]13481 	ld	iy,#0x000C
   9FDB FD 09         [15]13482 	add	iy, bc
                          13483 ;src/main.c:2673: switch(k) {
   9FDD 16 00         [ 7]13484 	ld	d,#0x00
   9FDF 21 E6 9F      [10]13485 	ld	hl,#00145$
   9FE2 19            [11]13486 	add	hl,de
   9FE3 19            [11]13487 	add	hl,de
   9FE4 19            [11]13488 	add	hl,de
   9FE5 E9            [ 4]13489 	jp	(hl)
   9FE6                   13490 00145$:
   9FE6 C3 F8 9F      [10]13491 	jp	00101$
   9FE9 C3 06 A0      [10]13492 	jp	00102$
   9FEC C3 53 A0      [10]13493 	jp	00114$
   9FEF C3 5E A0      [10]13494 	jp	00115$
   9FF2 C3 6A A0      [10]13495 	jp	00116$
   9FF5 C3 76 A0      [10]13496 	jp	00117$
                          13497 ;src/main.c:2674: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
   9FF8                   13498 00101$:
   9FF8 FD 56 00      [19]13499 	ld	d, 0 (iy)
   9FFB C5            [11]13500 	push	bc
   9FFC D5            [11]13501 	push	de
   9FFD 33            [ 6]13502 	inc	sp
   9FFE CD CC 97      [17]13503 	call	_quieto_entrar
   A001 F1            [10]13504 	pop	af
   A002 33            [ 6]13505 	inc	sp
   A003 C3 80 A0      [10]13506 	jp	00119$
                          13507 ;src/main.c:2675: case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
   A006                   13508 00102$:
   A006 69            [ 4]13509 	ld	l, c
   A007 60            [ 4]13510 	ld	h, b
   A008 11 15 00      [10]13511 	ld	de, #0x0015
   A00B 19            [11]13512 	add	hl, de
   A00C 7E            [ 7]13513 	ld	a,(hl)
                          13514 ;src/main.c:2674: case 0: quieto_entrar(pro->mira, pro); break; // Nada que hacer
   A00D FD 56 00      [19]13515 	ld	d, 0 (iy)
                          13516 ;src/main.c:2675: case 1: if(pro->disparando==NO && pro->municion>0 && pro->tiempoDisp>30){
   A010 B7            [ 4]13517 	or	a, a
   A011 20 36         [12]13518 	jr	NZ,00110$
   A013 C5            [11]13519 	push	bc
   A014 FD E1         [14]13520 	pop	iy
   A016 FD 7E 14      [19]13521 	ld	a,20 (iy)
   A019 B7            [ 4]13522 	or	a, a
   A01A 28 2D         [12]13523 	jr	Z,00110$
   A01C C5            [11]13524 	push	bc
   A01D FD E1         [14]13525 	pop	iy
   A01F FD 5E 16      [19]13526 	ld	e,22 (iy)
   A022 3E 1E         [ 7]13527 	ld	a,#0x1E
   A024 93            [ 4]13528 	sub	a, e
   A025 30 22         [12]13529 	jr	NC,00110$
                          13530 ;src/main.c:2676: if(pro->mira == M_arriba){
   A027 7A            [ 4]13531 	ld	a,d
   A028 D6 03         [ 7]13532 	sub	a, #0x03
   A02A 20 07         [12]13533 	jr	NZ,00107$
                          13534 ;src/main.c:2677: disparoArriba_entrar(pro);
   A02C C5            [11]13535 	push	bc
   A02D CD 10 98      [17]13536 	call	_disparoArriba_entrar
   A030 F1            [10]13537 	pop	af
   A031 18 4D         [12]13538 	jr	00119$
   A033                   13539 00107$:
                          13540 ;src/main.c:2678: }else if(pro->mira == M_abajo){
   A033 7A            [ 4]13541 	ld	a,d
   A034 D6 02         [ 7]13542 	sub	a, #0x02
   A036 20 07         [12]13543 	jr	NZ,00104$
                          13544 ;src/main.c:2679: disparoAbajo_entrar(pro);
   A038 C5            [11]13545 	push	bc
   A039 CD 2D 98      [17]13546 	call	_disparoAbajo_entrar
   A03C F1            [10]13547 	pop	af
   A03D 18 41         [12]13548 	jr	00119$
   A03F                   13549 00104$:
                          13550 ;src/main.c:2681: disparo_entrar(pro->mira, pro);
   A03F C5            [11]13551 	push	bc
   A040 D5            [11]13552 	push	de
   A041 33            [ 6]13553 	inc	sp
   A042 CD 4A 98      [17]13554 	call	_disparo_entrar
   A045 F1            [10]13555 	pop	af
   A046 33            [ 6]13556 	inc	sp
   A047 18 37         [12]13557 	jr	00119$
   A049                   13558 00110$:
                          13559 ;src/main.c:2685: quieto_entrar(pro->mira, pro);
   A049 C5            [11]13560 	push	bc
   A04A D5            [11]13561 	push	de
   A04B 33            [ 6]13562 	inc	sp
   A04C CD CC 97      [17]13563 	call	_quieto_entrar
   A04F F1            [10]13564 	pop	af
   A050 33            [ 6]13565 	inc	sp
                          13566 ;src/main.c:2687: break;
   A051 18 2D         [12]13567 	jr	00119$
                          13568 ;src/main.c:2688: case 2: andando_entrar(M_derecha, pro);   break;
   A053                   13569 00114$:
   A053 C5            [11]13570 	push	bc
   A054 AF            [ 4]13571 	xor	a, a
   A055 F5            [11]13572 	push	af
   A056 33            [ 6]13573 	inc	sp
   A057 CD 6E 9C      [17]13574 	call	_andando_entrar
   A05A F1            [10]13575 	pop	af
   A05B 33            [ 6]13576 	inc	sp
   A05C 18 22         [12]13577 	jr	00119$
                          13578 ;src/main.c:2689: case 3: andando_entrar(M_izquierda, pro); break;
   A05E                   13579 00115$:
   A05E C5            [11]13580 	push	bc
   A05F 3E 01         [ 7]13581 	ld	a,#0x01
   A061 F5            [11]13582 	push	af
   A062 33            [ 6]13583 	inc	sp
   A063 CD 6E 9C      [17]13584 	call	_andando_entrar
   A066 F1            [10]13585 	pop	af
   A067 33            [ 6]13586 	inc	sp
   A068 18 16         [12]13587 	jr	00119$
                          13588 ;src/main.c:2690: case 4: bajando_entrar(M_abajo, pro); break;
   A06A                   13589 00116$:
   A06A C5            [11]13590 	push	bc
   A06B 3E 02         [ 7]13591 	ld	a,#0x02
   A06D F5            [11]13592 	push	af
   A06E 33            [ 6]13593 	inc	sp
   A06F CD FD 9D      [17]13594 	call	_bajando_entrar
   A072 F1            [10]13595 	pop	af
   A073 33            [ 6]13596 	inc	sp
   A074 18 0A         [12]13597 	jr	00119$
                          13598 ;src/main.c:2691: case 5: subiendo_entrar(M_arriba, pro); break;  
   A076                   13599 00117$:
   A076 C5            [11]13600 	push	bc
   A077 3E 03         [ 7]13601 	ld	a,#0x03
   A079 F5            [11]13602 	push	af
   A07A 33            [ 6]13603 	inc	sp
   A07B CD 8B 9F      [17]13604 	call	_subiendo_entrar
   A07E F1            [10]13605 	pop	af
   A07F 33            [ 6]13606 	inc	sp
                          13607 ;src/main.c:2696: }
   A080                   13608 00119$:
   A080 DD E1         [14]13609 	pop	ix
   A082 C9            [10]13610 	ret
                          13611 ;src/main.c:2722: void ejecutarEstado(u8 soy) {
                          13612 ;	---------------------------------
                          13613 ; Function ejecutarEstado
                          13614 ; ---------------------------------
   A083                   13615 _ejecutarEstado::
                          13616 ;src/main.c:2723: TProta * pro=&prota;
   A083 01 54 4F      [10]13617 	ld	bc,#_prota+0
                          13618 ;src/main.c:2724: if(soy==2){
   A086 21 02 00      [10]13619 	ld	hl, #2+0
   A089 39            [11]13620 	add	hl, sp
   A08A 7E            [ 7]13621 	ld	a, (hl)
   A08B D6 02         [ 7]13622 	sub	a, #0x02
   A08D 20 03         [12]13623 	jr	NZ,00102$
                          13624 ;src/main.c:2725: pro=&protaDos;
   A08F 01 71 4F      [10]13625 	ld	bc,#_protaDos
   A092                   13626 00102$:
                          13627 ;src/main.c:2727: switch(pro->estado) {
   A092 C5            [11]13628 	push	bc
   A093 FD E1         [14]13629 	pop	iy
   A095 FD 5E 08      [19]13630 	ld	e,8 (iy)
   A098 3E 08         [ 7]13631 	ld	a,#0x08
   A09A 93            [ 4]13632 	sub	a, e
   A09B 38 73         [12]13633 	jr	C,00112$
   A09D 16 00         [ 7]13634 	ld	d,#0x00
   A09F 21 A6 A0      [10]13635 	ld	hl,#00132$
   A0A2 19            [11]13636 	add	hl,de
   A0A3 19            [11]13637 	add	hl,de
   A0A4 19            [11]13638 	add	hl,de
   A0A5 E9            [ 4]13639 	jp	(hl)
   A0A6                   13640 00132$:
   A0A6 C3 C1 A0      [10]13641 	jp	00103$
   A0A9 C3 CA A0      [10]13642 	jp	00104$
   A0AC C3 D3 A0      [10]13643 	jp	00105$
   A0AF C3 DC A0      [10]13644 	jp	00106$
   A0B2 C3 E5 A0      [10]13645 	jp	00107$
   A0B5 C3 EE A0      [10]13646 	jp	00108$
   A0B8 C3 F7 A0      [10]13647 	jp	00109$
   A0BB C3 00 A1      [10]13648 	jp	00110$
   A0BE C3 09 A1      [10]13649 	jp	00111$
                          13650 ;src/main.c:2728: case ST_quieto:      quieto(pro);      break;
   A0C1                   13651 00103$:
   A0C1 C5            [11]13652 	push	bc
   A0C2 C5            [11]13653 	push	bc
   A0C3 CD B3 9F      [17]13654 	call	_quieto
   A0C6 F1            [10]13655 	pop	af
   A0C7 C1            [10]13656 	pop	bc
   A0C8 18 46         [12]13657 	jr	00112$
                          13658 ;src/main.c:2729: case ST_quietoAbaj:  quieto(pro);      break;
   A0CA                   13659 00104$:
   A0CA C5            [11]13660 	push	bc
   A0CB C5            [11]13661 	push	bc
   A0CC CD B3 9F      [17]13662 	call	_quieto
   A0CF F1            [10]13663 	pop	af
   A0D0 C1            [10]13664 	pop	bc
   A0D1 18 3D         [12]13665 	jr	00112$
                          13666 ;src/main.c:2730: case ST_quietoArri:  quieto(pro);      break;
   A0D3                   13667 00105$:
   A0D3 C5            [11]13668 	push	bc
   A0D4 C5            [11]13669 	push	bc
   A0D5 CD B3 9F      [17]13670 	call	_quieto
   A0D8 F1            [10]13671 	pop	af
   A0D9 C1            [10]13672 	pop	bc
   A0DA 18 34         [12]13673 	jr	00112$
                          13674 ;src/main.c:2731: case ST_andando:     andando(pro);     break;
   A0DC                   13675 00106$:
   A0DC C5            [11]13676 	push	bc
   A0DD C5            [11]13677 	push	bc
   A0DE CD 96 9B      [17]13678 	call	_andando
   A0E1 F1            [10]13679 	pop	af
   A0E2 C1            [10]13680 	pop	bc
   A0E3 18 2B         [12]13681 	jr	00112$
                          13682 ;src/main.c:2732: case ST_atacando:     atacando(pro);     break;
   A0E5                   13683 00107$:
   A0E5 C5            [11]13684 	push	bc
   A0E6 C5            [11]13685 	push	bc
   A0E7 CD 4D 99      [17]13686 	call	_atacando
   A0EA F1            [10]13687 	pop	af
   A0EB C1            [10]13688 	pop	bc
   A0EC 18 22         [12]13689 	jr	00112$
                          13690 ;src/main.c:2733: case ST_atacandoBaj:     atacando(pro);     break;
   A0EE                   13691 00108$:
   A0EE C5            [11]13692 	push	bc
   A0EF C5            [11]13693 	push	bc
   A0F0 CD 4D 99      [17]13694 	call	_atacando
   A0F3 F1            [10]13695 	pop	af
   A0F4 C1            [10]13696 	pop	bc
   A0F5 18 19         [12]13697 	jr	00112$
                          13698 ;src/main.c:2734: case ST_atacandoSub:     atacando(pro);     break;
   A0F7                   13699 00109$:
   A0F7 C5            [11]13700 	push	bc
   A0F8 C5            [11]13701 	push	bc
   A0F9 CD 4D 99      [17]13702 	call	_atacando
   A0FC F1            [10]13703 	pop	af
   A0FD C1            [10]13704 	pop	bc
   A0FE 18 10         [12]13705 	jr	00112$
                          13706 ;src/main.c:2735: case ST_subiendo:    subiendo(pro);    break;
   A100                   13707 00110$:
   A100 C5            [11]13708 	push	bc
   A101 C5            [11]13709 	push	bc
   A102 CD E6 9E      [17]13710 	call	_subiendo
   A105 F1            [10]13711 	pop	af
   A106 C1            [10]13712 	pop	bc
   A107 18 07         [12]13713 	jr	00112$
                          13714 ;src/main.c:2736: case ST_bajando:     bajando(pro);     break;
   A109                   13715 00111$:
   A109 C5            [11]13716 	push	bc
   A10A C5            [11]13717 	push	bc
   A10B CD 58 9D      [17]13718 	call	_bajando
   A10E F1            [10]13719 	pop	af
   A10F C1            [10]13720 	pop	bc
                          13721 ;src/main.c:2737: }
   A110                   13722 00112$:
                          13723 ;src/main.c:2740: if(!pro->llavecogida)
   A110 C5            [11]13724 	push	bc
   A111 FD E1         [14]13725 	pop	iy
   A113 FD 5E 19      [19]13726 	ld	e,25 (iy)
                          13727 ;src/main.c:2741: comprobarLlave(pro->soy-1);
   A116 21 1B 00      [10]13728 	ld	hl,#0x001B
   A119 09            [11]13729 	add	hl,bc
   A11A 4D            [ 4]13730 	ld	c,l
   A11B 44            [ 4]13731 	ld	b,h
   A11C 0A            [ 7]13732 	ld	a,(bc)
   A11D 57            [ 4]13733 	ld	d,a
   A11E 15            [ 4]13734 	dec	d
                          13735 ;src/main.c:2740: if(!pro->llavecogida)
   A11F 7B            [ 4]13736 	ld	a,e
   A120 B7            [ 4]13737 	or	a, a
   A121 20 0A         [12]13738 	jr	NZ,00114$
                          13739 ;src/main.c:2741: comprobarLlave(pro->soy-1);
   A123 C5            [11]13740 	push	bc
   A124 D5            [11]13741 	push	de
   A125 33            [ 6]13742 	inc	sp
   A126 CD 4A 5D      [17]13743 	call	_comprobarLlave
   A129 33            [ 6]13744 	inc	sp
   A12A C1            [10]13745 	pop	bc
   A12B 18 08         [12]13746 	jr	00115$
   A12D                   13747 00114$:
                          13748 ;src/main.c:2743: comprobarPuerta(pro->soy-1);
   A12D C5            [11]13749 	push	bc
   A12E D5            [11]13750 	push	de
   A12F 33            [ 6]13751 	inc	sp
   A130 CD 60 5C      [17]13752 	call	_comprobarPuerta
   A133 33            [ 6]13753 	inc	sp
   A134 C1            [10]13754 	pop	bc
   A135                   13755 00115$:
                          13756 ;src/main.c:2745: comprobarRecargaMunicion(pro->soy-1);
   A135 0A            [ 7]13757 	ld	a,(bc)
   A136 47            [ 4]13758 	ld	b,a
   A137 05            [ 4]13759 	dec	b
   A138 C5            [11]13760 	push	bc
   A139 33            [ 6]13761 	inc	sp
   A13A CD 91 63      [17]13762 	call	_comprobarRecargaMunicion
   A13D 33            [ 6]13763 	inc	sp
   A13E C9            [10]13764 	ret
                          13765 ;src/main.c:2774: void inicializaJimmy(){
                          13766 ;	---------------------------------
                          13767 ; Function inicializaJimmy
                          13768 ; ---------------------------------
   A13F                   13769 _inicializaJimmy::
                          13770 ;src/main.c:2778: prota.identidad = 0;
   A13F 21 56 4F      [10]13771 	ld	hl,#(_prota + 0x0002)
   A142 36 00         [10]13772 	ld	(hl),#0x00
                          13773 ;src/main.c:2779: prota.x         = prota.px = 6;
   A144 21 57 4F      [10]13774 	ld	hl,#(_prota + 0x0003)
   A147 36 06         [10]13775 	ld	(hl),#0x06
   A149 21 54 4F      [10]13776 	ld	hl,#_prota
   A14C 36 06         [10]13777 	ld	(hl),#0x06
                          13778 ;src/main.c:2780: prota.y         = prota.py = 26;
   A14E 21 58 4F      [10]13779 	ld	hl,#(_prota + 0x0004)
   A151 36 1A         [10]13780 	ld	(hl),#0x1A
   A153 21 55 4F      [10]13781 	ld	hl,#(_prota + 0x0001)
   A156 36 1A         [10]13782 	ld	(hl),#0x1A
                          13783 ;src/main.c:2781: prota.fila = 0;
   A158 21 62 4F      [10]13784 	ld	hl,#(_prota + 0x000e)
   A15B 36 00         [10]13785 	ld	(hl),#0x00
                          13786 ;src/main.c:2782: prota.columna = 0;
   A15D 21 63 4F      [10]13787 	ld	hl,#(_prota + 0x000f)
   A160 36 00         [10]13788 	ld	(hl),#0x00
                          13789 ;src/main.c:2783: prota.abajo = 0;
   A162 21 64 4F      [10]13790 	ld	hl,#(_prota + 0x0010)
   A165 36 00         [10]13791 	ld	(hl),#0x00
                          13792 ;src/main.c:2784: prota.derecha = 0;
   A167 21 65 4F      [10]13793 	ld	hl,#(_prota + 0x0011)
   A16A 36 00         [10]13794 	ld	(hl),#0x00
                          13795 ;src/main.c:2785: prota.arriba = 0;
   A16C 21 67 4F      [10]13796 	ld	hl,#(_prota + 0x0013)
   A16F 36 00         [10]13797 	ld	(hl),#0x00
                          13798 ;src/main.c:2786: prota.izquierda = 0;
   A171 21 66 4F      [10]13799 	ld	hl,#(_prota + 0x0012)
   A174 36 00         [10]13800 	ld	(hl),#0x00
                          13801 ;src/main.c:2787: prota.mover     = NO;
   A176 21 5B 4F      [10]13802 	ld	hl,#(_prota + 0x0007)
   A179 36 00         [10]13803 	ld	(hl),#0x00
                          13804 ;src/main.c:2788: prota.nframe=0;
   A17B 21 5F 4F      [10]13805 	ld	hl,#(_prota + 0x000b)
   A17E 36 00         [10]13806 	ld	(hl),#0x00
                          13807 ;src/main.c:2789: prota.estado = ST_quieto;
   A180 21 5C 4F      [10]13808 	ld	hl,#(_prota + 0x0008)
   A183 36 00         [10]13809 	ld	(hl),#0x00
                          13810 ;src/main.c:2790: prota.mira   = M_abajo;
   A185 21 60 4F      [10]13811 	ld	hl,#(_prota + 0x000c)
   A188 36 02         [10]13812 	ld	(hl),#0x02
                          13813 ;src/main.c:2791: prota.frame    = &g_frames[4];
   A18A 21 E5 35      [10]13814 	ld	hl,#(_g_frames + 0x000c)
   A18D 22 5D 4F      [16]13815 	ld	((_prota + 0x0009)), hl
                          13816 ;src/main.c:2792: prota.direccion = 0;
   A190 21 61 4F      [10]13817 	ld	hl,#(_prota + 0x000d)
   A193 36 00         [10]13818 	ld	(hl),#0x00
                          13819 ;src/main.c:2793: prota.disparando = NO;
   A195 21 69 4F      [10]13820 	ld	hl,#(_prota + 0x0015)
   A198 36 00         [10]13821 	ld	(hl),#0x00
                          13822 ;src/main.c:2794: prota.contadorAtaque = 0;
   A19A 21 6B 4F      [10]13823 	ld	hl,#(_prota + 0x0017)
   A19D 36 00         [10]13824 	ld	(hl),#0x00
                          13825 ;src/main.c:2795: prota.llavecogida = NO;
   A19F 21 6D 4F      [10]13826 	ld	hl,#(_prota + 0x0019)
   A1A2 36 00         [10]13827 	ld	(hl),#0x00
                          13828 ;src/main.c:2796: prota.tiempoDisp=1;
   A1A4 21 6A 4F      [10]13829 	ld	hl,#(_prota + 0x0016)
   A1A7 36 01         [10]13830 	ld	(hl),#0x01
                          13831 ;src/main.c:2797: prota.soy=1;
   A1A9 21 6F 4F      [10]13832 	ld	hl,#(_prota + 0x001b)
   A1AC 36 01         [10]13833 	ld	(hl),#0x01
   A1AE C9            [10]13834 	ret
                          13835 ;src/main.c:2803: void inicializaObdulia(){
                          13836 ;	---------------------------------
                          13837 ; Function inicializaObdulia
                          13838 ; ---------------------------------
   A1AF                   13839 _inicializaObdulia::
                          13840 ;src/main.c:2807: protaDos.identidad = 1;
   A1AF 21 73 4F      [10]13841 	ld	hl,#(_protaDos + 0x0002)
   A1B2 36 01         [10]13842 	ld	(hl),#0x01
                          13843 ;src/main.c:2808: protaDos.x         = protaDos.px = 6*11;
   A1B4 21 74 4F      [10]13844 	ld	hl,#(_protaDos + 0x0003)
   A1B7 36 42         [10]13845 	ld	(hl),#0x42
   A1B9 21 71 4F      [10]13846 	ld	hl,#_protaDos
   A1BC 36 42         [10]13847 	ld	(hl),#0x42
                          13848 ;src/main.c:2809: protaDos.y         = protaDos.py = 40+(16*8);
   A1BE 21 75 4F      [10]13849 	ld	hl,#(_protaDos + 0x0004)
   A1C1 36 A8         [10]13850 	ld	(hl),#0xA8
   A1C3 21 72 4F      [10]13851 	ld	hl,#(_protaDos + 0x0001)
   A1C6 36 A8         [10]13852 	ld	(hl),#0xA8
                          13853 ;src/main.c:2810: protaDos.fila = 0;
   A1C8 21 7F 4F      [10]13854 	ld	hl,#(_protaDos + 0x000e)
   A1CB 36 00         [10]13855 	ld	(hl),#0x00
                          13856 ;src/main.c:2811: protaDos.columna = 0;
   A1CD 21 80 4F      [10]13857 	ld	hl,#(_protaDos + 0x000f)
   A1D0 36 00         [10]13858 	ld	(hl),#0x00
                          13859 ;src/main.c:2812: protaDos.abajo = 0;
   A1D2 21 81 4F      [10]13860 	ld	hl,#(_protaDos + 0x0010)
   A1D5 36 00         [10]13861 	ld	(hl),#0x00
                          13862 ;src/main.c:2813: protaDos.derecha = 0;
   A1D7 21 82 4F      [10]13863 	ld	hl,#(_protaDos + 0x0011)
   A1DA 36 00         [10]13864 	ld	(hl),#0x00
                          13865 ;src/main.c:2814: protaDos.arriba = 0;
   A1DC 21 84 4F      [10]13866 	ld	hl,#(_protaDos + 0x0013)
   A1DF 36 00         [10]13867 	ld	(hl),#0x00
                          13868 ;src/main.c:2815: protaDos.izquierda = 0;
   A1E1 21 83 4F      [10]13869 	ld	hl,#(_protaDos + 0x0012)
   A1E4 36 00         [10]13870 	ld	(hl),#0x00
                          13871 ;src/main.c:2816: protaDos.mover     = NO;
   A1E6 21 78 4F      [10]13872 	ld	hl,#(_protaDos + 0x0007)
   A1E9 36 00         [10]13873 	ld	(hl),#0x00
                          13874 ;src/main.c:2817: protaDos.nframe=0;
   A1EB 21 7C 4F      [10]13875 	ld	hl,#(_protaDos + 0x000b)
   A1EE 36 00         [10]13876 	ld	(hl),#0x00
                          13877 ;src/main.c:2818: protaDos.estado = ST_quieto;
   A1F0 21 79 4F      [10]13878 	ld	hl,#(_protaDos + 0x0008)
   A1F3 36 00         [10]13879 	ld	(hl),#0x00
                          13880 ;src/main.c:2819: protaDos.mira   = M_abajo;
   A1F5 21 7D 4F      [10]13881 	ld	hl,#(_protaDos + 0x000c)
   A1F8 36 02         [10]13882 	ld	(hl),#0x02
                          13883 ;src/main.c:2820: protaDos.frame    = &g_framesDos[4];
   A1FA 21 06 36      [10]13884 	ld	hl,#(_g_framesDos + 0x000c)
   A1FD 22 7A 4F      [16]13885 	ld	((_protaDos + 0x0009)), hl
                          13886 ;src/main.c:2821: protaDos.direccion = 0;
   A200 21 7E 4F      [10]13887 	ld	hl,#(_protaDos + 0x000d)
   A203 36 00         [10]13888 	ld	(hl),#0x00
                          13889 ;src/main.c:2822: protaDos.disparando = NO;
   A205 21 86 4F      [10]13890 	ld	hl,#(_protaDos + 0x0015)
   A208 36 00         [10]13891 	ld	(hl),#0x00
                          13892 ;src/main.c:2823: protaDos.contadorAtaque = 0;
   A20A 21 88 4F      [10]13893 	ld	hl,#(_protaDos + 0x0017)
   A20D 36 00         [10]13894 	ld	(hl),#0x00
                          13895 ;src/main.c:2824: protaDos.llavecogida = NO;
   A20F 21 8A 4F      [10]13896 	ld	hl,#(_protaDos + 0x0019)
   A212 36 00         [10]13897 	ld	(hl),#0x00
                          13898 ;src/main.c:2825: protaDos.tiempoDisp=1;
   A214 21 87 4F      [10]13899 	ld	hl,#(_protaDos + 0x0016)
   A217 36 01         [10]13900 	ld	(hl),#0x01
                          13901 ;src/main.c:2826: protaDos.soy=2;
   A219 21 8C 4F      [10]13902 	ld	hl,#(_protaDos + 0x001b)
   A21C 36 02         [10]13903 	ld	(hl),#0x02
   A21E C9            [10]13904 	ret
                          13905 ;src/main.c:2833: void inicializar() {
                          13906 ;	---------------------------------
                          13907 ; Function inicializar
                          13908 ; ---------------------------------
   A21F                   13909 _inicializar::
                          13910 ;src/main.c:2835: cpct_disableFirmware();
   A21F CD B3 42      [17]13911 	call	_cpct_disableFirmware
                          13912 ;src/main.c:2836: cpct_setVideoMode(0);
   A222 2E 00         [ 7]13913 	ld	l,#0x00
   A224 CD 1C 42      [17]13914 	call	_cpct_setVideoMode
                          13915 ;src/main.c:2837: cpct_setBorder(HW_BLACK);
   A227 21 10 14      [10]13916 	ld	hl,#0x1410
   A22A E5            [11]13917 	push	hl
   A22B CD AF 36      [17]13918 	call	_cpct_setPALColour
                          13919 ;src/main.c:2838: cpct_setPalette(pre_palette, 16);
   A22E 21 10 00      [10]13920 	ld	hl,#0x0010
   A231 E5            [11]13921 	push	hl
   A232 21 02 32      [10]13922 	ld	hl,#_pre_palette
   A235 E5            [11]13923 	push	hl
   A236 CD 8C 36      [17]13924 	call	_cpct_setPalette
                          13925 ;src/main.c:2840: prota.controles = 0;
   A239 21 6E 4F      [10]13926 	ld	hl,#(_prota + 0x001a)
   A23C 36 00         [10]13927 	ld	(hl),#0x00
                          13928 ;src/main.c:2841: protaDos.controles = 1;
   A23E 21 8B 4F      [10]13929 	ld	hl,#(_protaDos + 0x001a)
   A241 36 01         [10]13930 	ld	(hl),#0x01
                          13931 ;src/main.c:2844: cpct_etm_setTileset2x4(pre_tileset);
   A243 21 08 18      [10]13932 	ld	hl,#_pre_tileset
   A246 CD 3C 40      [17]13933 	call	_cpct_etm_setTileset2x4
                          13934 ;src/main.c:2845: mapa = pre_terrain;
   A249 21 00 10      [10]13935 	ld	hl,#_pre_terrain+0
   A24C 22 A3 4F      [16]13936 	ld	(_mapa),hl
                          13937 ;src/main.c:2846: seleccionMusica = 0;
   A24F 21 AD 4F      [10]13938 	ld	hl,#_seleccionMusica + 0
   A252 36 00         [10]13939 	ld	(hl), #0x00
                          13940 ;src/main.c:2847: musica = 0;
   A254 21 AE 4F      [10]13941 	ld	hl,#_musica + 0
   A257 36 00         [10]13942 	ld	(hl), #0x00
                          13943 ;src/main.c:2848: estado = 3; 
   A259 21 AA 4F      [10]13944 	ld	hl,#_estado + 0
   A25C 36 03         [10]13945 	ld	(hl), #0x03
                          13946 ;src/main.c:2849: seleccion = 0;
   A25E 21 AB 4F      [10]13947 	ld	hl,#_seleccion + 0
   A261 36 00         [10]13948 	ld	(hl), #0x00
                          13949 ;src/main.c:2850: seleccionControles = 0;
   A263 21 AC 4F      [10]13950 	ld	hl,#_seleccionControles + 0
   A266 36 00         [10]13951 	ld	(hl), #0x00
                          13952 ;src/main.c:2851: keyCounter = 0; 
   A268 21 AF 4F      [10]13953 	ld	hl,#_keyCounter + 0
   A26B 36 00         [10]13954 	ld	(hl), #0x00
                          13955 ;src/main.c:2852: cpct_akp_musicInit(pre_music_presentation);
   A26D 21 00 02      [10]13956 	ld	hl,#_pre_music_presentation
   A270 E5            [11]13957 	push	hl
   A271 CD C0 3D      [17]13958 	call	_cpct_akp_musicInit
   A274 F1            [10]13959 	pop	af
                          13960 ;src/main.c:2854: cpct_setInterruptHandler(intHandler);
   A275 21 14 35      [10]13961 	ld	hl,#_intHandler
   A278 CD 96 43      [17]13962 	call	_cpct_setInterruptHandler
                          13963 ;src/main.c:2861: disparo.sprite = pre_disparo;
   A27B 21 9E 17      [10]13964 	ld	hl,#_pre_disparo
   A27E 22 93 4F      [16]13965 	ld	((_disparo + 0x0005)), hl
                          13966 ;src/main.c:2862: disparo.x = 0;
   A281 21 8E 4F      [10]13967 	ld	hl,#_disparo
   A284 36 00         [10]13968 	ld	(hl),#0x00
                          13969 ;src/main.c:2863: disparo.y = 0;
   A286 21 8F 4F      [10]13970 	ld	hl,#(_disparo + 0x0001)
   A289 36 00         [10]13971 	ld	(hl),#0x00
                          13972 ;src/main.c:2864: disparo.pegado=0;
   A28B 21 95 4F      [10]13973 	ld	hl,#(_disparo + 0x0007)
   A28E 36 00         [10]13974 	ld	(hl),#0x00
                          13975 ;src/main.c:2866: disparoDos.sprite = pre_disparo;
   A290 21 9E 17      [10]13976 	ld	hl,#_pre_disparo
   A293 22 9B 4F      [16]13977 	ld	((_disparoDos + 0x0005)), hl
                          13978 ;src/main.c:2867: disparoDos.x = 0;
   A296 21 96 4F      [10]13979 	ld	hl,#_disparoDos
   A299 36 00         [10]13980 	ld	(hl),#0x00
                          13981 ;src/main.c:2868: disparoDos.y = 0;
   A29B 21 97 4F      [10]13982 	ld	hl,#(_disparoDos + 0x0001)
   A29E 36 00         [10]13983 	ld	(hl),#0x00
                          13984 ;src/main.c:2869: disparoDos.pegado=0;
   A2A0 21 9D 4F      [10]13985 	ld	hl,#(_disparoDos + 0x0007)
   A2A3 36 00         [10]13986 	ld	(hl),#0x00
                          13987 ;src/main.c:2871: ronda=0;
   A2A5 21 B0 4F      [10]13988 	ld	hl,#_ronda + 0
   A2A8 36 00         [10]13989 	ld	(hl), #0x00
                          13990 ;src/main.c:2873: dibujarPortada();
   A2AA CD 05 76      [17]13991 	call	_dibujarPortada
   A2AD C9            [10]13992 	ret
                          13993 ;src/main.c:2885: void inicializarPartida(){
                          13994 ;	---------------------------------
                          13995 ; Function inicializarPartida
                          13996 ; ---------------------------------
   A2AE                   13997 _inicializarPartida::
                          13998 ;src/main.c:2889: if(ronda == 0 && estado == 0){
   A2AE 3A B0 4F      [13]13999 	ld	a,(#_ronda + 0)
   A2B1 B7            [ 4]14000 	or	a, a
   A2B2 20 3D         [12]14001 	jr	NZ,00108$
   A2B4 3A AA 4F      [13]14002 	ld	a,(#_estado + 0)
   A2B7 B7            [ 4]14003 	or	a, a
   A2B8 20 37         [12]14004 	jr	NZ,00108$
                          14005 ;src/main.c:2891: if(musica) cpct_akp_stop();
   A2BA 3A AE 4F      [13]14006 	ld	a,(#_musica + 0)
   A2BD B7            [ 4]14007 	or	a, a
   A2BE 28 03         [12]14008 	jr	Z,00102$
   A2C0 CD 20 3E      [17]14009 	call	_cpct_akp_stop
   A2C3                   14010 00102$:
                          14011 ;src/main.c:2892: if(musica){cpct_akp_stop();musica=0;}
   A2C3 3A AE 4F      [13]14012 	ld	a,(#_musica + 0)
   A2C6 B7            [ 4]14013 	or	a, a
   A2C7 28 08         [12]14014 	jr	Z,00104$
   A2C9 CD 20 3E      [17]14015 	call	_cpct_akp_stop
   A2CC 21 AE 4F      [10]14016 	ld	hl,#_musica + 0
   A2CF 36 00         [10]14017 	ld	(hl), #0x00
   A2D1                   14018 00104$:
                          14019 ;src/main.c:2893: cpct_akp_musicInit(pre_music_battle); 
   A2D1 21 AF 05      [10]14020 	ld	hl,#_pre_music_battle
   A2D4 E5            [11]14021 	push	hl
   A2D5 CD C0 3D      [17]14022 	call	_cpct_akp_musicInit
   A2D8 F1            [10]14023 	pop	af
                          14024 ;src/main.c:2894: if(seleccionMusica)musica = 1;
   A2D9 3A AD 4F      [13]14025 	ld	a,(#_seleccionMusica + 0)
   A2DC B7            [ 4]14026 	or	a, a
   A2DD 28 05         [12]14027 	jr	Z,00106$
   A2DF 21 AE 4F      [10]14028 	ld	hl,#_musica + 0
   A2E2 36 01         [10]14029 	ld	(hl), #0x01
   A2E4                   14030 00106$:
                          14031 ;src/main.c:2895: estado = 6;
   A2E4 21 AA 4F      [10]14032 	ld	hl,#_estado + 0
   A2E7 36 06         [10]14033 	ld	(hl), #0x06
                          14034 ;src/main.c:2896: dibujarAyuda();
   A2E9 CD 18 67      [17]14035 	call	_dibujarAyuda
                          14036 ;src/main.c:2897: lastWinner = 0;
   A2EC 21 A8 4F      [10]14037 	ld	hl,#_lastWinner + 0
   A2EF 36 00         [10]14038 	ld	(hl), #0x00
   A2F1                   14039 00108$:
                          14040 ;src/main.c:2904: if(estado == 1){
   A2F1 3A AA 4F      [13]14041 	ld	a,(#_estado + 0)
   A2F4 3D            [ 4]14042 	dec	a
   A2F5 20 40         [12]14043 	jr	NZ,00114$
                          14044 ;src/main.c:2906: dibujarGetPsyched();
   A2F7 CD D7 6D      [17]14045 	call	_dibujarGetPsyched
                          14046 ;src/main.c:2907: dibujarMapa();
   A2FA CD 3D 64      [17]14047 	call	_dibujarMapa
                          14048 ;src/main.c:2908: prota.llavecogida = 0;
   A2FD 21 6D 4F      [10]14049 	ld	hl,#(_prota + 0x0019)
   A300 36 00         [10]14050 	ld	(hl),#0x00
                          14051 ;src/main.c:2909: protaDos.llavecogida = 0;
   A302 21 8A 4F      [10]14052 	ld	hl,#(_protaDos + 0x0019)
   A305 36 00         [10]14053 	ld	(hl),#0x00
                          14054 ;src/main.c:2910: borrarProta();
   A307 CD 43 79      [17]14055 	call	_borrarProta
                          14056 ;src/main.c:2911: borrarProtaDos();
   A30A CD 7E 79      [17]14057 	call	_borrarProtaDos
                          14058 ;src/main.c:2912: inicializaObdulia();
   A30D CD AF A1      [17]14059 	call	_inicializaObdulia
                          14060 ;src/main.c:2913: inicializaJimmy();
   A310 CD 3F A1      [17]14061 	call	_inicializaJimmy
                          14062 ;src/main.c:2915: if(ronda == 0){
   A313 3A B0 4F      [13]14063 	ld	a,(#_ronda + 0)
   A316 B7            [ 4]14064 	or	a, a
   A317 20 1B         [12]14065 	jr	NZ,00111$
                          14066 ;src/main.c:2917: prota.marcador=0;
   A319 21 70 4F      [10]14067 	ld	hl,#(_prota + 0x001c)
   A31C 36 00         [10]14068 	ld	(hl),#0x00
                          14069 ;src/main.c:2918: protaDos.marcador=0;
   A31E 21 8D 4F      [10]14070 	ld	hl,#(_protaDos + 0x001c)
   A321 36 00         [10]14071 	ld	(hl),#0x00
                          14072 ;src/main.c:2920: sumaMarcador(1, 0);//Para poner el prota a 0
   A323 21 01 00      [10]14073 	ld	hl,#0x0001
   A326 E5            [11]14074 	push	hl
   A327 CD 5C 5A      [17]14075 	call	_sumaMarcador
                          14076 ;src/main.c:2921: sumaMarcador(2, 0);//Para poner el protaDos a 0
   A32A 21 02 00      [10]14077 	ld	hl, #0x0002
   A32D E3            [19]14078 	ex	(sp),hl
   A32E CD 5C 5A      [17]14079 	call	_sumaMarcador
   A331 F1            [10]14080 	pop	af
   A332 18 03         [12]14081 	jr	00114$
   A334                   14082 00111$:
                          14083 ;src/main.c:2925: dibujarMarcador();
   A334 CD DF 59      [17]14084 	call	_dibujarMarcador
   A337                   14085 00114$:
                          14086 ;src/main.c:2929: if(ronda<10 && estado == 1){
   A337 3A B0 4F      [13]14087 	ld	a,(#_ronda + 0)
   A33A D6 0A         [ 7]14088 	sub	a, #0x0A
   A33C D0            [11]14089 	ret	NC
   A33D 3A AA 4F      [13]14090 	ld	a,(#_estado + 0)
   A340 3D            [ 4]14091 	dec	a
   A341 C0            [11]14092 	ret	NZ
                          14093 ;src/main.c:2931: dibujaBloques();
   A342 CD 27 54      [17]14094 	call	_dibujaBloques
                          14095 ;src/main.c:2932: bloquearPuertas();
   A345 CD CC 57      [17]14096 	call	_bloquearPuertas
                          14097 ;src/main.c:2933: borrarLlave(2);
   A348 3E 02         [ 7]14098 	ld	a,#0x02
   A34A F5            [11]14099 	push	af
   A34B 33            [ 6]14100 	inc	sp
   A34C CD 9D 56      [17]14101 	call	_borrarLlave
   A34F 33            [ 6]14102 	inc	sp
                          14103 ;src/main.c:2934: borrarLlave(3);
   A350 3E 03         [ 7]14104 	ld	a,#0x03
   A352 F5            [11]14105 	push	af
   A353 33            [ 6]14106 	inc	sp
   A354 CD 9D 56      [17]14107 	call	_borrarLlave
   A357 33            [ 6]14108 	inc	sp
                          14109 ;src/main.c:2935: dibujarLlave(0);
   A358 AF            [ 4]14110 	xor	a, a
   A359 F5            [11]14111 	push	af
   A35A 33            [ 6]14112 	inc	sp
   A35B CD 6E 55      [17]14113 	call	_dibujarLlave
   A35E 33            [ 6]14114 	inc	sp
                          14115 ;src/main.c:2936: dibujarLlave(2);
   A35F 3E 02         [ 7]14116 	ld	a,#0x02
   A361 F5            [11]14117 	push	af
   A362 33            [ 6]14118 	inc	sp
   A363 CD 6E 55      [17]14119 	call	_dibujarLlave
   A366 33            [ 6]14120 	inc	sp
                          14121 ;src/main.c:2937: recargarMunicion(0);
   A367 AF            [ 4]14122 	xor	a, a
   A368 F5            [11]14123 	push	af
   A369 33            [ 6]14124 	inc	sp
   A36A CD 5D 63      [17]14125 	call	_recargarMunicion
   A36D 33            [ 6]14126 	inc	sp
                          14127 ;src/main.c:2938: recargarMunicion(1);
   A36E 3E 01         [ 7]14128 	ld	a,#0x01
   A370 F5            [11]14129 	push	af
   A371 33            [ 6]14130 	inc	sp
   A372 CD 5D 63      [17]14131 	call	_recargarMunicion
   A375 33            [ 6]14132 	inc	sp
   A376 C9            [10]14133 	ret
                          14134 ;src/main.c:2946: void main(void) {
                          14135 ;	---------------------------------
                          14136 ; Function main
                          14137 ; ---------------------------------
   A377                   14138 _main::
                          14139 ;src/main.c:2950: inicializar();
   A377 CD 1F A2      [17]14140 	call	_inicializar
                          14141 ;src/main.c:2952: while (1){
   A37A                   14142 00139$:
                          14143 ;src/main.c:2953: if(estado!=1){
   A37A 3A AA 4F      [13]14144 	ld	a,(#_estado + 0)
   A37D 3D            [ 4]14145 	dec	a
   A37E 28 16         [12]14146 	jr	Z,00102$
                          14147 ;src/main.c:2954: tiempo++;
   A380 21 B3 4F      [10]14148 	ld	hl, #_tiempo+0
   A383 34            [11]14149 	inc	(hl)
   A384 20 10         [12]14150 	jr	NZ,00216$
   A386 21 B4 4F      [10]14151 	ld	hl, #_tiempo+1
   A389 34            [11]14152 	inc	(hl)
   A38A 20 0A         [12]14153 	jr	NZ,00216$
   A38C 21 B5 4F      [10]14154 	ld	hl, #_tiempo+2
   A38F 34            [11]14155 	inc	(hl)
   A390 20 04         [12]14156 	jr	NZ,00216$
   A392 21 B6 4F      [10]14157 	ld	hl, #_tiempo+3
   A395 34            [11]14158 	inc	(hl)
   A396                   14159 00216$:
   A396                   14160 00102$:
                          14161 ;src/main.c:2958: comprobarTeclado();
   A396 CD 48 89      [17]14162 	call	_comprobarTeclado
                          14163 ;src/main.c:2962: if(prota.disparando==SI && protaDos.disparando==SI){
   A399 3A 69 4F      [13]14164 	ld	a, (#(_prota + 0x0015) + 0)
   A39C 3D            [ 4]14165 	dec	a
   A39D 20 09         [12]14166 	jr	NZ,00104$
   A39F 3A 86 4F      [13]14167 	ld	a, (#(_protaDos + 0x0015) + 0)
   A3A2 3D            [ 4]14168 	dec	a
   A3A3 20 03         [12]14169 	jr	NZ,00104$
                          14170 ;src/main.c:2963: compruebaDisparos();
   A3A5 CD F4 7A      [17]14171 	call	_compruebaDisparos
   A3A8                   14172 00104$:
                          14173 ;src/main.c:2967: if(prota.disparando == SI){
   A3A8 21 69 4F      [10]14174 	ld	hl, #(_prota + 0x0015) + 0
   A3AB 4E            [ 7]14175 	ld	c,(hl)
                          14176 ;src/main.c:2972: prota.tiempoDisp=1;
                          14177 ;src/main.c:2967: if(prota.disparando == SI){
   A3AC 0D            [ 4]14178 	dec	c
   A3AD 20 3D         [12]14179 	jr	NZ,00114$
                          14180 ;src/main.c:2969: atacar(prota.soy);
   A3AF 01 6F 4F      [10]14181 	ld	bc,#_prota + 27
   A3B2 0A            [ 7]14182 	ld	a,(bc)
   A3B3 57            [ 4]14183 	ld	d,a
   A3B4 C5            [11]14184 	push	bc
   A3B5 D5            [11]14185 	push	de
   A3B6 33            [ 6]14186 	inc	sp
   A3B7 CD 24 81      [17]14187 	call	_atacar
   A3BA 33            [ 6]14188 	inc	sp
   A3BB C1            [10]14189 	pop	bc
                          14190 ;src/main.c:2962: if(prota.disparando==SI && protaDos.disparando==SI){
   A3BC 21 69 4F      [10]14191 	ld	hl, #(_prota + 0x0015) + 0
   A3BF 5E            [ 7]14192 	ld	e,(hl)
                          14193 ;src/main.c:2970: if(prota.disparando==SI && prota.miraAtacando==M_abajo || prota.disparando==SI &&  prota.miraAtacando==M_arriba)
   A3C0 21 6C 4F      [10]14194 	ld	hl,#_prota + 24
   A3C3 1D            [ 4]14195 	dec	e
   A3C4 20 04         [12]14196 	jr	NZ,00223$
   A3C6 3E 01         [ 7]14197 	ld	a,#0x01
   A3C8 18 01         [12]14198 	jr	00224$
   A3CA                   14199 00223$:
   A3CA AF            [ 4]14200 	xor	a,a
   A3CB                   14201 00224$:
   A3CB 5F            [ 4]14202 	ld	e,a
   A3CC B7            [ 4]14203 	or	a, a
   A3CD 28 05         [12]14204 	jr	Z,00110$
   A3CF 7E            [ 7]14205 	ld	a,(hl)
   A3D0 D6 02         [ 7]14206 	sub	a, #0x02
   A3D2 28 09         [12]14207 	jr	Z,00106$
   A3D4                   14208 00110$:
   A3D4 7B            [ 4]14209 	ld	a,e
   A3D5 B7            [ 4]14210 	or	a, a
   A3D6 28 0D         [12]14211 	jr	Z,00107$
   A3D8 7E            [ 7]14212 	ld	a,(hl)
   A3D9 D6 03         [ 7]14213 	sub	a, #0x03
   A3DB 20 08         [12]14214 	jr	NZ,00107$
   A3DD                   14215 00106$:
                          14216 ;src/main.c:2971: atacar(prota.soy);
   A3DD 0A            [ 7]14217 	ld	a,(bc)
   A3DE 47            [ 4]14218 	ld	b,a
   A3DF C5            [11]14219 	push	bc
   A3E0 33            [ 6]14220 	inc	sp
   A3E1 CD 24 81      [17]14221 	call	_atacar
   A3E4 33            [ 6]14222 	inc	sp
   A3E5                   14223 00107$:
                          14224 ;src/main.c:2972: prota.tiempoDisp=1;
   A3E5 21 6A 4F      [10]14225 	ld	hl,#(_prota + 0x0016)
   A3E8 36 01         [10]14226 	ld	(hl),#0x01
   A3EA 18 0E         [12]14227 	jr	00115$
   A3EC                   14228 00114$:
                          14229 ;src/main.c:2976: if(prota.tiempoDisp<100)
   A3EC 21 6A 4F      [10]14230 	ld	hl, #(_prota + 0x0016) + 0
   A3EF 4E            [ 7]14231 	ld	c,(hl)
   A3F0 79            [ 4]14232 	ld	a,c
   A3F1 D6 64         [ 7]14233 	sub	a, #0x64
   A3F3 30 05         [12]14234 	jr	NC,00115$
                          14235 ;src/main.c:2977: prota.tiempoDisp++;
   A3F5 0C            [ 4]14236 	inc	c
   A3F6 21 6A 4F      [10]14237 	ld	hl,#(_prota + 0x0016)
   A3F9 71            [ 7]14238 	ld	(hl),c
   A3FA                   14239 00115$:
                          14240 ;src/main.c:2980: if(protaDos.disparando == SI){
   A3FA 21 86 4F      [10]14241 	ld	hl, #(_protaDos + 0x0015) + 0
   A3FD 5E            [ 7]14242 	ld	e,(hl)
                          14243 ;src/main.c:2985: protaDos.tiempoDisp=1;
   A3FE 01 87 4F      [10]14244 	ld	bc,#_protaDos + 22
                          14245 ;src/main.c:2980: if(protaDos.disparando == SI){
   A401 1D            [ 4]14246 	dec	e
   A402 20 3E         [12]14247 	jr	NZ,00124$
                          14248 ;src/main.c:2982: atacar(protaDos.soy);
   A404 21 8C 4F      [10]14249 	ld	hl, #(_protaDos + 0x001b) + 0
   A407 56            [ 7]14250 	ld	d,(hl)
   A408 C5            [11]14251 	push	bc
   A409 D5            [11]14252 	push	de
   A40A 33            [ 6]14253 	inc	sp
   A40B CD 24 81      [17]14254 	call	_atacar
   A40E 33            [ 6]14255 	inc	sp
   A40F C1            [10]14256 	pop	bc
                          14257 ;src/main.c:2980: if(protaDos.disparando == SI){
   A410 21 86 4F      [10]14258 	ld	hl, #(_protaDos + 0x0015) + 0
   A413 5E            [ 7]14259 	ld	e,(hl)
                          14260 ;src/main.c:2983: if(protaDos.disparando==SI && protaDos.miraAtacando==M_abajo || protaDos.disparando==SI &&  protaDos.miraAtacando==M_arriba)
   A414 21 89 4F      [10]14261 	ld	hl,#_protaDos + 24
   A417 1D            [ 4]14262 	dec	e
   A418 20 04         [12]14263 	jr	NZ,00230$
   A41A 3E 01         [ 7]14264 	ld	a,#0x01
   A41C 18 01         [12]14265 	jr	00231$
   A41E                   14266 00230$:
   A41E AF            [ 4]14267 	xor	a,a
   A41F                   14268 00231$:
   A41F 5F            [ 4]14269 	ld	e,a
   A420 B7            [ 4]14270 	or	a, a
   A421 28 05         [12]14271 	jr	Z,00120$
   A423 7E            [ 7]14272 	ld	a,(hl)
   A424 D6 02         [ 7]14273 	sub	a, #0x02
   A426 28 09         [12]14274 	jr	Z,00116$
   A428                   14275 00120$:
   A428 7B            [ 4]14276 	ld	a,e
   A429 B7            [ 4]14277 	or	a, a
   A42A 28 11         [12]14278 	jr	Z,00117$
   A42C 7E            [ 7]14279 	ld	a,(hl)
   A42D D6 03         [ 7]14280 	sub	a, #0x03
   A42F 20 0C         [12]14281 	jr	NZ,00117$
   A431                   14282 00116$:
                          14283 ;src/main.c:2984: atacar(protaDos.soy);
   A431 21 8C 4F      [10]14284 	ld	hl, #(_protaDos + 0x001b) + 0
   A434 56            [ 7]14285 	ld	d,(hl)
   A435 C5            [11]14286 	push	bc
   A436 D5            [11]14287 	push	de
   A437 33            [ 6]14288 	inc	sp
   A438 CD 24 81      [17]14289 	call	_atacar
   A43B 33            [ 6]14290 	inc	sp
   A43C C1            [10]14291 	pop	bc
   A43D                   14292 00117$:
                          14293 ;src/main.c:2985: protaDos.tiempoDisp=1;
   A43D 3E 01         [ 7]14294 	ld	a,#0x01
   A43F 02            [ 7]14295 	ld	(bc),a
   A440 18 09         [12]14296 	jr	00125$
   A442                   14297 00124$:
                          14298 ;src/main.c:2989: if(protaDos.tiempoDisp<100)
   A442 0A            [ 7]14299 	ld	a,(bc)
   A443 5F            [ 4]14300 	ld	e,a
   A444 D6 64         [ 7]14301 	sub	a, #0x64
   A446 30 03         [12]14302 	jr	NC,00125$
                          14303 ;src/main.c:2990: protaDos.tiempoDisp++;
   A448 1C            [ 4]14304 	inc	e
   A449 7B            [ 4]14305 	ld	a,e
   A44A 02            [ 7]14306 	ld	(bc),a
   A44B                   14307 00125$:
                          14308 ;src/main.c:2995: if(estado == 0 || estado == 2 || estado == 4){
   A44B 3A AA 4F      [13]14309 	ld	a,(#_estado + 0)
   A44E B7            [ 4]14310 	or	a, a
   A44F 28 0B         [12]14311 	jr	Z,00128$
   A451 3A AA 4F      [13]14312 	ld	a,(#_estado + 0)
   A454 FE 02         [ 7]14313 	cp	a,#0x02
   A456 28 04         [12]14314 	jr	Z,00128$
   A458 D6 04         [ 7]14315 	sub	a, #0x04
   A45A 20 0E         [12]14316 	jr	NZ,00129$
   A45C                   14317 00128$:
                          14318 ;src/main.c:2996: cpct_waitVSYNC();
   A45C CD 14 42      [17]14319 	call	_cpct_waitVSYNC
                          14320 ;src/main.c:2999: if(keyCounter<10)
   A45F 3A AF 4F      [13]14321 	ld	a,(#_keyCounter + 0)
   A462 D6 0A         [ 7]14322 	sub	a, #0x0A
   A464 30 04         [12]14323 	jr	NC,00129$
                          14324 ;src/main.c:3000: keyCounter++;
   A466 21 AF 4F      [10]14325 	ld	hl, #_keyCounter+0
   A469 34            [11]14326 	inc	(hl)
   A46A                   14327 00129$:
                          14328 ;src/main.c:3004: if(estado == 1){
   A46A 3A AA 4F      [13]14329 	ld	a,(#_estado + 0)
   A46D 3D            [ 4]14330 	dec	a
   A46E C2 7A A3      [10]14331 	jp	NZ,00139$
                          14332 ;src/main.c:3006: ejecutarEstado(1);
   A471 3E 01         [ 7]14333 	ld	a,#0x01
   A473 F5            [11]14334 	push	af
   A474 33            [ 6]14335 	inc	sp
   A475 CD 83 A0      [17]14336 	call	_ejecutarEstado
   A478 33            [ 6]14337 	inc	sp
                          14338 ;src/main.c:3007: ejecutarEstado(2);
   A479 3E 02         [ 7]14339 	ld	a,#0x02
   A47B F5            [11]14340 	push	af
   A47C 33            [ 6]14341 	inc	sp
   A47D CD 83 A0      [17]14342 	call	_ejecutarEstado
   A480 33            [ 6]14343 	inc	sp
                          14344 ;src/main.c:3009: if (protaDos.mover) {
   A481 3A 78 4F      [13]14345 	ld	a, (#(_protaDos + 0x0007) + 0)
   A484 B7            [ 4]14346 	or	a, a
   A485 28 0E         [12]14347 	jr	Z,00133$
                          14348 ;src/main.c:3011: seleccionarSpriteProtaDos();
   A487 CD F2 52      [17]14349 	call	_seleccionarSpriteProtaDos
                          14350 ;src/main.c:3012: cpct_waitVSYNC();
   A48A CD 14 42      [17]14351 	call	_cpct_waitVSYNC
                          14352 ;src/main.c:3013: redibujarProtaDos();
   A48D CD CD 79      [17]14353 	call	_redibujarProtaDos
                          14354 ;src/main.c:3014: protaDos.mover = NO;
   A490 21 78 4F      [10]14355 	ld	hl,#(_protaDos + 0x0007)
   A493 36 00         [10]14356 	ld	(hl),#0x00
   A495                   14357 00133$:
                          14358 ;src/main.c:3016: if (prota.mover) {
   A495 3A 5B 4F      [13]14359 	ld	a, (#(_prota + 0x0007) + 0)
   A498 B7            [ 4]14360 	or	a, a
   A499 CA 7A A3      [10]14361 	jp	Z,00139$
                          14362 ;src/main.c:3018: seleccionarSpriteProta();
   A49C CD 69 52      [17]14363 	call	_seleccionarSpriteProta
                          14364 ;src/main.c:3019: cpct_waitVSYNC();
   A49F CD 14 42      [17]14365 	call	_cpct_waitVSYNC
                          14366 ;src/main.c:3020: redibujarProta();
   A4A2 CD B9 79      [17]14367 	call	_redibujarProta
                          14368 ;src/main.c:3021: prota.mover = NO;
   A4A5 21 5B 4F      [10]14369 	ld	hl,#(_prota + 0x0007)
   A4A8 36 00         [10]14370 	ld	(hl),#0x00
   A4AA C3 7A A3      [10]14371 	jp	00139$
                          14372 	.area _CODE
                          14373 	.area _INITIALIZER
   51DC                   14374 __xinit__tiempo:
   51DC 02 00 00 00       14375 	.byte #0x02,#0x00,#0x00,#0x00	; 2
   51E0                   14376 __xinit__encontrado:
   51E0 01                14377 	.db #0x01	; 1
                          14378 	.area _CABS (ABS)
