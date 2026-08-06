; =============================================================================
; libsort_bubble_win_x64.asm
;
;            Windows x86-64 bubble sort routine, Microsoft x64 calling convention.
; Native toolchain only: NASM + MSVC (cl.exe / link.exe from Visual Studio Build Tools).
;
;      Microsoft x64 argument registers: arg1 = RCX, arg2 = EDX
; (64-bit symbols are NOT decorated by MSVC, unlike 32-bit cdecl.)
;
; C prototype: void bubble_sort(int *arr, int n);
;
; Assemble (from a "x64 Native Tools Command Prompt for VS"):
;   >> nasm -f win64 libsort_bubble_win_x64.asm -o libsort_bubble_win_x64.obj
; =============================================================================
