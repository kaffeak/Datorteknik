.text
	addi 	$a0, $a0, 4	# Input N
	addi 	$a1, $a0, -1	# Counter N-1
	add 	$a3, $0, $a1	# Counter Max == N-1
	
	beq	$0, $a0, equal0	# Is N == 0? Goto equal0
	nop

main:
	beq	$0, $0, multiply	# Dont run first time
	nop
	
	nextPair:
		add	$a3, $0, $a1	# Set Counter Max
		addi	$a3, $a3, -1	# Max -1 
	
	multiply:
		beq	$a3, $0, stopMultiply	# Stop when a3 = 0
		nop
		
		add	$v0, $v0, $a0		# V0 += N
		addi	$a3, $a3, -1		# (N-1)--
		beq	$0, $0, multiply
		nop
		
	stopMultiply:
		addi	$a1, $a1, -1		# (N-1) = (N-1) - 1
		beq	$a1, $0, stop		# If (N-1) == 0, then stop
		nop
		
		add	$a0, $0, $v0	# Sätter N = N*(N-1)
		beq	$0, $0, nextPair
		nop
		


stop:
	beq	$0, $0, stop	# Loop Forever
	nop

equal0:
	addi 	$v0, $s0, 1	# Set v0 = 1
	beq	$0, $0, stop
	nop
