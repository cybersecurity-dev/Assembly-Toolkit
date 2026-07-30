# Example of Assembly Toolkit

## x86

```bash
nasm -f elf32 helloworld_x86.asm -o helloworld.o
ld -m elf_i386 helloworld.o -o helloworld
./helloworld
```
## x64

```bash
nasm -f elf64 helloworld_x64.asm -o helloworld.o
ld -m elf_x86_64 helloworld.o -o helloworld
./helloworld
```
