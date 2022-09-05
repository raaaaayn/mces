.text
.global _start
_start:
  mov r0, #10
  mov r1, r0

DECREMENT:
  subs r1, #1
  beq STOP
  add r3, r1, r0
  mov r0, r3
  b DECREMENT

STOP: nop
  nop
