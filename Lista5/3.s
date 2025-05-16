.data
    vetor: .word 5, 10, 20, 40, 80

.text
.globl _start

_start:
    la a0, vetor
    li a1, 5 #COLOQUE A QUANTIDADE DE NUMEROS DO VETOR
    li t6, 0 #vou guardar a soma aqui
    li t5, 0 #esse vai ser o ponteiro
    li t4, 0 #vou usar o sll aqui
    call Media
    mv a1, a0
    li a0, 1
    ecall
    j fim

Media:
    beq a1, zero, fim
    beq a1, t5, fimMedia
    slli t4, t5, 2
    addi t5, t5, 1
    mv t3, a0
    add t3, t3, t4
    lw t3, 0(t3)
    add t6, t6, t3
    j Media

fimMedia:
    div t6, t6, a1
    mv a0, t6
    ret

fim:
    nop