.text
.globl _start

_start:
    li s0, 2 # a = 2
    li s1, 3 # b = 3
    li s2, 4 # c = 4
    li s3, 5 # d = 5
    add s4, s0, s1 #descartavel (s4 = a + b) +5
    add s5, s2, s3 #descartavel (s5 = c + d) +9
    sub s6, s4, s5 #resultado x (s4 - s5) -4
    sub s4, s0, s1 #descartavel (s4 = a - b) -1
    add s7, s4, s6 #resultado y -5
    sub s1, s6, s7 #resultado b (b = x - y) +1