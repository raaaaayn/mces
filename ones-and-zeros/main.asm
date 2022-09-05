.data
Ones: .fill 1, 4, 0
Zeros: .fill 1, 4, 0


.text
.global _start
_start:

  mov r0, #32
  mov r1, #3

ROTATE:
  rors r1, #1
  bcs ONES
  add r2, #1
  b NEXT

ONES:
  add r3, #1

NEXT:
  subs r0, #1
  bne ROTATE

  ldr r4, =Ones
  strb r3, [r4] 
  ldr r4, =Zeros
  strb r2, [r4]
  
  nop
  nop
