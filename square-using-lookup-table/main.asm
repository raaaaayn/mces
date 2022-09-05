.data
Table: .byte 1
.byte 4
.byte 9
.byte 16
.byte 25
.byte 36
.byte 49
.byte 64
.byte 81

.text
.global _start
_start:
  
  ldr r0, =Table
  mov r1, #7
  sub r1, #1
  add r2, r0, r1
  ldr r3, [r2]
  nop
  nop
