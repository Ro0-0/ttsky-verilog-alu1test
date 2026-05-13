module alu_tb;

    // inputs as reg, outputs as wire
    reg  [3:0] a;
    reg  [3:0] b;
    reg  [2:0] op;
    wire [4:0] result;

    // connect testbench to your ALU
    alu uut (
        .a(a),
        .b(b),
        .op(op),
        .result(result)
    );

    initial begin
        // this creates the waveform file for GTKWave
        $dumpfile("alu_wave.vcd");
        $dumpvars(0, alu_tb);

        // test ADD: 3 + 5 = 8
        a = 4'd3; b = 4'd5; op = 3'b000; #10;
        $display("ADD  3 + 5  = %0d", result);

        // test SUB: 7 - 2 = 5
        a = 4'd7; b = 4'd2; op = 3'b001; #10;
        $display("SUB  7 - 2  = %0d", result);

        // test AND: 1100 & 1010 = 1000
        a = 4'b1100; b = 4'b1010; op = 3'b010; #10;
        $display("AND  1100 & 1010 = %04b", result[3:0]);

        // test OR: 1100 | 1010 = 1110
        a = 4'b1100; b = 4'b1010; op = 3'b011; #10;
        $display("OR   1100 | 1010 = %04b", result[3:0]);

        // test XOR: 1100 ^ 1010 = 0110
        a = 4'b1100; b = 4'b1010; op = 3'b100; #10;
        $display("XOR  1100 ^ 1010 = %04b", result[3:0]);

        // test MULTIPLY: 3 * 3 = 9
        a = 4'd3; b = 4'd3; op = 3'b101; #10;
        $display("MUL  3 * 3  = %0d", result);

        $finish;
    end

endmodule
