; --> AddTwo.asm - adds two 32-bit integers.
; --> Chapter 3 example

.386
.model flat,stdcall
.stack 4096

; --> (ignore it) ExitProcess proto,dwExitCode:dword

include Irvine32.inc  ; Include the Irvine32 library

;--> Variables Decleration starts here

.data
    message db "Result is: ", 0


;--> Variables Decleration Ends here

.code
main proc

;--> Coding Starts here

	mov	eax,5				
	add	eax,4				

	mov edx, offset message  ; Load the address of the message into edx
    call WriteString         ; Print the message
    call DumpRegs            ; Display register contents

;--> Coding Ends here

	invoke ExitProcess,0
main endp
end main