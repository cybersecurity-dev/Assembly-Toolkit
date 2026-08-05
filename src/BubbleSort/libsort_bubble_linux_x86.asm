; ============================================================
; libsort_bubble_linux_x86.asm
;
; Linux x86-32 NASM
; System V i386 ABI
;
; void bubble_sort_x86(int32_t *array, size_t n);
;
; [ebp + 8]  = pointer to array
; [ebp + 12] = number of elements
;
; Sorts array in ascending order.
; ============================================================
