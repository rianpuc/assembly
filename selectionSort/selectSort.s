.data
    num: .word 6,2,8,10,7,3,2,8,15,5

.text
.globl _start
_start:
    la s1, num
    li s2, 10 # 10
    li t0, 0 # i
    addi t1, s2, -1

sort:
    bge t0, t1, fim
    mv t2, t0 # min = i
    addi t3, t0, 1 # j = i + 1
    mv s3, s1

inner: 
    bge t3, s2, sort_i #incrementar o I, e swappar
    mv s3, s1        # atualizando a referencia do array
    slli t4, t2, 2   # t2 = min
    add s3, s3, t4   # pegando o min atual
    lw t4, 0(s3)     #
    mv s3, s1        # atualizando a referencia do array
    slli t5, t3, 2   # t3 = j atual
    add s3, s3, t5   # pegando o elemento atual
    lw t5, 0(s3)     #
    blt t4, t5, continue # caso o min for o min so continua
    mv t2, t3

continue:
    addi t3, t3, 1
    j inner

sort_i:
    mv s3, s1
    slli t4, t2, 2
    add s3, s3, t4 #pegando o end do min
    lw s4, 0(s3) # s4 = valor min
    mv s3, s1
    slli t5, t0, 2
    add s3, s3, t5 #pegando o end do atual (i)
    lw s5, 0(s3) # s5 = valor atual 
    addi t0, t0, 1
    beq s4, s5, sort
    mv s3, s1
    add s3, s3, t4
    sw s5, 0(s3)
    mv s3, s1
    add s3, s3, t5
    sw s4, 0(s3)
    j sort

fim:
    nop

    
