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
    li t0, 1            # 0: lowercase, 1: uppercase
    li t3, 65           # ASCII A
    li t4, 90           # ASCII Z
    li t5, 97           # ASCII a
    li t6, 122          # ASCII z


    loop:
        lbu t1, 0(a0)       # t1: current char
        beq t1, zero, end

        # check if c < A
        bltu t1, t3, increment
        # check if c > z
        bgtu t1, t6, increment

        xori t0, t0, 1  # toggle lowercase/uppercase
        # check if c <= Z
        bleu t1, t4, is_uppercase
        # check if c >= a
        bgeu t1, t5, is_lowercase

        xori t0, t0, 1  # toggle back, because c was not a letter
        j increment

        is_uppercase:
            beq t0, zero, to_lowercase
            j increment

        is_lowercase:
            bne t0, zero, to_uppercase
            j increment

        to_uppercase:
            addi t1, t1, -32
            sb t1, 0(a0)
            j increment

        to_lowercase:
            addi t1, t1, 32
            sb t1, 0(a0)

        increment:
        addi a0, a0, 1  # inc string pointer
        j loop
    
    end:
    
    jalr zero, 0(ra)

