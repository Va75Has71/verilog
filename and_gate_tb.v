`timescale 1ns/1ns

module and_gate_tb;

reg a, b;
wire y;

// Instantiate the design
and_gate uut (.a(a), .b(b), .y(y));

initial begin
    $dumpfile("and_wave.vcd");   // waveform file
    $dumpvars(0, and_gate_tb);

    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
end

endmodule