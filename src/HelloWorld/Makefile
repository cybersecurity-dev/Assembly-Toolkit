BIN32 = helloworld_x32
BIN64 = helloworld_x64

OBJ32 = helloworld_x86.o
OBJ64 = helloworld_x64.o

ASM32 = helloworld_x86.asm
ASM64 = helloworld_x64.asm

all: x64

x86: $(BIN32)

x64: $(BIN64)

$(OBJ32): $(ASM32)
	nasm -f elf32 $(ASM32) -o $(OBJ32)

$(BIN32): $(OBJ32)
	ld -m elf_i386 $(OBJ32) -o $(BIN32)

$(OBJ64): $(ASM64)
	nasm -f elf64 $(ASM64) -o $(OBJ64)

$(BIN64): $(OBJ64)
	ld -m elf_x86_64 $(OBJ64) -o $(BIN64)

clean:
	rm -f $(OBJ32) $(OBJ64) $(BIN32) $(BIN64)

.PHONY: all x86 x64 clean
