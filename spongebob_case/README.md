# Spongebob case

## Objective
Develop an assembly function that translates a given string to [Spongebob Case](https://en.wikipedia.org/wiki/Alternating_caps), which in our case is synonymous to alternating caps.

Some points to consider:
- the transformed text should always start with a lowercase letter
- the remaining letters should alternate between upper case and lower case, independent of the case of this specific letter in the input text
- all characters that are not letters (e.g. punctuation, whitespace and numbers) should not be affected
- the transformation should be executed in-place, i.e. the transformed string has to be located at the address of the original string

E.g.

`This is a test. Hello 123`

would be transformed to

`tHiS iS a TeSt. HeLlO 123`


## Details

### Input
- `a0`: Pointer to a zero-terminated string

### Output
- None
