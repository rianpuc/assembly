.text
.globl _start

_start:
    ori x8, x0, 0x01 
    slli x8, x8, 31 #deslocando pra ultima posicao
    xori x9, x8, -1 #xor com o 0xFFFFFFFF
    or x8, x8, x9
