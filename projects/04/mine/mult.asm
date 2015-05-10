// Computes Multiply n*m RAM[1] = m+m+...+m  for n sums
// put a number n in ram[0]
// put a number m in ram[1]
// output is in RAM[18]

	@R0
	D=M
	@n
	M=D		// n = R0
	@i
	M=1		// i = 1
	@SUM
	M=0
	@R1
	D=M
	@m
	M=D		// m = R1
	

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@STOP
	D;JGT	// if i > n goto STOP

	@SUM
	D=M
	@m
	D=D+M
	@SUM
	M=D		// sum = sum + m
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




