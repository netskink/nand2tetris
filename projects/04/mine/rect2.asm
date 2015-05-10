// Draws a rectangle
// at the screens top corner with width of 512 pixels
// (Effectively a full row of the screen)
// and height of RAM[0] pixels.

	@SCREEN
	D=A
	@addr
	M=D		// addr = 16384
			// (Screens Base Address)

	@0
	D=M
	@n
	M=D		// n = RAM[0]

	@i
	M=0		// i = 0

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@END
	D;JGT	// if i > n goto END

// Original Code 
//////////////////////////


	// lets write -1 32 times
	@j
	M=0		
	@R1	// R1 contains the number of cols
	D=M
	@numcols
	M=D	// numcols is number of cols
(INNERLOOP)
	@j
	D=M
	@numcols
	D=D-M		// j-num of cols
	@INNERSTOP
	D;JGE	// if i>32 goto INNERSTOP

	@j
	D=M
	@addr 
	A=M
	A=A+D
	M=-1	// RAM[addr] = 1...1 16 ones
			// Writes 16pixels as black
	@j
	M=M+1
	@INNERLOOP
	0;JMP

/////////////////////////////////
// Original code

(INNERSTOP)
	@i
	M=M+1	// i = i + 1
	@32
	D=A
	@addr
	M=D+M	// addr = addr + 32
	@LOOP
	0;JMP	// goto LOOP

(END)
	@END	// Program's end
	0;JMP
