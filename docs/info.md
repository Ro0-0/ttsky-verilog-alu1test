---
# How it works

This is a 4-bit ALU that performs add, subtract, AND, OR, XOR and multiply operations on two 4-bit inputs A and B. The operation is selected using a 3-bit op code on the uio pins.

Op codes:
- 000 = ADD
- 001 = SUB
- 010 = AND
- 011 = OR
- 100 = XOR
- 101 = MULTIPLY

# How to test

Set ui_in[3:0] as input A, ui_in[7:4] as input B, and uio_in[2:0] as the operation select. Read the result from uo_out[4:0].
