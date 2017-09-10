	@pixel
	M=0

(KEYBOARD)
	@24576
	D=M
	@WHITE
	D;JEQ
	@BLACK
	D;JNE

(WHITE)
	@16384
	D=A
	@pixel
	AD=M+D
	M=0
	@CHECK
	0;JMP

(BLACK)
	@16384
	D=A
	@pixel
	AD=M+D
	M=-1
	@CHECK
	0;JMP

(CHECK)
	@pixel
	D=M
	@16384
	D=A+D
	@24575
	D=A-D
	@KEYBOARD
	D;JNE

(END)
	@END
	0;JMP