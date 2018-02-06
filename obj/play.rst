ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .globl cpct_akp_musicPlay_asm
                              2 
   367C                       3 _play::
   367C D9            [ 4]    4     exx
   367D 08            [ 4]    5     ex af', af
   367E F5            [11]    6     push af
   367F C5            [11]    7     push bc
   3680 D5            [11]    8     push de
   3681 E5            [11]    9     push hl
                             10 
   3682 CD BD 36      [17]   11     call cpct_akp_musicPlay_asm
                             12 
   3685 E1            [10]   13     pop hl
   3686 D1            [10]   14     pop de
   3687 C1            [10]   15     pop bc
   3688 F1            [10]   16     pop af
   3689 08            [ 4]   17     ex af', af
   368A D9            [ 4]   18     exx
                             19 
   368B C9            [10]   20     ret
