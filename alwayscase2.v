module top_module (
    input [3:0] in,
    output reg [1:0] pos  
);

    always @(*) begin
        case (1'b1)
            in[0]: pos = 2'd0; // If bit 0 is 1, pos is 0 (Highest priority)
            in[1]: pos = 2'd1; // If bit 0 is 0 and bit 1 is 1, pos is 1
            in[2]: pos = 2'd2; // If bits 0,1 are 0 and bit 2 is 1, pos is 2
            in[3]: pos = 2'd3; // If bits 0,1,2 are 0 and bit 3 is 1, pos is 3
            default: pos = 2'd0; // If all bits are 0 (in = 4'b0000)
        endcase
    end

endmodule