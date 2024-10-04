// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(CON)
    @SCREEN
    D=A

    @pos
    M=D

    @pix
    M=0

    @8191
    D=A

    @col
    M=D

    @pos
    M=M+D


    @KBD
    D=A

    @address
    M=D

    @address
    A=D
    D=M

    @OFF
    D;JEQ

    @ON
    D;JGT

    


(OFF)
  @SCREEN
  D=A
  
  @pos
  D=M-D

  @CON
  D;JLT

  @i
  D=M

  @pos
  A=M-D
  M=0

  @pos
  M=M-1

  @OFF
  0;JMP




(ON)
    @SCREEN
    D=A
    
    @pos
    D=M-D
  
    @CON
    D;JLT
  
    @i
    D=M
  
    @pos
    A=M-D
    M=-1
  
    @pos
    M=M-1
  
    @ON
    0;JMP
  

