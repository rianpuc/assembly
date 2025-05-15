.text
.globl _start
_start:
    li s0, 10 #temp
    li a1, 10 #case 1
    li a2, 25 #case 2
    beq s0, a1, case1
    beq s0, a2, case2
    li s1, 0
    j end

case1:
    mv s1, a1
    j end

case2:
    mv s1, a2

end:
    nop

