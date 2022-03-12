	.text
	.globl main
main:		# METHOD ENTRY
__start:		# add __start label for main only
	sw    $ra, 0($sp)	#push return addr
	subu  $sp, $sp, 4
	sw    $fp, 0($sp)	#push control link
	subu  $sp, $sp, 4
	#set the FP
	addu  $fp, $sp, 8
	subu  $sp, $sp, 8
	#push space for locals
	la    $t0, -4($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	li    $t0, 1
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t1, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	sw    $t1, 0($t0)
	sw    $t1, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	la    $t0, 0($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	li    $t0, 0
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t1, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	sw    $t1, 0($t0)
	sw    $t1, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, -4($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	bne   $t0, 1, .L0
	subu  $sp, $sp, 0
	la    $t0, -4($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, -4($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	li    $t1, 0
	nor   $t0, $t0, $t1
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t1, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	sw    $t1, 0($t0)
	sw    $t1, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	addu  $sp, $sp, 0
.L0:
.L1:
	lw    $t0, 0($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	li    $t0, 536
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t1, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	bne   $t0, $t1, .L3
	li    $t0, 0
	b     .L4
.L3:
	li    $t0, 1
.L4:
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	bne   $t0, 1, .L2
	subu  $sp, $sp, 0
	la    $t0, 0($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 0($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t1, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	add   $t0, $t0, 1
	sw    $t0, 0($t1)
	addu  $sp, $sp, 0
	j     .L1
.L2:
	li    $t0, 1
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	li    $t0, 1
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t1, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	beq   $t0, $t1, .L6
	li    $t0, 0
	b     .L7
.L6:
	li    $t0, 1
.L7:
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	bne   $t0, 1, .L5
	subu  $sp, $sp, 0
	la    $t0, 0($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 0($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t1, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	add   $t0, $t0, 1
	sw    $t0, 0($t1)
	addu  $sp, $sp, 0
.L5:
	li    $t0, 0
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	li    $t0, 0
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t1, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	beq   $t0, $t1, .L9
	li    $t0, 0
	b     .L10
.L9:
	li    $t0, 1
.L10:
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	bne   $t0, 1, .L8
	subu  $sp, $sp, 0
	la    $t0, 0($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t0, 0($fp)
	sw    $t0, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	lw    $t1, 4($sp)	#POP
	addu  $sp, $sp, 4
	lw    $t0, 4($sp)	#POP
	addu  $sp, $sp, 4
	add   $t0, $t0, 1
	sw    $t0, 0($t1)
	addu  $sp, $sp, 0
.L8:
_main_Exit:
	lw    $ra, 0($fp)	#load return address
	move  $t0, $fp		#save control link
	lw    $fp, -4($fp)	#restore FP
	move  $sp, $t0		#restore SP
	li    $v0, 10
	syscall
