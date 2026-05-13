module tt_um_yourname_alu (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);
    wire [3:0] a  = ui_in[3:0];
    wire [3:0] b  = ui_in[7:4];
    wire [2:0] op = uio_in[2:0];

    reg [4:0] result;

    always @(*) begin
        case(op)
            3'b000: result = a + b;
            3'b001: result = a - b;
            3'b010: result = {1'b0, a & b};
            3'b011: result = {1'b0, a | b};
            3'b100: result = {1'b0, a ^ b};
            3'b101: result = a * b;
            default: result = 5'b0;
        endcase
    end

    assign uo_out  = {3'b0, result};
    assign uio_out = 8'b0;
    assign uio_oe  = 8'b0;

endmodule
