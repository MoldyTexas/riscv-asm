default:
	rm test.s
	riscv64-linux-gnu-as test.s -o test.o
	riscv64-linux-gnu-gcc test.o -o test.c 
#comment

