## How it works

This is a 4-bit ALU. It takes two 4-bit inputs A and B and performs arithmetic and logic operations selected by a 3-bit op code.

## How to test

Set ui_in[3:0] as input A, ui_in[7:4] as input B, uio_in[2:0] as op select. Read result from uo_out[4:0].
