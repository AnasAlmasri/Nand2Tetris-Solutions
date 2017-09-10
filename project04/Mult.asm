// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

	// num1 = R0
	@R0
	D=M
	@num1
	M=D

	// num2 = R1
	@R1
	D=M
	@num2
	M=D

	// mult var
	@R2
	M=0
	D=M
	@mult
	M=D

// while loop

(LOOP)
	@num2
	D=M
	@END
	D;JEQ
	@num1
	D=M
	@mult
	M=M+D
	@num2
	M=M-1
	@LOOP
	0;JMP
(END)
	
	@mult
	D=M
	@R2
	M=D
	@END
	0;JMP
