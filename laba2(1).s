.data
        arr: .word 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff
.text
	
        .globl main
		
        .type main, @function

        main:
                        leal arr, %ebx
                        movl $0xa, %ecx
						
                cycle:
                        movw (%ebx), %ax
                        notb %ah
                        movw %ax, (%ebx)
                        addl $0x2, %ebx
                        loop cycle
		
                        leal arr, %ebx
                        movl $0x5, %ecx
                        movl $0x0, %edx
                        movl $0x0, %eax

                sumcycle:
				
                        movw (%ebx), %ax
                        addl %eax, %edx
                        addl $0x4, %ebx
                        loop sumcycle