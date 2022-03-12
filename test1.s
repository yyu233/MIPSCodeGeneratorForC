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
_main_Exit:
	lw    $ra, 0($fp)	#load return address
	move  $t0, $fp		#save control link
	lw    $fp, -4($fp)	#restore FP
	move  $sp, $t0		#restore SP
	li    $v0, 10
	syscall
