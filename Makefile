#Enter file NAME with "make" to compile

all: program


program: 
	as  -o $(file).o $(file).s
	ld  -o $(file) $(file).o

clean:
	rm -f $(file).o

.PHONY: clean
