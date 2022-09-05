.data
Arr: .fill 1, 8, 92
.fill 1, 8, 54
.fill 1, 8, 42
.fill 1, 8, 68
.fill 1, 8, 13

.text
.global _start
_start:

  mov r0, #4

NEXTPASS:
  ldr r2, =Arr
  mov r1, #4

NEXTCOMPARE:
  ldr r3, [r2]
  add r2, #8
  ldr r4, [r2]
  cmp r3, r4
  bls NOEXCHANGE
  sub r2, #8
  str r4, [r2]
  add r2, #8
  str r3, [r2]

NOEXCHANGE:
  subs r1, #1
  bne NEXTCOMPARE
  subs r0, #1
  bne NEXTPASS

STOP:
  nop
  nop
