.globl _start

.org 0x400
.data

string: .asciz "This is a test. Hello 123"  # Example input string

.org 0x200
.text

_start:
    la a0, string       # Pointer to string
    jal ra, spongebob_case
    ebreak

# Function spongebob_case
# Input: a0 - Pointer to a zero-terminated string
# Output:

spongebob_case:

