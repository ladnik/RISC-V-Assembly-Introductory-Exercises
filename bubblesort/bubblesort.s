.globl _start

.org 0x400
.data

array: .byte -5, 0, 1, 9, 4, 1, 8  ; Example array

.org 0x200
.text

_start:
    la a0, array         ; Pointer to array
    li a1, 7             ; Length of array
    jal ra, bubblesort
    ebreak

# Function bubblesort
# Input: a0 - Pointer to the array
#        a1 - Length of the passed array
# Output:

bubblesort:
    
