.section .text
.globl _start
_start:
    addi x1, x0, 4   # x1 = 4
    addi x2, x1, 8   # x2 = 4 + 8 = 12
    addi x4, x1, 12  # x4 = 4 + 12 = 16
    addi x1, x0, 5   # x1 = 5 (overwrite previous value of x1)
    add x3, x1, x2   # x3 = 5 + 12 = 17
    add x4, x1, x3   # x4 = 5 + 17 = 22
    add x5, x1, x4   # x5 = 5 + 22 = 27
    add x6, x5, x3   # x6 = 27 + 17 = 44
    addi x5, x1, 16  # x5 = 5 + 16 = 21
    addi x4, x0, 4   # x4 = 4
    addi x3, x0, 12  # x3 = 12

    lui x2, 0x1eceb  # x2 = 0x1eceb000
    addi x2, x2, 0x140 # x2 = 0x1eceb000 + 0x140 = 0x1eceb140
    sw x3, 4(x2)     # store x3 (12) at memory address (x2 + 4) = 0x1eceb144
    lw x5, 4(x2)     # load word from memory address 0x1eceb144 into x5 (x5 = 12)
    add x6, x4, x5   # x6 = 4 + 12 = 16



    slti x0, x0, -256 # this is the magic instruction to end the simulation 