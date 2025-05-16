.data
    v: .space 400 #vetor com maximo de 100 int

.text
.globl _start

_start:
    li t0, 1 #loading 1 pra verificacao
    li t3, 0 #colocando 0 no t3 pra montar o int
    li t4, 10 #const 10
    li a0, 0x130
    ecall
    call ler_numero
    la a0, v
    addi t1, t1, 10 #fator de multiplicacao
    li t2, 0 #onde vamos guardar o valor temporario
    li t3, 0 #endereco do vetor vai ficar aq
    li t4, 0 #qual numero ta (ponteiro)
    li t5, 0 #offset com base no t4
    call LeVetor
    la a0, v
    li t6, 0 #vou guardar a soma aqui
    li t5, 0 #esse vai ser o ponteiro
    li t4, 0 #vou usar o sll aqui
    mv t2, a1 #guardando o N no temporario
    call Media
    mv a2, a0
    mv a1, t2
    la a0, v
    li t5, 0 #esse vai ser o ponteiro
    li t4, 0 #vou usar o sll aqui
    call maioresQueMedia
    nop

ler_numero:
    li a0, 0
    l4_:
        addi a0, zero, 0x131
        ecall
        beq a0, zero, numeroLido
        beq a0, t0, l4_
        addi a1, a1, -48
        mul t3, t3, t4
        add t3, t3, a1
        nop
        j l4_

numeroLido:
    mv a1, t3
    ret

LeVetor:
    li t1, 10
    beq t4, a1, vetorLido
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

vetorLido:
    ret

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

maioresQueMedia:
    beq a1, t5, fim
    slli t4, t5, 2
    mv t0, a0
    add t0, t0, t4
    addi t5, t5, 1
    lw t0, 0(t0)
    addi sp, sp, -12
    sw a0, 8(sp)
    sw a1, 4(sp)
    sw a2, 0(sp)
    bge t0, a2, imprime
    addi sp, sp, 12
    j maioresQueMedia

imprime:
    li a0, 1
    mv a1, t0
    ecall

    li   a0, 11
    li   a1, 13
    ecall
    
    lw a0, 8(sp)
    lw a1, 4(sp)
    lw a2, 0(sp)

    addi sp, sp, 12
    j maioresQueMedia

fim:
    nop