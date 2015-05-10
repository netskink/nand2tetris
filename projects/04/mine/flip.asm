// program flip.asm
// flips the values of ram[0] and ram[1]

// temp = R1
// R1=R0
// R=temp

	@R1
	D=M
	@temp
	M=D		// temp = R1

	@R0
	D=M
	@R1
	M=D		// R1 = R0

	@temp
	D=M
	@R0
	M=D		// R0 = temp

(END)
	@END
	0;JMP


