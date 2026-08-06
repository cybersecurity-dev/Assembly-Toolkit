; =============================================================================
; libsort_bubble_win_x86.asm
;
; Windows x86 (32-bit) bubble sort routine, cdecl calling convention.
; Native toolchain only: NASM + MSVC (cl.exe / link.exe from Visual Studio Build Tools).
;
; C prototype:
;   void bubble_sort(int *arr, int n);
;
; Assemble (from a "Developer Command Prompt for VS"):
;   nasm -f win32 libsort_bubble_win_x86.asm -o libsort_bubble_win_x86.obj
;
; Note: 32-bit cdecl symbols are decorated with a leading underscore by
; MSVC, so the exported label here is "_bubble_sort".
; =============================================================================

