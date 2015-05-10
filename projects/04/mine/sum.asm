// Computes RAM[1] = 1+2+...+n
// put a number n in ram[0]
// output is in RAM[18]

	@R0
	D=M
	@n
	M=D		// n = R0
	@i
	M=1		// i = 1
	@SUM
	M=0

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@STOP
	D;JGT	// if i > n goto STOP, if D > 0 JUMP to STOP

	@SUM
	D=M
	@i
	D=D+M
	@SUM
	M=D		// sum = sum + i
	@i
	M=M+1	// i = i + 1
	@LOOP
	0;JMP

(STOP)
	@SUM
	D=M
	@R1
	M=D

(END)
	@END
	0;JMP




