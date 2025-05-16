.data
v: .space 400 #vetor com maximo de 100 int

.text
.globl _start

_start:
    la a0, v
    li a1, 3 #quantos numeros a serem lidos
    li t0, 1 #verificacao se nao foi lido
    addi t1, t1, 10 #fator de multiplicacao
    li t2, 0 #onde vamos guardar o valor temporario
    li t3, 0 #endereco do vetor vai ficar aq
    li t4, 0 #qual numero ta (ponteiro)
    li t5, 0 #offset com base no t4
    call LeVetor

LeVetor:
    li t1, 10
    beq t4, a1, imprimir
    addi sp, sp, -8
    sw a0, 4(sp)
    sw a1, 0(sp)
    li t2, 0
    li a0, 0x130
    ecall
    parse:
        addi a0, zero, 0x131
        ecall
        beq a0, zero, FimParse
        beq a0, t0, parse
        addi a1, a1, -48
        mul t2, t2, t1
        add t2, t2, a1
        j parse

FimParse:
    la t3, v
    slli t5, t4, 2
    add t3, t3, t5
    sw t2, 0(t3)
    addi t4, t4, 1
    lw a0, 4(sp)
    lw a1, 0(sp)
    addi sp, sp, 8
    j LeVetor

imprimir:
    li   a0, 11
    li   a1, 13
    ecall
    imprimeVector:
        beq t4, zero, fim
        li a0, 1
        la a1, v
        slli t0, t6, 2
        add a1, a1, t0
        addi t6, t6, 1
        addi t4, t4, -1
        lw a1, 0(a1)
        ecall
        li a0, 11
        li a1, 32
        ecall
        j imprimeVector

fim:
    nop

    