.data
Arr: .fill 1, 4, 0x7
.fill 1, 4, 0x3
.fill 1, 4, 0x6
Res: .fill 1, 4, 0

.text
.global _start
_start:
  
  ldr r0, =Arr
  mov r1, #2
  ldr r4, [r0]

ADD:
  add r0, #4
  ldr r3, [r0]
  add r4, r3
  subs r1, #1
  beq STOP
  b ADD

STOP:
  ldr r5, =Res
  str r4, [r5]
  nop
  nop

