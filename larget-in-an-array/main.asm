.data
Arr: .fill 1, 8, 15
.fill 1, 8, 70
.fill 1, 8, 81
.fill 1, 8, 90
.fill 1, 8, 46

Res: .fill 1, 8, 0

.text
.global _start
_start:

  ldr r0, =Arr
  ldr r1, [r0]
  mov r3, #4

NEXT:
  add r0, #8
  ldr r2, [r0]
  cmp r1, r2
  bhs LARGE
  mov r1, r2

LARGE:
  subs r3, #1
  bne NEXT

STOP:
  ldr r5, =Res
  str r1, [r5] 
  nop
  nop
