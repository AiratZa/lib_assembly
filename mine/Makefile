all:
	nasm -f elf $(source).s
	ld -m elf_i386 -s -o $(source) $(source).o
	#ld –m elf_i386 –s –o $(source) $(source).o
	rm $(source).o 
