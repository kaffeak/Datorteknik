.text

	addi $a0, $0, 8	# n
	addi $a0, $a0, 1
	addi $v0, $0, 1		# resultat
	addi $a1, $0, 1		# i = 1

multi:
	beq $a1, $a0, done		# i == n
	add  $0, $0, $0			# Vi NOP typ bra f�r s�kerhetenskull 
	nop
	mul $v0, $v0, $a1		# multiplicerar med i
	addi $a1, $a1, 1		# vi �kar i med 1
	beq $0, $0, multi		# hoppar till multi om de �r samma
	add  $0,$0,$0	 		# NOP
done:
	add  $0,$0,$0	  		# NOP
	beq $0, $0, done		#Den o�ndliga looopen
	
