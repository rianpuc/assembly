.text
.globl _start

_start:
    li t0, 1 #loading 1 pra verificacao
    li t3, 0 #colocando 0 no t3 pra montar o int
    li t4, 10 #const 10
    addi a0, zero, 0x130
    ecall

ler_numero:
    li a0, 0
    l4_:
        addi a0, zero, 0x131
        ecall
        beq a0, zero, imprimir
        beq a0, t0, l4_
        addi a1, a1, -48
        mul t3, t3, t4
        add t3, t3, a1
        nop
        j l4_

imprimir:
    li   a0, 11
    li   a1, 13
    ecall

    li a0, 1
    mv a1, t3
    ecall

    li   a0, 11
    li   a1, 13
    ecall

    nop

    