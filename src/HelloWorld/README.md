# Hello World

## Linux

### x86

```bash
nasm -f elf32 helloworld_x86.asm -o helloworld.o
ld -m elf_i386 helloworld.o -o helloworld
./helloworld
```
### x64

```bash
nasm -f elf64 helloworld_x64.asm -o helloworld.o
ld -m elf_x86_64 helloworld.o -o helloworld
./helloworld
```

### Make
- Usage: `Build 32-bit`
    ```bash
    make x86
    ```
- Usage: `Build 64-bit`
    ```bash
    make x64
    ```
- Clean everything:
    ```bash
    make clean
    ```


---
---

## Windows

### x86
Those symbols are Win32 API functions:
- GetStdHandle → exported by `Kernel32.dll`
- WriteFile → exported by `Kernel32.dll`
- ExitProcess → exported by `Kernel32.dll`

```powershell
"C:\Program Files\Microsoft Visual Studio\18\Professional\VC\Auxiliary\Build\vcvars32.bat"
nasm -f win32 helloworld_win_x86.asm -o helloworld_win_x86.obj
link helloworld_win_x86.obj kernel32.lib /subsystem:console /entry:main
```

### x64

```powershell
"C:\Program Files\Microsoft Visual Studio\18\Professional\VC\Auxiliary\Build\vcvars64.bat"
nasm -f win32 helloworld_win_x86.asm -o helloworld_win_x86.obj
link helloworld_win_x64.obj kernel32.lib /entry:main /subsystem:console
```

### Make
- Usage: `Build 32-bit`
    ```powershell
    make x86
    ```
- Usage: `Build 64-bit`
    ```powershell
    make x64
    ```
- Clean everything:
    ```powershell
    make clean
    ```