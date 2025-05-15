.data
    x: .word 3
    y: .word 2
    m: .word 0
.text
.globl _start
_start:
    la t0, x
    la t1, y
    la t2, m 
    lw s0, 0(t0)
    lw s1, 0(t1)
    blt s0, s1, else
    sw s0, 0(t2)
    j end

else:
    sw s1, 0(t2)

end:
    nop
